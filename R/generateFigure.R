#!/usr/bin/Rscript
#' Generate a figure for inclusion in a LaTeX document
#'
#' This function writes a graphic to disk in the specified folder and returns
#' the LaTeX, markdown, or HTML code necessary to display it.
#'
#' @param figure a plot or \code{ggplot2} object, if it has the specified attributes
#' @export generateFigure
generateFigure <- function(figure) {
  if ("ggplot" %in% class(figure)) {
    message('ggplot')
  } else if ("latex" %in% class(figure)) {
    message('latex')
  }
  return()
}
