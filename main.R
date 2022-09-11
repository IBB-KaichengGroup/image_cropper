# install and load libraries
if (!("pacman" %in% installed.packages()))
  install.packages("pacman", repos="http://cran.us.r-project.org")
library("pacman")
p_load("magick")
p_load("keypress")


# user configurations
crop_prop <- 0.1


# main
image_paths <- list.files("input", recursive=TRUE)

cat(paste0("Cropping ", length(image_paths), " images...", "\n"))
for (i in 1:length(image_paths)) {
  image_path <- image_paths[i]
  extension <- strsplit(image_path, ".", fixed=TRUE)[[1]][2]
  
  if (extension %in% c("png", "jpg", "tif", "tiff")) {
    # read image
    original_image <- image_read(file.path("input", image_path))
    
    # crop image
    image_height <- image_info(original_image)$height
    pixel_bound <- as.integer(image_height*crop_prop)
    cropped_image <- image_crop(original_image, paste0("+0+", pixel_bound))
    
    # create output sub folder if necessary
    folder_name <- strsplit(image_path, "/", fixed=TRUE)[[1]][1]
    dir.create(file.path("output", folder_name), showWarnings=FALSE)
    
    # save cropped image
    output_path <- file.path("output", image_path)
    image_write(cropped_image, path=output_path, format=extension)
    
    # log positive outcome
    cat(paste0("[", i, "] Cropped: ", image_path, "\n"))
  } else {
    # log negative outcome
    cat(paste0("[", i, "] Skipped: ", image_path, "\n"))
  }
}
cat("Done!\n")
cat("Press any key to exit.")
invisible(keypress())
