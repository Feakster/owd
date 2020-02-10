#==============================#
#                              #
#### OPEN WORKING DIRECTORY ####
#                              #
#==============================#

### Function ###
owd <- function(){
  if(Sys.info()[['sysname']] == 'Linux'){
    ## Linux ##
    # Extract System $PATH #
    Sys.path <- Sys.getenv()[['PATH']]
    Sys.path <- unlist(strsplit(Sys.path, split = ":"))
    # Possible File Managers #
    file.man <- c('nautilus', 'konqueror', 'dolphin', 'pcmanfm', 'nemo', 'thunar', 'krusader')
    # File Managers Present #
    file.man <- file.man[sapply(file.man, function(x){Sys.which(x) != ''})]
    if(length(file.man) == 0) stop('File manager not supported!')
    # File Manager Preferred in $PATH (Ties Resolved as Initial Order Above) #
    file.man <- file.man[which.min(sapply(file.man, function(x){which.max(utils::file_test("-f", file.path(Sys.path, x)))}))]
    system(paste(file.man, "."), ignore.stdout = T, ignore.stderr = T, wait = F)
  } else if(Sys.info()[['sysname']] == 'Darwin'){
    ## macOS ##
    system('open .', ignore.stdout = T, ignore.stderr = T, wait = F)
  } else if(Sys.info()[['sysname']] == 'Windows'){
    ## Windows ##
    shell.exec('.')
  } else {
    stop('Operating system not supported!')
  }
}
