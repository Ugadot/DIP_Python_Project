
import math
import numpy as np
import os


def calculate_bpp_of_file (file_name, number_of_pixels):
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






