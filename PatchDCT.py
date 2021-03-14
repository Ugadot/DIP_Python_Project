import numpy as np


def PatchDCT(x, noise, W, W_inv):
    mean_x = np.mean(x)
    x = x - mean_x

    Wx = W @ x
    threshold = noise * 3
    Wx[np.abs(Wx) < threshold] = 0

    clean_x = W_inv @ Wx
    final_value = clean_x + mean_x

    return final_value
