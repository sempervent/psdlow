#!/usr/bin/Rscript
#' create a piclink object
#'
#' a pic link object is a series of textless buttons for use in an HTML page,
#' but plans exist to modify this to accept a LaTeX list of pic links to align
#' out into a page for printed pdf use. the html generated here can also be used
#' in shiny apps by supplementing with the \code{HTML()} line.
#' @param links either a string, character vector, or named character vector
#' supplying the web address(es) to be linked
#' @param name the alt text and prefix of the image file name. suffixes will be
#' identified from the name and the pic assigned. defaults to the value of links
#' @param pic the pic file to be found, if not specified, it looks through the
#' \code{img\} directory where R is running and assigns that value. you may also
#' supply the path in this parameter
#' @param verbose I like to build in messages. Do you want to see them?
#'
#' @export
create_piclink <- function(links, name = links, pic = name, verbose = FALSE) {
  # check for a pic in the img file location; if found in the directory, will
  # use the proper extension otherwise specify the filename of the picture
  # this doesn't work perfectly, so make sure affiliate applications are named
  # good. perhaps someone better than me could improve this :)
  if (verbose) message('\ncreate_piclink()')
  if (length(links) == 1) {
    if (name == pic) {
      pic = find_img_pic(name)
    } else {
      if (verbose) message('no pic specified, behavior may not be as expected')
    }
    piclink = paste0(
      '<a href="',links,'">\n',
      '\t<img class="ico" src="img/', pic, '" alt="', name, '"></a>\n')
    if (verbose) message(paste('Created piclink\n',piclink))
  } else {
    numLinks = length(links)
    if (verbose) message(paste0('Detected\t\t', numLinks, '\tdifferent links\n'))
    piclink = ""
    # check to make sure that the links have names provided or is a named list
    if (is.null(names(links))) {
      if (verbose) message('names should be supplied')
      if (name == links) {
        names = links
      } else {
        if (verbose) message('well done. names will be used')
        names = name
      }
    } else {
      names = names(links)
    }
    # iterate through the multiple links
    for (i in 1:numLinks) {
      link =  links[i]
      if (verbose) message(link)
      name = names[i]
      if (verbose) message(name)
      pic = find_img_pic(name)
      piclink = paste0(piclink,
        '<a href="',link,'">\n',
        '\t<img class="ico" src="img/', pic, '" alt="', name, '"></a>\n')
    }
  }
  return(piclink)
}
