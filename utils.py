import numpy as np
from scipy import signal
import os
import cv2

def calculate_bpp_of_file(file_name, number_of_pixels):
    number_of_bytes = os.path.getsize(str(file_name))
    bits = number_of_bytes * 8
    return bits/number_of_pixels


def log_guass_pdf (x, sigma):
    d = len(x)
    if not np.isreal(sigma) or not check_symmetric(sigma):
        print("ERROR: sigma is not SPD")
        return 0

    r = np.linalg.cholesky(sigma)
    q = np.sum((r.T / x) ^ 2, 1)
    c = d * np.log(2*np.pi) + 2 * np.sum(np.log(np.diag(r)))
    # TODO: need to check same result
    return -(c+q)/2


def check_symmetric(a, tol=1e-8):
    return np.all(np.abs(a-a.T) < tol)

def CalcMSE(original_img, decompressed_img):
    margin_to_ignore = 35 # 15
    start = margin_to_ignore + 1
    end = - margin_to_ignore
    original_ignored = original_img[start:end , start:end]
    decompresed_ignored = decompressed_img[start:end, start:end]

    # MSE Using numpy
    mse = np.mean((np.array(original_ignored, dtype=np.float32) - np.array(decompresed_ignored, dtype=np.float32)) ** 2)
    return mse

def CalcPSNR(original_img, decompressed_img, max_value):
    """"Calculating peak signal-to-noise ratio (PSNR) between two images.
    input can be regular list and not numpy arrays"""

    margin_to_ignore = 35  # 15
    start = margin_to_ignore + 1
    end = - margin_to_ignore
    original_ignored = original_img[start:end , start:end]
    decompresed_ignored = decompressed_img[start:end, start:end]

    # MSE Using numpy
    mse = np.mean((np.array(original_ignored, dtype=np.float32) - np.array(decompresed_ignored, dtype=np.float32)) ** 2)
    if mse == 0:
        return 100
    return 20 * np.log10(max_value / (np.sqrt(mse)))


def rgb2gray(rgb):
    return np.dot(rgb[..., :3], [0.2989, 0.5870, 0.1140])


def blur_edge(img, K):
    h, w = img.shape[:2]
    d = K.shape[0] // 2
    img_pad = cv2.copyMakeBorder(img, d, d, d, d, cv2.BORDER_WRAP)
    #img_blur = signal.convolve2d(img_pad, K, mode='same')
    img_blur = cv2.filter2D(img_pad, -1, K)
    img_blur = img_blur[d:-d,d:-d]
    #img_blur = cv2.GaussianBlur(img_pad, (2*d+1, 2*d+1), -1)
    y, x = np.indices((h, w))
    dist = np.dstack([x, w-x-1, y, h-y-1]).min(-1)
    w = np.minimum(np.float32(dist)/d, 1.0)
    return img*w + img_blur*(1-w)


def ApplyNoiseBlur(image, kernel):
    kernel_size = kernel.shape[0] // 2
    conv_result = signal.convolve2d(image, kernel, mode='valid')
    temp = np.round(255 * conv_result)
    #temp = temp.astype(np.uint8)
    #temp = temp.astype(np.double)

    conv_rounded = temp / 255.0
    paddad_picture = np.pad(conv_rounded, (kernel_size, kernel_size), 'edge')
    #y = padarray(y, [1 1]*kernel_size, 'replicate', 'both');
    for i in range(4):
        paddad_picture = blur_edge(paddad_picture, kernel)

    return paddad_picture




