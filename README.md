# gettingandcleaningdata
Please see CoodBook.md for a description on how to generate the desired data as well as the data definitions, etc. 

# File Descriptions
* getData.R : This R script can be used to download the raw data file and stores it in the data/raw directory as samsung.zip
* loadData.R : This R script is used to load the raw data files into R for processing
* generateCleanColumnNames.R : This R script contains a function that is used to generate clean column names for the data set
* run_analysis.R : This R Script generates a clean and tidy data set as described in CodeBook.md. Uses sources loadData.R and generateCleanColumnNames.R

# Data Directory
The data directory has 2 sub-directories: 

* raw: The raw directory contains the raw files.
* tidy: The tidy directory contains the transformed files.
