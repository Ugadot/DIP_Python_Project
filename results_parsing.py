import os
import numpy as np
from GraphPrint import PrintGraph

PIC_DIR = "./results/107072_AVIF"
DISPLAYS_PROB = [0.6, 0.3, 0.1]
PIC_NAME = "107072"
QP_VALS = [i for i in range(1, 42, 5)]  # use this for getting rate - distortion curves
CODEC = "AVIF"
results_dir = "../results"

def main():

    regular_psnr = np.zeros((len(QP_VALS), 1))
    regular_ssim = np.zeros((len(QP_VALS), 1))
    regular_bpp = np.zeros((len(QP_VALS), 1))

    algo_psnr = np.zeros((len(QP_VALS), 1))
    algo_ssim = np.zeros((len(QP_VALS), 1))
    algo_bpp = np.zeros((len(QP_VALS), 1))

    directory = PIC_DIR
    for filename in os.listdir(directory):
        if filename.endswith(".png") and filename.startswith(PIC_NAME):
            file_vals = filename.split("_")
            if (file_vals[1] == "algo" and file_vals[2] == "display"):
                qp_index = QP_VALS.index(int(file_vals[5]))
                bpp = float(file_vals[7])
                psnr = float(file_vals[9])
                ssim = float(file_vals[10][4:-4])
                display_prob = DISPLAYS_PROB[int(file_vals[3])]
                algo_psnr[qp_index] += display_prob * psnr
                algo_ssim[qp_index] += display_prob * ssim
                algo_bpp[qp_index] = bpp

            if (file_vals[1] == "regular" and file_vals[2] == "display"):
                qp_index = QP_VALS.index(int(file_vals[5]))
                bpp = float(file_vals[7])
                psnr = float(file_vals[9])
                ssim = float(file_vals[11][:-4])
                display_prob = DISPLAYS_PROB[int(file_vals[3])]
                regular_psnr[qp_index] += display_prob * psnr
                regular_ssim[qp_index] += display_prob * ssim
                regular_bpp[qp_index] = bpp
        else:
            continue

    PrintGraph(regular_bpp, algo_bpp, regular_bpp, algo_bpp, regular_psnr, algo_psnr, "PSNR", PIC_NAME + "_NEW", results_dir, CODEC)
    PrintGraph(regular_bpp, algo_bpp, regular_bpp, algo_bpp, regular_ssim, algo_ssim, "SSIM", PIC_NAME + "_NEW", results_dir, CODEC)


if __name__=='__main__':
    main()