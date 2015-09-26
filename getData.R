setwd("~/code/coursera-data-science/GettingCleaningData/project/gettingandcleaningdata")

#Creat the data directories if they don't exist
if(!file.exists("data"))
{
  dir.create("data")
}
if(!file.exists("data/tidy"))
{
  dir.create("data/tidy")
}
if(!file.exists("data/raw"))
{
  dir.create("data/raw")
}


## get the data file
dataFile <- "./data/raw/samsung.zip"
if(!file.exists(dataFile))
{
  dataFileURL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
  download.file(dataFileURL, destfile=dataFile, method = "curl")
  dataDownloadDate <- date()
}
