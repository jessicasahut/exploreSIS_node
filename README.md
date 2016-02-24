## About
This repo contains the scripts needed for local deployment of the exploreSIS dashboard.  It pulls the most recent `ui.R` and `server.R` code from the [exploreSIS](https://github.com/j-hagedorn/exploreSIS) repo and allows   local users to clean their own [Supports Intensity Scale](https://aaidd.org/publications/supports-intensity-scale#.VsU2kObNUrc) (SIS) data and explore it using the interactive [Shiny](http://shiny.rstudio.com/) interface.  

## This repo is for local deployment of a SIS dashboard
Please feel free to fork this repo if you want to clean and transform your own data to deploy a local version of the SIS dashboard.  This repo grabs updated copies of the `ui.R` and `server.R` scripts from this repo so new functionality should be updated (*and potentially new bugs as well, so test thoroughly!*)

## Usage
If you want to deploy a local version of the dashboard, please follow the steps below:

### 1. Install R and (preferably) RStudio
This code is written using (R), an open-source language for data science.  You can install it [here](https://cran.r-project.org/mirrors.html).  We also recommend installing [RStudio](https://www.rstudio.com/products/rstudio/download/) in order to use the project functionality, detailed below.

### 2. Install Git
You'll also want to install and configure Git.  The easiest way to do this is by installing [Github Desktop](https://desktop.github.com/), which is available for Mac and Windows.

### 3. Fork and clone
[Fork this repo](https://help.github.com/articles/fork-a-repo/) and then [clone the forked repo](https://help.github.com/articles/cloning-a-repository/) to your local drive.

### 4. Make a project (or set working directory)
Most of the paths in the function calls assume that the repo is the working directory.  This is accomplished by [using project functionality in RStudio](https://support.rstudio.com/hc/en-us/articles/200526207-Using-Projects), but if you want to run without RStudio you'd have add code to `setwd()`

### 5. Make changes to local variables as necessary
While much of the cleaning is completed using a standard script, you may want to modify some things to make the output more readable.  These tweaks should be put in the `housekeeping.R` file in the prep folder.

### 6. Run the app for yourself
Run the local app using `source("run_app.R")`

### 7. Deploy the app for others to use
Once you get it working well, you can deploy the application using [shinyapps.io](http://shiny.rstudio.com/articles/shinyapps.html) or with your own local [Shiny server](https://www.rstudio.com/products/shiny/shiny-server2/).

## License
We believe in freely sharing ideas and software rather than charging non-profits and governments over and over for something we create.  But we also have to guard against some taking advantage of our goodwill and to keep development of this tool in the public sphere. 
 
So we decided to publish this under the [Creative Commons Attribution – Non-Commercial – Share Alike 4.0 International License](http://creativecommons.org/licenses/by-nc-sa/4.0/). Here’s why:
* We want to promote free software for non-profits and governments.
* We do not want our work to contribute to money-making activities without some return on our investment.

If you wish to use this work to augment any endeavor that generates revenues – regardless of whether you are for-profit, non-profit or governmental – please contact [info@tbdsolutions.com](info@tbdsolutions.com) or the author of this repository for information on licensing.

Otherwise, please use what’s here – and contribute your own modifications or improvements.  

## Collaboration
If you make any changes that others might benefit from, please feel free to share-alike by submitting a pull request to this repo.

## Support
This code is provided for non-profit use, as noted above.  If you run into issues and would like some support, please e-mail [info@tbdsolutions.com](info@tbdsolutions.com). 
