#!/usr/bin/Rscript
#' define a sedna object
#'
#' a sedna object contains all the information needed to comiple a report
#' these informations are all optional and can be used separately. some
#' objects must have certain attributes and may or may not break or complete
#' improperly without error.
#'
#' @param sedna_object_name the official name of the object, will define to
#' whatever the object name is. Use this to customize the official reports of
#' title.
#' @param sedna_author the author you want displayed. will default to system user
#" @sedna_company the default name for the machine you are using
#' @param render_type the type of object or objects to be rendered
#' @param sections a character vector of sections to be included. refer to details
#' for the specific default values for each type of render
#' @param style_template the style template you want to make.
#'
#' @details this function called without a defined \code{sedna_object_name} will
#' generate all of the default possibilities. Providing details to this function
#' will really unlock a lot of the customization with the software.
#'
#' @export define_sedna_object
define_sedna_object <- function(
   sedna_object_name = Sys.Date(),
   sedna_author = Sys.info()[['user']],
   sedna_company = Sys.inf()[['machine']],
   render_type = c('html','latex','shiny','rmarkdown','script'),
   style_template = c('cv','resume','startpage','raw','memo','article'),
   output_order = list(
     html = c('<html>','<head>','</head>','<body>','</body>','</html>'),
     latex = c('\\begin{document}','\\end{document)'),
     shiny - c('fluipdage','dashboard','twopanel'),
     raw = c('#!/usr/bin/bash'),
     memo = c('\\begin{document}','\\end{document}'),
     article = c('\\begin{document}','\\end{document}')
   )
                                ) {
  # need to create a different object type for each render style being created
   # create the sedna object
   sedna_object = list(
                       name = sedna_object_name,
                       author = sedna_author,
                       type = render_type,
                       template = style_template
                       )
   fill_in_text = list(
     cv = list(
       contact = c('name','title','address','phone','email','website','git','linkedin'),
       programming = c('R','PHP','Bash','HTML','latex','SQL','Python','Perl'),
       skills = c('molecular biology','statistics','labloratory practices',
                  'histology & microscopy','woodwoorking','data mining','Microsoft Office',
                  'tissue culture','research','metalworking'),
       interests = c('data science','stastistics','genetics','microbiology','machine learning',
                     'automation','data visualization','user experience','electronics'),
       conferences = c(),
       publications = c(),
       employment = c(),
       education = c()
   ),
   resume = list(
       contact = c('name','title','address','phone','email','website','git','linkedin'),
       programming = c('R','PHP','Bash','HTML','latex','SQL','Python','Perl'),
       skills = c('molecular biology','statistics','labloratory practices',
                  'histology & microscopy','woodwoorking','data mining','Microsoft Office',
                  'tissue culture','research','metalworking'),
       interests = c('data science','stastistics','genetics','microbiology','machine learning',
                     'automation','data visualization','user experience','electronics'),
       employment = c(),
       education = c()
     ),
   startpage = list(
     groups = c('search','media','finance','shop','school','learn','news','weather','social','help','sports'),
     search = c('google','duckduckgo','wikipedia','imdb','amazon','ebay','dictionary','thesuarus','urban dictionary')
   ),
   raw = list(
     extension = c(),
     description = c()
   ),
   memo = list(
     subject = c(),
     sections = c()
   ),
   article = list(
     title = c(),
     subject = c(),
     sections = c('introduction','materials and methods','results','discussion','conclusion')
   )

   )

   print(sedna_object)
   if ('html' %in% tolower(render_type)) {
      style = 'style.css' # later style name of template
      lines = c('<html>','<head>','</head>','<body>','</body>','</html>')
   }
}

message('default')
define_sedna_object()
message("startpage")
define_sedna_object("goldcase","moonvest","sedna",'html','startpage')





