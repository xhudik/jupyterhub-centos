r <- getOption("repos")
r["CRAN"] <- "http://cran.cnr.berkeley.edu/"
options(repos = r)


# Install devtools and tidyverse
install.packages("devtools")
install.packages("tidyverse")

# Install Sparklyr
devtools::install_github("rstudio/sparklyr")

# Install H20
# Remove previous versions of h2o R package
if ("package:h2o" %in% search()) detach("package:h2o", unload=TRUE)
if ("h2o" %in% rownames(installed.packages())) remove.packages("h2o")

# Next, we download R package dependencies
pkgs <- c("methods","statmod","stats","graphics",
          "RCurl","jsonlite","tools","utils")
for (pkg in pkgs) {
  if (!(pkg %in% rownames(installed.packages()))) install.packages(pkg)
}

# Download h2o package version 3.10.0.6
install.packages("h2o", type = "source",
                 #repos = "http://h2o-release.s3.amazonaws.com/h2o/rel-turing/6/R"
				  repos = "https://h2o-release.s3.amazonaws.com/h2o/rel-ueno/2/R")

# commented @20170113: doesn't seem to be a repository:
#devtools::install_github("h2oai/sparkling-water", subdir = "/r/rsparkling")

# Shiny packages
if(!require(shiny))              install.packages('shiny')
if(!require(shinyAce))           install.packages('shinyAce')
if(!require(shinybootstrap2))    install.packages('shinybootstrap2')
if(!require(shinydashboard))     install.packages('shinydashboard')
if(!require(shinytoastr))        install.packages('shinytoastr')
if(!require(shinyDND))           install.packages('shinyDND')
if(!require(ShinyItemAnalysis))  install.packages('ShinyItemAnalysis')
if(!require(shinyjs))            install.packages('shinyjs')
if(!require(shinythemes))        install.packages('shinythemes')

# RMarkdown
if(!require(rmarkdown))          install.packages('rmarkdown')
if(!require(flexdashboard))      install.packages('flexdashboard')

# Install rJava
if(!require(rJava))              install.packages('rJava')

# Setup R packages from GitHub
if(!require(plotly))        devtools::install_github("ropensci/plotly")
if(!require(rpivotTable))   devtools::install_github(c("ramnathv/htmlwidgets", "smartinsightsfromdata/rpivotTable"))
if(!require(rhandsontable)) devtools::install_github("jrowen/rhandsontable")

# AWS S3
if(!require(aws.s3))  devtools::install_github(c("hadley/xml2", "cloudyr/aws.s3"))
if(!require(iotools)) install.packages('iotools')

# R Presto
if(!require(RPresto)) install.packages('RPresto')

# Documentation tools
install.packages("roxygen2")

# Testing tools testhat
if(!require(testthat)) install.packages('testthat')

