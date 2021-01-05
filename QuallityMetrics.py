import numpy as np

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

    margin_to_ignore = 35 # 15
    start = margin_to_ignore + 1
    end = - margin_to_ignore
    original_ignored = original_img[start:end , start:end]
    decompresed_ignored = decompressed_img[start:end, start:end]

    # MSE Using numpy
    mse = np.mean((np.array(original_ignored, dtype=np.float32) - np.array(decompresed_ignored, dtype=np.float32)) ** 2)
    if mse == 0:
        return 100
    return 20 * np.log10(max_value / (np.sqrt(mse)))
