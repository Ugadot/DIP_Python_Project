import numpy as np
import matplotlib.pyplot as plt
from BDRate import bdrate


def PrintGraphMultiple(series_dict, metric, image_name, result_dir, codec):
    max_quality = - float("inf")
    min_quality = float("inf")

    lines = []
    for series_name, series_val in series_dict.items():
        max_quality = max(max_quality, np.max(series_val[1]))
        min_quality = min(min_quality, np.min(series_val[1]))

        line, = plt.plot(series_val[0], series_val[1], label=series_name, **series_val[2])
        lines.append(line)

    plt.xlabel('Compression Rate (bpp)')
    plt.ylabel(metric)
    plt.ylim(0.99 * min_quality, 1.01 * max_quality)
    plt.legend(handles=lines, loc=4)
    plt.savefig('results/{}/{}_all_experiments_RD_curve_{}_{}.png'.format(result_dir, codec, image_name, metric))
    plt.show()

def PrintGraph(rate1, rate2, bpp1, bpp2, quality1, quality2, metric, image_name, result_dir, codec):
    bdrate_metric = bdrate(rate1.flatten(), quality1.flatten(), rate2.flatten(), quality2.flatten())

    max_quality = max(np.max(quality1), np.max(quality2))
    min_quality = min(np.min(quality1), np.min(quality2))
    line_regular, = plt.plot(bpp1, quality1, color='red', linewidth=2,
                             markersize=12, label="Regular compression")
    line_algo, = plt.plot(bpp2, quality2, color='green', linestyle='dashed', linewidth=2,
                          markersize=12, label='Algorithm')
    plt.xlabel('Compression Rate (bpp)')
    plt.ylabel(metric)
    plt.ylim(0.99 * min_quality, 1.01 * max_quality)
    plt.legend(handles=[line_regular, line_algo], loc=4)
    plt.savefig('results/{}/{}_RD_curve_{}_regular_VS_multiple_{}_bdrate_{}.png'.format(result_dir, codec, image_name, metric, bdrate_metric))
    plt.show()