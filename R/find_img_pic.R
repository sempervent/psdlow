#!/usr/bin/Rscript
#' find an img pic in the image directory
#'
#' this function finds a close match using grep to the files in a directory
#' @param img the possible name of the image
#' @param dir where the image file should be searched. defaults to img/
#'
#' @export find_img_pic
find_img_pic <- function(img, dir = 'img/' ) {
  return(grep(img, list.files(path = dir), value = TRUE))
}
