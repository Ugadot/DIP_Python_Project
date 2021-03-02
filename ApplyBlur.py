import math
from scipy import signal
import numpy as np

def ApplyNoiseBlur(image, kernel):
    kernel_size = (kernel.size[0] - 1) // 2
    conv_result = signal.convolve2d(image, kernel, mode='valid')
    temp = 255 * conv_result
    temp = temp.astype(np.uint8)
    temp = temp.astype(np.double)

    conv_rounded = temp / 255.0

    paddad_picture = np.pad(conv_rounded,(1,1) * kernel_size, 'edge')
    #y = padarray(y, [1 1]*ks, 'replicate', 'both');
    for a=1:4
      y = edgetaper(y, K);
    end

    deteriorated_image = y;
