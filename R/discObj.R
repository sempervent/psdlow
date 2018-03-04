#!/usr/bin/Rscript
#' discover an object in R
#'
#' this application takes a
#' @param x the object you wish to discover
#' @export dscObj
dscObj <- function(x,... = ...) {
  classes_found = class(x)
  attributes_found = attributes(x)
  dput_out = dput(x, control = 'all')

  if (isS4(x)) {
# Evaluate an S4 Class ----------------------------------------------------
  class_type = "S4"

  } else if (length(class(x)) > 1) {
# Evaluate an multiple classes --------------------------------------------
  class_type = "multiple"

  } else {
# evaluate if not a class -------------------------------------------------
  class_type = NA

  }

# Return a list, but update this to an S4 class ---------------------------
  rl = list(
    class_type = class_type,
    classes_found = classes_found,
    dput_out = dput_out,
    attributes_found = attributes_found
  )

  return(rl)
}
