import math
import numpy as np
import scipy
from scipy import signal
from scipy.sparse.linalg import LinearOperator
import utils

from HEVCWrapper import CompressDecompress as cd


def GetLinearOperatorforBicG(K_set, K_weights, counts, beta, my_lambda, ss):
    """
    Return a LinearOperator to use the BIC-G algorithm from scipy library
    """
    k_row, k_col = K_set[0].shape
    image_size = ss[0] * ss[1]
    def matvec(x):
        xx = x.reshape(ss)

        K = K_set[0]
        xx_tapered = np.pad(xx, (k_row // 2, k_col // 2), 'edge')

        tt = signal.convolve2d(xx_tapered, K, mode='same')
        y = my_lambda * K_weights[0] * signal.convolve2d(xx_tapered, np.rot90(np.rot90(K)), mode='same')

        K = K_set[1]
        tt = signal.convolve2d(xx_tapered, K, mode='same')
        y = y + my_lambda * K_weights[1] * signal.convolve2d(xx_tapered, np.rot90(np.rot90(K)), mode='same')

        K = K_set[2]
        tt = signal.convolve2d(xx_tapered, K, mode='same')
        y = y + my_lambda * K_weights[2] * signal.convolve2d(xx_tapered, np.rot90(np.rot90(K)), mode='same')

        # Get rid of padding
        y = y[k_row // 2 + 1: - k_row // 2, k_col // 2 + 1: - k_col // 2]

        y = y + beta * np.matmul(counts, xx)
        y = y.flatten()  # TODO: Is this needed

        return y

    def rmatvec(x):
        return matvec(x)

    return LinearOperator((image_size, image_size), matvec=matvec, rmatvec=rmatvec)



def cfdr (I,K_set,K_weights,beta,number_of_iterations, compression_factor):
    dummy = 1
    compressed_file = 'temp.bog'
    [image_height, image_width] = np.shape(I)
    cleanI = I
    u = np.zeros(np.shape(cleanI), dtype=float)

 ######
    K = K_set[0]
    I_tapered = np.pad(I, (np.shape(K)[0]//2, np.shape(K)[1]//2), mode='edge')
    K = K_set[0]
    tt1_display1 = signal.convolve2d(I_tapered, np.rot90(np.rot90(K)), mode='same')
    K = K_set[1]
    tt1_display2 = signal.convolve2d(I_tapered, np.rot90(np.rot90(K)), mode='same')

    K = K_set[2]
    tt1_display3 = signal.convolve2d(I_tapered, np.rot90(np.rot90(K)),  mode='same')

    tt1 = K_weights[0] * tt1_display1 +K_weights[1] * tt1_display2 + K_weights[2] * tt1_display3
    # Getting rid of padding:
    tt1 = tt1[K.shape[0]//2 + 1: -K.shape[0]//2,K.shape[1]//2 + 1: -K.shape[1]//2 ]
    ######

    #compression_factor
    divergence_distance = 50
    convergence_distance = 0.2
    convergence_indicator_counter = 0
    iteration_decompressed = 0
    bpp = 0
    previous_iteration_total_absolute_diff = np.inf

    for iter in range (1 , number_of_iterations):
        cleanI_tilde = cleanI - u
        cleanI255_tilde = 255 * cleanI_tilde

        iteration_decompressed = cd(cleanI255_tilde, compression_factor, compressed_file);
        iteration_decompressed = iteration_decompressed / 255

        I1 = iteration_decompressed
        counts = np.ones(image_height, image_width)

        I1_tilde = I1 + u

        tt2 = I1_tilde
        #Afun(x,K_set,K_weights,counts,beta,lambda,size(I),tflag),(lambda*tt1(:) + beta*tt2(:)),1e-6,2500),size(I));
        a_operator = GetLinearOperatorforBicG (K_set, K_weights, counts, beta, dummy, I.shape)
        cleanI = np.reshape(scipy.linalg.bicg(a_operator,dummy *tt1.flatten + beta * tt2.flatten, 1e-6, 2500), I.size)

        u = u + (iteration_decompressed - cleanI)

        iteration_total_absolute_diff = np.sum(np.abs(iteration_decompressed - cleanI))

        bpp = utils.calculate_bpp_of_file(compressed_file, cleanI.size)
        previous_iteration_bpp = 0
        previous_iteration_decompressed = 0
        previous_iteration_cleanI255_tilde = 0

        if (previous_iteration_total_absolute_diff + divergence_distance) < iteration_total_absolute_diff:

            bpp = previous_iteration_bpp;
            iteration_decompressed = previous_iteration_decompressed;
            cleanI255_tilde = previous_iteration_cleanI255_tilde;


            print("Stopped at iteration {}  (due to divergence)".format(str(iter)))

            break
        else:
            if (np.abs(previous_iteration_total_absolute_diff - iteration_total_absolute_diff) < convergence_distance):
                convergence_indicator_counter = convergence_indicator_counter + 1
                if convergence_indicator_counter == 3:
                    print('Stopped at iteration {}  (due to convergence)'.format(str(iter)))
                    break
            else:
                convergence_indicator_counter = 0

            previous_iteration_total_absolute_diff = iteration_total_absolute_diff
            previous_iteration_bpp = bpp
            previous_iteration_decompressed = iteration_decompressed
            previous_iteration_cleanI255_tilde = cleanI255_tilde

    return iteration_decompressed, bpp