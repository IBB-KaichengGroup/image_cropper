# R Image Cropper

# User Guide

## Setup

* Ensure R is installed.
  * Download R: https://cran.r-project.org/bin/windows/base/

* You can check the latest commit with the command:

    `git clone https://github.com/IBB-KaichengGroup/image_cropper.git`

  * If you elect not to use Git, download the code repository using the following steps:
    1. Click the green `Code` button at the top of the page.
    2. Click `Download ZIP`.
    3. Unzip the folder in which ever directory on your local machine that is most convenient
    (e.g. Desktop).

* Set Windows to run `.R` files using `Rscripts.exe` upon double-click.
  1. Right-click `main.R` &#8594; Click `Open with` &#8594; Click `More apps ↓` &#8594; 
  Click `Look for another app on this PC`.
  2. Locate `Rscripts.exe`, likely in `C:\Program Files\R\R-xx.xx.xx\bin`.

## Repository Structure

* The `Input` folder is where you put images that you want cropped. There can be sub-folders within
 it.
* The `Output` folder is where the cropped images will appear. They will be in the exact same file 
structure as the original data in `Input`.
* The `main.R` file contains the code that performs cropping. Double-clicking on it initiates 
cropping and pops-up a Window Command Prompt for you to track progress.

## About `main.R`

* The `main.R` script is written to crop `x%` of pixels from the top. You can change `x` by editing
the script directly.
  1. Open `main.R` with either RStudio, R.exe, or your favourite text editor.
  2. Find the following lines of code (should be line 9):
    ```
    # user configurations
    crop_prop <- 0.1
    ```
  3. Crop proportion of `0.1` means top `10%` of pixels are cut from the top. Change `0.1` to any 
  value between `0` and `1` to change the crop proportion.
* The script ignores any files that are not `.png`, `.jpg`, `.tif`, `.tiff`.
* Previously created `Output` images with the same path will be replaced everytime `main.R` is run.
* Previously created `Output` images with different paths will not be deleted when `main.R` is run.
* `Input` images remain unmodified when `main.R` is run.
* The first time `main.R` is run, it will likely automatically install some packages. Subsequent 
times will not.
* When you clone the repository, `Input` and `Output` folders will contain cat and dog images that 
act as sample images. Feel free to delete them.
