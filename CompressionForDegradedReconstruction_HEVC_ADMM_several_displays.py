import math
import numpy as np
import scipy
from scipy import signal
from scipy.sparse.linalg import bicg
from scipy.sparse.linalg import LinearOperator
import utils
from HEVCWrapper import CompressDecompress as hevc
from AVIFWrapper import CompressDecompress as avif


def GetLinearOperatorforBicG(K_set, K_weights, counts, beta, my_lambda, ss):
    """
    Return a LinearOperator to use the BIC-G algorithm from scipy library
    """
    k_row, k_col = K_set[0].shape
    image_size = ss[0] * ss[1]
    def matvec(x):
        xx = x.reshape(ss, order='F')

        K = K_set[0]
        xx_tapered = np.pad(xx, (k_row // 2, k_col // 2), 'edge')

        tt = signal.convolve2d(xx_tapered, K, mode='same')
        y = my_lambda * K_weights[0] * signal.convolve2d(tt, np.rot90(np.rot90(K)), mode='same')

        K = K_set[1]
        tt = signal.convolve2d(xx_tapered, K, mode='same')
        y = y + my_lambda * K_weights[1] * signal.convolve2d(tt, np.rot90(np.rot90(K)), mode='same')

        K = K_set[2]
        tt = signal.convolve2d(xx_tapered, K, mode='same')
        y = y + my_lambda * K_weights[2] * signal.convolve2d(tt, np.rot90(np.rot90(K)), mode='same')

        # Get rid of padding
        y = y[k_row // 2: - (k_row // 2), k_col // 2: -(k_col // 2)]

        y = y + beta * np.multiply(counts, xx)
        y = y.flatten(order='F')  # TODO: Is this needed
        return y

    def rmatvec(x):
        return matvec(x)

    return LinearOperator((image_size, image_size), matvec=matvec, rmatvec=rmatvec)



def cfdr(I, K_set, K_weights, beta, number_of_iterations, compression_factor):
    dummy = 1
    #compressed_file = 'temp.bpg'
    compressed_file = 'temp.avif'
    (image_height, image_width) = I.shape
    cleanI = I
    u = np.zeros(np.shape(cleanI), dtype=float)

    K = K_set[0]
    I_tapered = np.pad(I, (K.shape[0]//2, K.shape[1]//2), mode='edge')

    tt1_display1 = signal.convolve2d(I_tapered, np.rot90(np.rot90(K)), mode='same')
    K = K_set[1]
    tt1_display2 = signal.convolve2d(I_tapered, np.rot90(np.rot90(K)), mode='same')

    K = K_set[2]
    tt1_display3 = signal.convolve2d(I_tapered, np.rot90(np.rot90(K)),  mode='same')

    tt1 = K_weights[0] * tt1_display1 + K_weights[1] * tt1_display2 + K_weights[2] * tt1_display3
    # Getting rid of padding:
    tt1 = tt1[K.shape[0]//2: -(K.shape[0]//2), K.shape[1]//2: -(K.shape[1]//2)]
    ######

    divergence_distance = 50
    convergence_distance = 0.2
    convergence_indicator_counter = 0
    iteration_decompressed = 0
    bpp = 0
    previous_iteration_total_absolute_diff = np.inf
    previous_iteration_bpp = 0
    previous_iteration_decompressed = 0
    #previous_iteration_cleanI255_tilde = 0

    for iter in range(1, number_of_iterations):
        cleanI_tilde = cleanI - u
        cleanI255_tilde = 255 * cleanI_tilde

        #iteration_decompressed = hevc(cleanI255_tilde, compression_factor, compressed_file)
        iteration_decompressed = avif(cleanI255_tilde, compression_factor, compressed_file)
        iteration_decompressed = iteration_decompressed / 255

        I1 = iteration_decompressed
        counts = np.ones((image_height, image_width))

        I1_tilde = I1 + u

        tt2 = I1_tilde
        #Afun(x,K_set,K_weights,counts,beta,lambda,size(I),tflag),(lambda*tt1(:) + beta*tt2(:)),1e-6,2500),size(I));
        a_operator = GetLinearOperatorforBicG(K_set, K_weights, counts, beta, dummy, I.shape)
        bicg_res, exit_code = bicg(a_operator, dummy * tt1.flatten(order='F') + beta * tt2.flatten(order='F'), tol=1e-6, maxiter=2500)
        cleanI = np.reshape(bicg_res, I.shape, order='F')

        u = u + (iteration_decompressed - cleanI)

        iteration_total_absolute_diff = np.sum(np.abs(iteration_decompressed - cleanI))
        bpp = utils.calculate_bpp_of_file(compressed_file, cleanI.size)


        if (previous_iteration_total_absolute_diff + divergence_distance) < iteration_total_absolute_diff:

            bpp = previous_iteration_bpp
            iteration_decompressed = previous_iteration_decompressed.copy()
            #cleanI255_tilde = previous_iteration_cleanI255_tilde.copy()

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
            previous_iteration_decompressed = iteration_decompressed.copy()
            #previous_iteration_cleanI255_tilde = cleanI255_tilde.copy()

    return iteration_decompressed, bpp