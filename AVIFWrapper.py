import numpy as np
from PIL import Image
import subprocess
import cv2

TMP_INPUT_FILENAME = "tmp_in.png"
TMP_RECONSTRUCTED_FILENAME = "tmp_out.png"
ENCODER_PATH = "./cavif/build/cavif"
DECODER_PATH = "./davif/davif"


def CompressDecompress(orig_img, rate_control, compressed_file_name):
    cv2.imwrite(TMP_INPUT_FILENAME, orig_img)

    avif_encode_command = ["wsl", ENCODER_PATH, "--crf", str(rate_control), "-o", compressed_file_name, "-i", TMP_INPUT_FILENAME]
    encode_process = subprocess.Popen(avif_encode_command)
    encode_process.wait()

    avif_decode_command = ["wsl", DECODER_PATH, "-o", TMP_RECONSTRUCTED_FILENAME, "-i", compressed_file_name]

    decode_process = subprocess.Popen(avif_decode_command)
    decode_process.wait()

    #image = mpimg.imread(TMP_RECONSTRUCTED_FILENAME)
    #image = plt.imread(TMP_RECONSTRUCTED_FILENAME)
    rgba_image = Image.open(TMP_RECONSTRUCTED_FILENAME)
    rgb_image = rgba_image.convert('RGB')
    image = np.array(rgb_image)
    reconstructed_img = image[:, :, 0]
    #reconstructed_img = utils.rgb2gray(image)
    # reconstructed_img = np.asarray(reconstructed_img)

    # TODO: Add mechanism to delete temporary images used by encoder
    # remove_command = ["rm", "-rf", TMP_INPUT_FILENAME, TMP_RECONSTRUCTED_FILENAME, compressed_file_name]
    # cleanup_process = subprocess.Popen(remove_command)
    # cleanup_process.wait()

    return reconstructed_img