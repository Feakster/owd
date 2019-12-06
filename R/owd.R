#' Function opens the current working directory in your computer's file manager
#'
#' @author Benjamin Feakins, \email{benjamin.feakins@ndph.ox.ac.uk}
#' 
#' @examples
#' owd()
#' 
#' @export
#'

owd <- function(...){
  if(Sys.info()['sysname'] == 'Linux'){
    system('nautilus .', ignore.stderr = T, wait = F)
  }
  if(Sys.info()['sysname'] == 'Darwin'){
    system('open .', wait = F)
  }
  if(Sys.info()['sysname'] == 'Windows'){
    system('start .', wait = F)
  }
}
