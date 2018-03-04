#!/usr/bin/Rscript
#' draw a grid
#' @export drawSquared
drawSquared <- function(
  gridSize = 200,
  defaultBG = 'white',
  objects = c(
    tf = c(5,7),
    sok = c(2,2)
  ),
  device = "ggplot"
) {
  dat = data.frame(
    x     = 1:gridSize,
    y     = 1:gridSize,
    color = defaultBG
  )
  if (device == "ggplot") {
    p = ggplot2::ggplot(
      data = dat,
      ggplot2::aes(
        x     = x,
        y     = y,
        color = color
      ))
    p = p +
      ggplot2::geom_tile()
  }

}
objects = list(
  tf = data.frame(
    x = 5,
    y = 7,
    color = 'green4'),
  sok = data.frame(
    x = 2,
    y = 2,
    color = 'orange4'),
  rd = data.frame(
    x = 1,
    y = 1,
    color = 'gray70'
  ),
  gridsize = 10,
  bg = 'white'
)

attr(objects$sok, "name") <- "sok"
attr(objects$tf, "name") <- "tf"
attr(objects$rd, "name") <- "rd"

library(ggplot2)

renameXYgrid <- function(gridsize) {
  dat = data.frame(expand.grid(1:gridsize,1:gridsize))
  names(dat) = c('x','y')
  dat = dat[!duplicated(dat),]
  dat$color = 'white'
  dat$bldg = 'none'
  return(dat)
}

stepBldgIncr <- function(x, start, by) {
  message(paste0(
    'using\t', attr(x, 'bldg')
  ))
  full_positions = data.frame(
    expand.grid(
      x = rep(2:x$x + start[1] + 1, by[1]),
      y = rep(2:x$y + start[2] + 1, by[2])),
    color = paste(x$color),
    bldg = attr(x, 'name'),
    stringsAsFactors = FALSE)
  return(full_positions)
}

dat = renameXYgrid(50)

dat$color = "white"

pf = merge(
  renameXYgrid(50),
  stepBldgIncr(objects$tf,
               start = c(4,4),
                by = c(2,1)
               ),
  all.y = TRUE
)

dat.tf = data.frame(
  expand.grid(
    x = 50:sum(50 + objects$tf$x),
    y = 50:sum(50 + objects$tf$y)),
  color = paste(objects$tf$color),
  bldg  = attr(objects$tf, 'name'),
  stringsAsFactors = FALSE
)

pd = merge(
  dat,
  dat.tf,
  all.y = TRUE
)

p = ggplot() +
  geom_tile(
    data = pf,
    aes(
      x = x,
      y = y,
      fill = color),
    size = 1)
p + ggplot2::coord_fixed() +
  scale_x_continuous(expand = c(0,0)) +
  scale_y_continuous(expand = c(0,0)) +
  ggplot2::coord_cartesian(xlim = c(0,200), ylim = c(0,200), expand = TRUE) +
  ggplot2::scale_fill_manual(
    name = "building",
    values = unique(pd$color)) +
  ggplot2::theme(
    legend.position = "right",
    panel.background = ggplot2::element_rect(
      linetype = "solid",
      fill = "transparent",
      color = "black"
    ),
    axis.text = ggplot2::element_blank()
)

dat = data.frame(
  expand.grid(1:objects$tf$x,1:objects$tf$y)
)

tf1 = data.frame(
  x = dat$x:dat$x * 2,
  y = dat$y:dat$y * 2
)


q = geom_tile(
    data = dat
  )
