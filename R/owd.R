#' Function opens the current working directory in your computer's file manager
#'
#' @author Benjamin Feakins, \email{benjamin.feakins@ndph.ox.ac.uk}
#' 
#' @examples
#' owd()
#' 
#' @export
#'

### owd() ###
owd <- function(){
  if(Sys.info()[['sysname']] == 'Linux'){
    ## Linux ##
    # Extract System $PATH #
    Sys.path <- system('echo $PATH', intern = T)
    Sys.path <- strsplit(Sys.path, split = ":")[[1]]
    # Possible File Managers #
    file.man <- c('nautilus', 'konqueror', 'dolphin', 'pcmanfm', 'nemo', 'thunar', 'krusader')
    # File Managers Present #
    file.man <- file.man[sapply(file.man, function(x){!system(paste('which', x), ignore.stdout = T, ignore.stderr = T)})]
    if(length(file.man) == 0) stop('File manager not supported!')
    # File Manager Preferred in $PATH (Ties Resolved as Order Above) #
    file.man <- file.man[which.min(sapply(file.man, function(x){which.max(file_test("-f", file.path(Sys.path, x)))}))]
    system(paste(file.man, "."), ignore.stdout = T, ignore.stderr = T, wait = F)
  } else if(Sys.info()[['sysname']] == 'Darwin'){
    ## macOS ##
    system('open .', ignore.stdout = T, ignore.stderr = T, wait = F)
  } else if(Sys.info()[['sysname']] == 'Windows'){
    ## Windows ##
    system('start .', ignore.stdout = T, ignore.stderr = T, wait = F)
  } else {
    stop('Operating system not supported!')
  }
}
