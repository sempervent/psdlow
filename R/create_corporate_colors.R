#!/usr/bin/Rscript
#' Create a corporate color scheme
#'
#' This funciton will create a colorscheme for graphics, including tables and
#' plots as well as section headings
#'
#' @export create_corporate_colors
create_corporate_colors <- function(
  factor_colors = c(
    'red' = "#d11141",
    "green" = '#00b260',
    "blue" = '#01afdc',
    "yellow" = '#f37735',
    "orange" = '#b301e3'
  )
) {
  facColors = factor_colors

  return(facColors)
}
