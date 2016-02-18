
## TRANSFORM DATA ##

  ## Define local source of SIS data
  sis_src <- "Paste/path/to/SIS/data/here"
  
  ## Transform using standard script
  source("https://raw.githubusercontent.com/j-hagedorn/exploreSIS/master/prep/readSIS.R?token=AGvQVUtPeIyib-qjK-rozptAWl6Z0WHCks5WzlppwA%3D%3D")
  
  ## Map Medicaid IDs to current CMHSPs (and other vars) 
  ## Attribution file should be a pipe "|" delimited file containing 'mcaid_id',
  ## 'cmhsd_id' and 'as_of_dt' as the first 3 variables.
    attribution <- "Paste/path/to/attribution/file/here"
    
  ## Transform using standard script
  source("https://raw.githubusercontent.com/j-hagedorn/exploreSIS/master/prep/read_attribution.R?token=AGvQVchi8H5j23ZWiiTxl6GSlWf4MrWhks5Wzl9FwA%3D%3D")
  
  ## Apply any local transformations saved in PIHP-level script
  source("prep/housekeeping.R")
  
  ## Encrypt IDs and create scrubbed file for app!!!
  source("https://raw.githubusercontent.com/j-hagedorn/exploreSIS/master/prep/scrub.R?token=AGvQVfrvdcH3OfLmmZ5OUbeSE2ISSvzhks5WzmIowA%3D%3D")

  # Import total # needing assessment per CMHSP from local script
  source("prep/totals.R")
  
#####################################################################

## BUILD APP FROM CENTRAL REPO ##

  ## Download most recent global.R file and save in node repo
  download.file(url = "https://raw.githubusercontent.com/j-hagedorn/exploreSIS/master/global.R?token=AGvQVQCImBgvplTmTa9eVSQ3FXWpP0G9ks5WzmZHwA%3D%3D", 
                destfile = "global.R")
  
  ## Download most recent ui.R file and save in node repo
  download.file(url = "https://raw.githubusercontent.com/j-hagedorn/exploreSIS/master/ui.R?token=AGvQVcEiLxQiUt_-b9p7myBM_2x2ZjT9ks5Wzi3zwA%3D%3D", 
                destfile = "ui.R")
  
  ## Download most recent server.R file and save in node repo
  download.file(url = "https://raw.githubusercontent.com/j-hagedorn/exploreSIS/master/server.R?token=AGvQVcs9e_inEg2qdONNksdwPjlj_2gDks5WzjnMwA%3D%3D", 
                destfile = "server.R")

#####################################################################
  
## RUN APP
  
library(shiny)

# Change path to your local repo
runApp("../exploreSIS_node")

