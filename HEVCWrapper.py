import numpy as np
from PIL import Image
import subprocess


TMP_INPUT_FILENAME = "tmp_in.png"
TMP_RECONSTRUCTED_FILENAME = "tmp_out.png"
ENCODER_PATH = ""

def CompressDecompress(orig_img, rate_control, compressed_file_name):
    # TODO: Check that this save image correctly
    im = Image.fromarray(orig_img)
    im.save(TMP_INPUT_FILENAME)

    hevc_encode_command = [ENCODER_PATH, "-q", str(rate_control), "-o", compressed_file_name, TMP_INPUT_FILENAME]

    encode_process = subprocess.Popen(hevc_encode_command)
    encode_process.wait()

    hevc_decode_command = [ENCODER_PATH, "-o", TMP_RECONSTRUCTED_FILENAME, compressed_file_name]

    decode_process = subprocess.Popen(hevc_decode_command)
    decode_process.wait()

    image = Image.open(TMP_RECONSTRUCTED_FILENAME)
    # convert image to numpy array
    reconstructed_img = np.asarray(image)

    return reconstructed_img

