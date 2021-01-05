import math
import numpy as np

"""
based on BD functions from https://github.com/google/compare-codecs/blob/master/lib/visual_metrics.py
"""

def bdsnr(Rate_1, Quality_1, Rate_2, Quality_2):
    log_rate1 = map(math.log, Rate_1)
    log_rate2 = map(math.log, Rate_2)

    # Best cubic poly fit for graph represented by log_ratex, psrn_x.
    poly1 = np.polyfit(log_rate1, Quality_1, 3)
    poly2 = np.polyfit(log_rate2, Quality_2, 3)

    # Integration interval.
    min_int = max([min(log_rate1), min(log_rate2)])
    max_int = min([max(log_rate1), max(log_rate2)])

    # Integrate poly1, and poly2.
    p_int1 = np.polyint(poly1)
    p_int2 = np.polyint(poly2)

    # Calculate the integrated value over the interval we care about.
    int1 = np.polyval(p_int1, max_int) - np.polyval(p_int1, min_int)
    int2 = np.polyval(p_int2, max_int) - np.polyval(p_int2, min_int)

    # Calculate the average improvement.
    if max_int != min_int:
        avg_diff = (int2 - int1) / (max_int - min_int)
    else:
        avg_diff = 0.0
    return avg_diff


def bdrate(Rate_1, Quality_1, Rate_2, Quality_2):
    log_rate1 = map(math.log, Rate_1)
    log_rate2 = map(math.log, Rate_2)

    # Best cubic poly fit for graph represented by log_ratex, psrn_x.
    poly1 = np.polyfit(Quality_1, log_rate1, 3)
    poly2 = np.polyfit(Quality_2, log_rate2, 3)

    # Integration interval.
    min_int = max([min(Quality_1), min(Quality_2)])
    max_int = min([max(Quality_1), max(Quality_2)])

    # find integral
    p_int1 = np.polyint(poly1)
    p_int2 = np.polyint(poly2)

    # Calculate the integrated value over the interval we care about.
    int1 = np.polyval(p_int1, max_int) - np.polyval(p_int1, min_int)
    int2 = np.polyval(p_int2, max_int) - np.polyval(p_int2, min_int)

    # Calculate the average improvement.
    avg_exp_diff = (int2 - int1) / (max_int - min_int)

    # In really bad formed data the exponent can grow too large.
    # clamp it.
    if avg_exp_diff > 200:
        avg_exp_diff = 200

    # Convert to a percentage.
    avg_diff = (math.exp(avg_exp_diff) - 1) * 100

    return avg_diff
