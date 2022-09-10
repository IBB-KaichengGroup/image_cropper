# R Image Cropper

# User Guide

## Setup

* Ensure R and RStudio are installed.
  1. Download R: https://cran.r-project.org/bin/windows/base/
  2. Download RStudio: https://www.rstudio.com/products/rstudio/download/

* You can check the latest commit with the command:

    `git clone https://github.com/IBB-KaichengGroup/image_cropper.git`

* Set Windows to run `.R` files using `Rscripts.exe` upon double-click.
  1. Right click on `main.R` -> `Open with` -> `More apps` -> `Look for another app on this PC`.
  2. Locate `Rscripts.exe`, likely in `C:\Program Files\R\R-xx.xx.xx\bin`.

## Repository Structure

* The `Input` folder is where you put images that you want cropped. There can be sub-folders within
 it.
* The `Output` folder is where the cropped images will appear. They will be in the exact same file 
structure as the original data in `Input`.
* The `main.R` file contains the code that performs cropping. Double-clicking on it initiates 
cropping and creates a Window Command Prompt for you to track progress.

## Miscellaneous

* The script is written to crop `x%` of pixels from the top. You can change `x` by editing `main.R`.
  1. Open `main.R` with either RStudio, R.exe, or your favourite text editor.
  2. Find the following lines of code (should be line 8 and 9):
    ```
    # user configurations
    crop_prop <- 0.1
    ```
  3. Crop proportion of 0.1 means top 10% of pixels are cut from the top. Change 0.1 to any value 
  between 0 and 1 to change the crop proportion.
* The script ignores any files that are not `.png`, `.jpg`, `.tif`, `.tiff`.
