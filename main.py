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



def CalcBDRate(Rate_1, Quality_1, Rate_2, Quality_2, mode):

    lR1 = np.log(Rate_1);
    lR2 = np.log(Rate_2);

    if mode == 'dsnr':
            % PSNR method
            p1 = polyfit(lR1,PSNR1,3);
            p2 = polyfit(lR2,PSNR2,3);

            % integration interval
            min_int = min([lR1; lR2]);
            max_int = max([lR1; lR2]);

            % find integral
            p_int1 = polyint(p1);
            p_int2 = polyint(p2);

            int1 = polyval(p_int1, max_int) - polyval(p_int1, min_int);
            int2 = polyval(p_int2, max_int) - polyval(p_int2, min_int);

            % find avg diff
            avg_diff = (int2-int1)/(max_int-min_int);

        case 'rate'
            % rate method
            p1 = polyfit(PSNR1,lR1,3);
            p2 = polyfit(PSNR2,lR2,3);

            % integration interval
            min_int = min([PSNR1; PSNR2]);
            max_int = max([PSNR1; PSNR2]);

            % find integral
            p_int1 = polyint(p1);
            p_int2 = polyint(p2);

            int1 = polyval(p_int1, max_int) - polyval(p_int1, min_int);
            int2 = polyval(p_int2, max_int) - polyval(p_int2, min_int);

            % find avg diff
            avg_exp_diff = (int2-int1)/(max_int-min_int);
            avg_diff = (exp(avg_exp_diff)-1)*100;
    end