
## TRANSFORM DATA ##

  ## Define local source of SIS data
  sis_src <- "C:/Users/sahutj/Box Sync/(DD admin) DD outcomes/code/exploreSIS_node/data/SISexport.csv"
  
  # sis_full gets passed to the readSIS.R script
  sis_full <- read.csv(sis_src, colClasses = c("sis_cl_medicaidNum" = "character"))
  
  ## Transform using standard script
  source("https://raw.githubusercontent.com/jessicasahut/exploreSIS/master/prep/readSIS.R")
  
  ## Map Medicaid IDs to current CMHSPs (and other vars) 
  ## Attribution file should be a pipe "|" delimited file containing 'mcaid_id',
  ## 'cmhsd_id' and 'as_of_dt' as the first 3 variables.
    attribution <- "C:/Users/sahutj/Box Sync/(DD admin) DD outcomes/data/SIS_attr_file.txt"
    
  ## Transform using standard script
  source("https://raw.githubusercontent.com/j-hagedorn/exploreSIS/master/prep/read_attribution.R")
  
  ## Apply any local transformations saved in PIHP-level script
  source("prep/housekeeping.R")
  
  ## Encrypt IDs and create scrubbed file for app!!!
  source("https://raw.githubusercontent.com/j-hagedorn/exploreSIS/master/prep/scrub.R")

  # Import total # needing assessment per CMHSP from local script
  source("prep/totals.R")
  
#####################################################################

## BUILD APP FROM CENTRAL REPO ##

  ## Download most recent global.R file and save in node repo
  download.file(url = "https://raw.githubusercontent.com/j-hagedorn/exploreSIS/master/global.R", 
                destfile = "global.R")
  
  ## Download most recent ui.R file and save in node repo
  download.file(url = "https://raw.githubusercontent.com/j-hagedorn/exploreSIS/master/ui.R", 
                destfile = "ui.R")
  
  ## Download most recent server.R file and save in node repo
<<<<<<< HEAD
  download.file(url = "https://raw.githubusercontent.com/j-hagedorn/exploreSIS/master/server.R", 
=======
    download.file(url = "https://raw.githubusercontent.com/j-hagedorn/exploreSIS/master/server.R", 
>>>>>>> origin/master
                destfile = "server.R")

#####################################################################
  
## RUN APP
# Change path to your local repo
runApp("C:/Users/sahutj/Box Sync/(DD admin) DD outcomes/code/exploreSIS_node")



