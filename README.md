# DIP_Python_Project

The following code is an Python implementation of "Compression For Multiple Reconstructions" paper written by: Yehuda Dar, Michael Elad and Alfred M. Bruckstein
The code is written in python for convenience purposes but the performance of it are quite slow.

In this code we added another compression format (AVIF - the still images compression format of AV-1 codec),
In addition we added SSIM quallity measurements to test the algorithm from another perspective.

In order to run the code you would need the following:
* Currently running on Windows with WSL installed only (if running on HEVC format, WSL is not needed)
* python 3.6 or above
* The python libraires which listed in requirements.txt file

In addition on RunAlgo.py there are several variables which control the run paramters:

1) IMAGES_MAIN_FOLDER_NAME - path to images directory
2) CODEC - type of compression format (should be either 'AVIF' or 'HEVC')
3) K_SET - list of display's convulution kernel that represent the display degredation
4) K_WEIGHTS - list of non-negative numbers that sum up to 1 and represent the probabilty of the image to be presented on display with the same index
5) COMPRESSION_FACTOR_LIST - list of compression rate-control paramters that relevant to the chosen format (CRF for both AVIF and HEVC)
6) IMAGES - list of images names under IMAGES_MAIN_FOLDER_NAME directory to run algo on

in order to run just run RunAlgo.py file with the selected paramters.
Make sure that there is a "results" directory named - "results" - All of the compressed filter before and after degredation + the total RD_curves would appear in the
relevant directory. In addition each picture and/or graph would have their calculated metrics as a part of it's name.

For questions you can contact
Uri Gadot - uri.gad@campus.technion.ac.il
Maor Asher - maor.asher@campus.technion.ac.il
