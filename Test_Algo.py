import numpy as np
import matplotlib.image as mpimg
import matplotlib.pyplot as plt
from PIL import Image
from numpy import asarray
from CompressionForDegradedReconstruction_HEVC_ADMM_several_displays import cfdr
from HEVCWrapper import CompressDecompress
import utils
import os

IMAGES_MAIN_FOLDER_NAME = 'images'

def matlab_style_gauss2D(shape=(3,3),sigma=0.5):
    """
    2D gaussian mask - should give the same result as MATLAB's
    fspecial('gaussian',[shape],[sigma])
    """
    m, n = [(ss-1.)/2. for ss in shape]
    y, x = np.ogrid[-m:m+1,-n:n+1]
    h = np.exp( -(x*x + y*y) / (2.*sigma*sigma))
    h[h < np.finfo(h.dtype).eps*h.max()] = 0
    sumh = h.sum()
    if sumh != 0:
        h /= sumh
    return h

def fgaussian(size, sigma):
    r2 = (size[0] - 1) // 2
    c2 = (size[1] - 1) // 2
    xs = [i - r2 for i in range(2*r2 + 1)]
    ys = [i - c2 for i in range(2 * c2 + 1)]
    [x, y] = np.meshgrid(xs, ys)
    radsqrd = np.power(x, 2) + np.power(y, 2)
    f = np.exp(-radsqrd / (2 * sigma ** 2))
    f = f / np.sum(f)
    return f

def main():
    compression_factor_grid = [1]  # use this for a single example at a specific compression working-point
    # compression_factor_grid = 1:5: 41; # use this for getting rate - distortion curves

    # image_filenames_list = {'almonds_300x300.png', 'flowers_300x300.png', 'billiard_balls_a_300x300.png',
    # 'cards_a_300x300.png', 'ducks_300x300.png', 'garden_table_300x300.png'};
    # image_filenames_list = {'ucid00006.tif', 'ucid00015.tif', 'ucid00022.tif', 'ucid00024.tif',
    # 'ucid00291.tif', 'ucid00350.tif'};
    # image_filenames_list = {'berkely_starfish.jpg', 'berkely_bears.jpg', 'berkely_boats.jpg',
    # 'berkely_butterfly.jpg', 'berkely_flower_and_bugs.jpg', 'berkely_sea.jpg'};
    image_filenames_list = ['berkely_flower_and_bugs.jpg'] # TODO: Download all images

    for image_filename in image_filenames_list:
        image_path = os.path.join(IMAGES_MAIN_FOLDER_NAME, image_filename)
        # load the image
        image = Image.open(image_path)
        rgb_image = image.convert('RGB')
        rgb_image = np.array(rgb_image)
        grey_scale_img = np.round(utils.rgb2gray(rgb_image))
        I = grey_scale_img / 255.0

        #plt.imshow(I, cmap=plt.get_cmap('gray'), vmin=0, vmax=1)
        #plt.show()


        number_of_displays = 3
        # K1 = matlab_style_gauss2D((15, 15), 0.6)
        # K2 = matlab_style_gauss2D((15, 15), 0.8)
        # K3 = matlab_style_gauss2D((15, 15), 1)
        K1 = fgaussian((15, 15), 0.6)
        K2 = fgaussian((15, 15), 0.8)
        K3 = fgaussian((15, 15), 1)
        K_set = [K1, K2, K3]
        K_weights = [0.6, 0.3, 0.1]


        assert (len(K_weights) == number_of_displays)
        assert (np.round(np.sum(K_weights)) == 1)

        number_of_iterations = 40
        number_of_lambda_values = len(compression_factor_grid)
        deteriorated_psnr_values = np.zeros((number_of_lambda_values, 1))
        bpp_values = np.zeros((number_of_lambda_values, 1))
        deteriorated_mse_values = np.zeros((number_of_lambda_values, 1))


        ####### Proposed Algorithm  ---------------------- ############3
        for lambda_counter, compression_factor in enumerate(compression_factor_grid):
            if compression_factor > 45:
                beta = 0.45
            elif compression_factor > 40:
                beta = 0.35
            elif compression_factor > 30:
                beta = 0.10
            elif compression_factor > 20:
                beta = 0.05
            else:
                beta = 0.03

            beta = 10 * beta

            # deblur
            clean_reconstruction, bpp = cfdr(I, K_set, K_weights, beta, number_of_iterations, compression_factor)

            our_deteriorated_reconstruction_display1 = utils.ApplyNoiseBlur(clean_reconstruction, K_set[0])
            our_deteriorated_reconstruction_display2 = utils.ApplyNoiseBlur(clean_reconstruction, K_set[1])
            our_deteriorated_reconstruction_display3 = utils.ApplyNoiseBlur(clean_reconstruction, K_set[2])

            deteriorated_psnr_values[lambda_counter] = K_weights[0] * utils.CalcPSNR(I, our_deteriorated_reconstruction_display1, 1) +\
            K_weights[1] * utils.CalcPSNR(I, our_deteriorated_reconstruction_display2, 1) + \
            K_weights[2] * utils.CalcPSNR(I, our_deteriorated_reconstruction_display3, 1)

            deteriorated_mse_values[lambda_counter] = K_weights[0] * utils.CalcMSE(I, our_deteriorated_reconstruction_display1) +\
            K_weights[1] * utils.CalcMSE(I, our_deteriorated_reconstruction_display2) + \
            K_weights[2] * utils.CalcMSE(I, our_deteriorated_reconstruction_display3)

            bpp_values[lambda_counter] = bpp

        ####### End of Proposed Algorithm  ---------------------- ############

        ####### Redernece - Regular compression with degraded reconstruction ########
        number_of_compression_factors = len(compression_factor_grid)

        regular_deteriorated_psnr_values = np.zeros((number_of_compression_factors, 1))
        regular_bpp_values = np.zeros((number_of_compression_factors, 1))
        regular_deteriorated_mse_values = np.zeros((number_of_compression_factors, 1))

        compressed_file = 'temp.bpg'

        for compression_factor_counter, compression_factor in enumerate(compression_factor_grid):

            regular_clean_reconstruction = CompressDecompress(255 * I, compression_factor, compressed_file)
            regular_clean_reconstruction = regular_clean_reconstruction / 255.0

            regular_deteriorated_reconstruction_display1 = utils.ApplyNoiseBlur(regular_clean_reconstruction, K_set[0])
            regular_deteriorated_reconstruction_display2 = utils.ApplyNoiseBlur(regular_clean_reconstruction, K_set[1])
            regular_deteriorated_reconstruction_display3 = utils.ApplyNoiseBlur(regular_clean_reconstruction, K_set[2])

            regular_deteriorated_psnr_values[compression_factor_counter] = \
                K_weights[0] * utils.CalcPSNR(I, regular_deteriorated_reconstruction_display1, 1) + \
                K_weights[1] * utils.CalcPSNR(I, regular_deteriorated_reconstruction_display2, 1) + \
                K_weights[2] * utils.CalcPSNR(I, regular_deteriorated_reconstruction_display3, 1)

            regular_deteriorated_mse_values[compression_factor_counter] = \
                K_weights[0] * utils.CalcMSE(I, regular_deteriorated_reconstruction_display1) + \
                K_weights[1] * utils.CalcMSE(I, regular_deteriorated_reconstruction_display2) + \
                K_weights[2] * utils.CalcMSE(I, regular_deteriorated_reconstruction_display3)

            regular_bpp_values[compression_factor_counter] = utils.calculate_bpp_of_file(compressed_file, I.size)

        ####### End of Redernece - Regular compression with degraded reconstruction ########

        print("Finished")
        print(regular_bpp_values)
        print(regular_deteriorated_mse_values)
        print(regular_deteriorated_psnr_values)

        print(bpp_values)
        print(deteriorated_mse_values)
        print(deteriorated_psnr_values)

        # PSNR Graph
        plt.plot(regular_deteriorated_psnr_values, regular_bpp_values, color='red', linewidth=2, markersize=12)
        plt.plot(deteriorated_psnr_values, bpp_values, color='green', linestyle='dashed', linewidth=2, markersize=12)
        plt.xlabel('Compression Rate')
        plt.ylabel('PSNR')
        plt.show()
        image_name = image_filename.split(".")[0]
        plt.savefig('{}_RDcurve_PSNR_regular_VS_multiple'.format(image_name))

if __name__=='__main__':
    main()