#===================#
#                   #
#### OWD PACKAGE ####
#                   #
#===================#

# Hidden Environment #
.env <- new.env()

# Open File Manager to Current Directory #
.env$o <- function(...){
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

