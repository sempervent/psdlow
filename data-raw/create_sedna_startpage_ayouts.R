#!/usr/bin/Rscript
#' define sedna_startpage_layouts
#'
sedna_startpage_layouts = list(
  simple = list(
    divs = c(
      ids = c('header','sections','boxes'),
      classes = c('section','iconHeader','iconLinks','box')
    ),
    style = 'simple.css'
  ),
  trendyFart = list(
    divs = c(
      ids = c('header','sections','boxes'),
      classes = c('section','iconHeader','iconLinks','box')
    ),
    style = 'trendyFart.css'
  ),
  minimal = list(
    divs = c(
      ids = c('header','sections','boxes'),
      classes = c('section','textHeader','textLinks','box')
    ),
    style = 'minimal.css'
  ),
  vaporwave = list(
    divs = c(
      ids = c('header','sections','boxes'),
      classes = c('section','iconHeader','iconLinks','box')
    ),
    style = 'vaporwave.css'
  )
)

sedna_html_common <- list(
  html_tags = c('<html>','</html'),
  head_tags = c('<head>','</head>'),
  meta_tags = c('<meta charset="utf8">'),
  title_tags = c('<title>','</title>'),
  body_tags = c('<body>','</body>')
)

saveRDS(sedna_html_common, 'data/sedna_html_common.rds')
saveRDS(sedna_startpage_layouts, 'data/sedna_startpage_layouts.rds')

