import numpy as np
from matplotlib.image import imsave
from PIL import Image
from AlgorithmSeveralDisplays import cfdr
from HEVCWrapper import CompressDecompress as hevc
from AVIFWrapper import CompressDecompress as avif
import utils
import os
from GraphPrint import PrintGraph, PrintGraphMultiple

IMAGES_MAIN_FOLDER_NAME = 'images'

CODECS_FILE_EXT = {"HEVC": "bpg", "AVIF": "avif"}
CODECS_WRAPPERS = {"HEVC": hevc, "AVIF": avif}

#### Algorithm Parameters - Change this if wanted ####

#CODEC = "HEVC"
CODEC = "AVIF"  # AV1 still images codec

K1 = utils.fgaussian((15, 15), 0.6)
K2 = utils.fgaussian((15, 15), 0.8)
K3 = utils.fgaussian((15, 15), 1)
K_SET = [K1, K2, K3]
K_WEIGHTS = [0.6, 0.3, 0.1]

COMPRESSION_FACTOR_LIST = [i for i in range(1, 42, 5)]  # use this for getting rate - distortion curves

# image_filenames_list = ['almonds_300x300.png', 'flowers_300x300.png', 'billiard_balls_a_300x300.png',
# 'cards_a_300x300.png', 'ducks_300x300.png', 'garden_table_300x300.png']
# image_filenames_list = ['ucid00006.tif', 'ucid00015.tif', 'ucid00022.tif', 'ucid00024.tif',
# 'ucid00291.tif', 'ucid00350.tif']
# image_filenames_list = ['berkely_starfish.jpg', 'berkely_bears.jpg', 'berkely_boats.jpg',
#                    'berkely_butterfly.jpg', 'berkely_flower_and_bugs.jpg', 'berkely_sea.jpg']
# image_filenames_list = ['108004.jpg', '107072.jpg', '128035.jpg', '81095.jpg']  # TODO: Download all images
IMAGES = ['108004.jpg']

def main():

    number_of_displays = len(K_SET)

    assert (len(K_WEIGHTS) == number_of_displays)
    assert (np.round(np.sum(K_WEIGHTS)) == 1)

    for image_filename in IMAGES:
        image_path = os.path.join(IMAGES_MAIN_FOLDER_NAME, image_filename)
        image_name = image_filename.split(".")[0]
        image_results_dir = "{}_{}".format(image_name, CODEC)

        result_path = os.path.join(os.getcwd(), "results", image_results_dir)
        os.makedirs(result_path, exist_ok=True)
        # load the image
        image = Image.open(image_path)
        rgb_image = image.convert('RGB')
        rgb_image = np.array(rgb_image)
        grey_scale_img = np.round(utils.rgb2gray(rgb_image))
        I = grey_scale_img / 255.0

        number_of_iterations = 40
        number_of_lambda_values = len(COMPRESSION_FACTOR_LIST)


        ####### Proposed Algorithm  ---------------------- ############

        deteriorated_psnr_values = np.zeros((number_of_lambda_values, 1))
        deteriorated_ssim_values = np.zeros((number_of_lambda_values, 1))
        bpp_values = np.zeros((number_of_lambda_values, 1))
        bitrate_values = np.zeros((number_of_lambda_values, 1))
        deteriorated_mse_values = np.zeros((number_of_lambda_values, 1))

        for lambda_counter, compression_factor in enumerate(COMPRESSION_FACTOR_LIST):
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
            clean_reconstruction, bpp = cfdr(I, K_SET, K_WEIGHTS, beta, number_of_iterations, compression_factor, CODEC)
            bpp_values[lambda_counter] = bpp
            bitrate_values[lambda_counter] = utils.calculate_bits_of_file_from_bpp(bpp, I.size)

            imsave('results/{}/{}_algo_before_display_qp_{}_bpp_{}_PSNR_{}.png'.format(image_results_dir,
                  image_name,
                  compression_factor,
                  bpp,
                  utils.CalcPSNR(I, clean_reconstruction, 1)),
                  clean_reconstruction, cmap='gray')

            deteriorated_psnr_values[lambda_counter] = 0
            deteriorated_ssim_values[lambda_counter] = 0
            deteriorated_mse_values[lambda_counter] = 0

            for i in range(number_of_displays):
                our_deteriorated_reconstruction_display = utils.ApplyNoiseBlur(clean_reconstruction, K_SET[i])
                PSNR_val = utils.CalcPSNR(I, our_deteriorated_reconstruction_display, 1)
                SSIM_val = utils.CalcSSIM(I, our_deteriorated_reconstruction_display, True)
                MSE = utils.CalcMSE(I, our_deteriorated_reconstruction_display)

                deteriorated_psnr_values[lambda_counter] += PSNR_val * K_WEIGHTS[i]
                deteriorated_ssim_values[lambda_counter] += SSIM_val * K_WEIGHTS[i]
                deteriorated_mse_values[lambda_counter] += MSE * K_WEIGHTS[i]

                # save images
                imsave('results/{}/{}_algo_display_{}_qp_{}_bpp_{}_PSNR_{}_SSIM{}.png'.format(image_results_dir,
                      image_name,
                      i,
                      compression_factor,
                      bpp,
                      PSNR_val,
                      SSIM_val),
                       our_deteriorated_reconstruction_display, cmap='gray')


        ####### Single - Screen Proposed Algorithm  ---------------------- ############3

        single_deteriorated_psnr_values = np.zeros((number_of_lambda_values, 1))
        single_deteriorated_ssim_values = np.zeros((number_of_lambda_values, 1))
        single_bpp_values = np.zeros((number_of_lambda_values, 1))
        single_bitrate_values = np.zeros((number_of_lambda_values, 1))
        single_deteriorated_mse_values = np.zeros((number_of_lambda_values, 1))

        for lambda_counter, compression_factor in enumerate(COMPRESSION_FACTOR_LIST):
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
            clean_reconstruction, bpp = cfdr(I, [K_SET[0]], [1.0], beta, number_of_iterations, compression_factor, CODEC)
            single_bpp_values[lambda_counter] = bpp
            single_bitrate_values[lambda_counter] = utils.calculate_bits_of_file_from_bpp(bpp, I.size)

            imsave('results/{}/{}_algo_single_screen_before_display_qp_{}_bpp_{}_PSNR_{}.png'.format(image_results_dir,
                  image_name,
                  compression_factor,
                  bpp,
                  utils.CalcPSNR(I, clean_reconstruction, 1)),
                  clean_reconstruction, cmap='gray')

            single_deteriorated_psnr_values[lambda_counter] = 0
            single_deteriorated_ssim_values[lambda_counter] = 0
            single_deteriorated_mse_values[lambda_counter] = 0

            for i in range(number_of_displays):
                our_deteriorated_reconstruction_display = utils.ApplyNoiseBlur(clean_reconstruction, K_SET[i])
                PSNR_val = utils.CalcPSNR(I, our_deteriorated_reconstruction_display, 1)
                SSIM_val = utils.CalcSSIM(I, our_deteriorated_reconstruction_display, True)
                MSE = utils.CalcMSE(I, our_deteriorated_reconstruction_display)

                single_deteriorated_psnr_values[lambda_counter] += PSNR_val * K_WEIGHTS[i]
                single_deteriorated_ssim_values[lambda_counter] += SSIM_val * K_WEIGHTS[i]
                single_deteriorated_mse_values[lambda_counter] += MSE * K_WEIGHTS[i]

                # save images
                imsave('results/{}/{}_algo_single_screen_display_{}_qp_{}_bpp_{}_PSNR_{}_SSIM{}.png'.format(image_results_dir,
                      image_name,
                      i,
                      compression_factor,
                      bpp,
                      PSNR_val,
                      SSIM_val),
                       our_deteriorated_reconstruction_display, cmap='gray')

        ####### Refernece - Regular compression with degraded reconstruction ########
        func = CODECS_WRAPPERS[CODEC]
        number_of_compression_factors = len(COMPRESSION_FACTOR_LIST)

        regular_deteriorated_psnr_values = np.zeros((number_of_compression_factors, 1))
        regular_deteriorated_ssim_values = np.zeros((number_of_compression_factors, 1))
        regular_bpp_values = np.zeros((number_of_compression_factors, 1))
        regular_bitrate_values = np.zeros((number_of_compression_factors, 1))
        regular_deteriorated_mse_values = np.zeros((number_of_compression_factors, 1))

        compressed_file_ext = CODECS_FILE_EXT[CODEC]
        compressed_file = 'temp.{}'.format(compressed_file_ext)

        for compression_factor_counter, compression_factor in enumerate(COMPRESSION_FACTOR_LIST):

            regular_clean_reconstruction = func(255 * I, compression_factor, compressed_file)
            regular_clean_reconstruction = regular_clean_reconstruction / 255.0

            regular_bpp_values[compression_factor_counter] = utils.calculate_bpp_of_file(compressed_file, I.size)
            regular_bitrate_values[compression_factor_counter] = utils.calculate_bits_of_file(compressed_file)
            current_bpp = regular_bpp_values[compression_factor_counter][0]

            imsave('results/{}/{}_regular_before_display_qp_{}_bpp_{}_PSNR_{}.png'.format(image_results_dir,
                  image_name,
                  compression_factor,
                  current_bpp,
                  utils.CalcPSNR(I, regular_clean_reconstruction, 1)),
                   regular_clean_reconstruction, cmap='gray')

            regular_deteriorated_psnr_values[compression_factor_counter] = 0
            regular_deteriorated_ssim_values[compression_factor_counter] = 0
            regular_deteriorated_mse_values[compression_factor_counter] = 0

            for i in range(number_of_displays):
                regular_deteriorated_reconstruction_display = utils.ApplyNoiseBlur(regular_clean_reconstruction, K_SET[i])
                PSNR_val = utils.CalcPSNR(I, regular_deteriorated_reconstruction_display, 1)
                SSIM_val = utils.CalcSSIM(I, regular_deteriorated_reconstruction_display, True)
                MSE = utils.CalcMSE(I, regular_deteriorated_reconstruction_display)

                regular_deteriorated_psnr_values[compression_factor_counter] += PSNR_val * K_WEIGHTS[i]
                regular_deteriorated_ssim_values[compression_factor_counter] += SSIM_val * K_WEIGHTS[i]
                regular_deteriorated_mse_values[compression_factor_counter] += MSE * K_WEIGHTS[i]

                # save images
                imsave('results/{}/{}_regular_display_{}_qp_{}_bpp_{}_PSNR_{}_SSIM_{}.png'.format(image_results_dir,
                         image_name,
                         i,
                         compression_factor,
                         current_bpp,
                         PSNR_val,
                        SSIM_val),
                       regular_deteriorated_reconstruction_display, cmap='gray')

        # Create Graphs part

        # PSNR Graph
        PrintGraph(regular_bitrate_values, bitrate_values, regular_bpp_values, bpp_values,
                   regular_deteriorated_psnr_values, deteriorated_psnr_values, "PSNR", image_name, image_results_dir, CODEC)

        # SSIM Graph
        PrintGraph(regular_bitrate_values, bitrate_values, regular_bpp_values, bpp_values,
                   regular_deteriorated_ssim_values, deteriorated_ssim_values, "SSIM", image_name, image_results_dir, CODEC)

        # Add Single screen part to 3 series graphs

        # PSNR 3 series graph
        PSNR_multseries_dict = {
            "Regular compression": [regular_bpp_values, regular_deteriorated_psnr_values,
                                     {'color': 'red', 'linewidth': 2, 'markersize': 12}],
            "Algorithm Multiple Screens": [bpp_values, deteriorated_psnr_values,
                            {'color': 'green', 'linestyle': 'dashed', 'linewidth': 2, 'markersize': 12}],
            "Algorithm Single Screen": [single_bpp_values, single_deteriorated_psnr_values,
                                        {'color': 'blue', 'linestyle': 'dotted', 'linewidth': 2, 'markersize': 12}],
        }
        PrintGraphMultiple(PSNR_multseries_dict, "PSNR", image_name, image_results_dir, CODEC)

        # SSIM 3 series graph
        SSIM_multseries_dict = {
            "Regular compression": [regular_bpp_values, regular_deteriorated_ssim_values,
                                    {'color': 'red', 'linewidth': 2, 'markersize': 12}],
            "Algorithm Multiple Screens": [bpp_values, deteriorated_ssim_values,
                                           {'color': 'green', 'linestyle': 'dashed', 'linewidth': 2, 'markersize': 12}],
            "Algorithm Single Screen": [single_bpp_values, single_deteriorated_ssim_values,
                                        {'color': 'blue', 'linestyle': 'dotted', 'linewidth': 2, 'markersize': 12}],
        }
        PrintGraphMultiple(SSIM_multseries_dict, "SSIM", image_name, image_results_dir, CODEC)

if __name__=='__main__':
    main()