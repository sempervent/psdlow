#!/usr/bin/Rscript
#' Create HTML and CSS
#'
#' This function is used to create the static HTML and CSS files to display a
#' customized startpage
#'
#' @export generate_startpage_files
generate_startpage_files <- function(
  title = 'my start page',
  layout_style = 'simple',
  div_sections = c('main','media','shop','social','help','fun','sports','lab',
                   'learn'),
  main_links = c('gmail','live','github','forbin','rstudio','trello'),
  media_links = c('plex@home','plex@anywhere','hbo','plexpy','netflix','hulu',
                  'flixster','amazon','spotify','youtube','soundcloud','lma'),
  shop_links = c('amazon','etsy','craigslist','ebay','massdrop','woot','abe',
                 'leftlane'),
  social_links = c('facebook','linkedin','reddit','goodreads','discogs',
                   'boardgamegeek','twitter','pocket','researchgate'),
  help_links = c('stackoverflow','latex','bioinformatics','r-bloggers'),
  sports_links = c('espn','covers','volnation','volquest','tfp','watchespn'),
  lab_links = c('molarity','dilution','solution','moles','concentration',
                'molar','weigelworld','mafft','blast','ncbi'),
  fun = c('dominion','foe')
) {
  html_tag = c('<html>','</html>')
  head_tag = c('<head>','</head>')
  # change the head content to be configurable and selectable from SQL/NoSQL
  head_content = c(
    '<meta charset="utf8">',
    paste0('<title>',title,'</title>'),
    '<link href="style.css" rel="stylesheet" type="text/css">'
  )
  body_tag = c('<body>','</body>')

  # change the layout style to retrieve from SQL/NoSQL database


  html_out = paste0(
    html_tag[1],
    head_tag[1],
    paste(head_content, collapse = '\n'),
    head_tag[2],
    body_tag[1],
    body_tag[2],
    html_tag[2],
    sep = '\n'
  )
  return(html_out)


  main_links = c(
    gmail   = 'https://mail.google.com',
    live    = 'https://outlook.live.com',
    github  = 'https://github.com/',
    forbin  = '192.168.1.245',
    rstudio = '192.168.1.178:8787',
    trello  = 'https://trello.com/')

  assign_sedna <- function(
    type = c('R','LaTeX','HTML','script','dotfile'),
    name = c(),
    location = c(),
    brand = c('single','multiple','complex','minimal'),
    layout = c('trendyFart'),
    way = list(
      R = c('function','data.frame','ggplot'),
      LaTeX = c('tikz','table','figure'),
      HTML = c('header','section','piclink'),
      script = c('bash','python','python3','perl','javascript','php'),
      dotfile = c('bashrc','vimrc','zshrc','Xdefaults','Xresources','minttyrc',
                  'tmux.conf','tmux_powerline.conf','xinitrc','i3config')
    ),
    links = c(),
    section = c()
  ) {
    if (type == 'R') {
      stop('Type "R" not yet implemented')
    } else if (type == 'LaTeX') {
      stop('Type "LaTeX" not yet implemented')
    } else if (type == 'HTML') {
      if (way == 'header') {
        if (brand == 'geolocation') {
          # output HTML required to display weather based on geolocation either
          # provided as an argument or obtained through javascript/php
        }
      } else if (way == 'section') {
        if (brand == 'multiple' & layout == 'trendyFart') {
          # multiple sections and trendyFart combinations are
        }
      } else if (way == 'piclink') {
        # currently expects the names of the `links` object to be the name of both
        # the alt attribute and the filename of the image in the img directory
        # script should be able to glob out the images and
      }
    } else if (type == 'script') {
      stop('Type "script" not yet implemented')
    }
  }

  assign_sedna(type='HTML',name=NULL, location=NULL,
               brand="single",way='piclink',)
}
