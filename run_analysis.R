library(data.table)
library(dplyr)

#load the data
source("loadData.R")

#load the function to generate clean column names
source("generateCleanColumnNames.R")

#Find column indices to use in the data set.  The label name contains mean or std
columnsToUse <- grep("mean|std|Mean", labels$V2)

#Get only the columns we care about
testData <- testData[, columnsToUse]
trainData <- trainData[, columnsToUse]
columnNames <- labels$V2
columnNames <- columnNames[columnsToUse]

#We no longer need the labels data so remove it
rm(labels)

##Cleanup the column names
columnNames <- generateCleanColumnNames(columnNames)

##Add the column names to the data
colnames(testData) <- columnNames
colnames(trainData) <- columnNames

activityColName <- c("Activity")
colnames(testActivityData) <- activityColName
colnames(trainActivityData) <- activityColName

subjectColName <- c("SubjectID")
colnames(testSubjectData) <- subjectColName
colnames(trainSubjectData) <- subjectColName

activityColNames <- c("Code", "Name")
colnames(activityLabels) <- activityColNames

##Merge the activity data with the observations
testData <- cbind(testActivityData, testData)
trainData <- cbind(trainActivityData, trainData)

##Merge the subject data with the observations
testData <- cbind(testSubjectData, testData)
trainData <- cbind(trainSubjectData, trainData)

##Merge the Data
mergedData <- rbind(testData,trainData)

##Repace Activity Codes with Activity Names
for (i in 1:6 ) {
  mergedData$Activity <- gsub(activityLabels$Code[i], activityLabels$Name[i], mergedData$Activity)
}

# From the data set created in the previous step, 
# creates a second, independent tidy data set with the average of 
# each variable for each activity and each subject.
averageValuesByPersonAndActivity <- DT[,lapply(.SD, mean), by = c("SubjectID", "Activity")]

# Rename the columns so that they include the word average
avgColumns = colnames(averageValuesByPersonAndActivity)
avgColumns <- gsub("^", "average.", avgColumns)
avgColumns[1] <- "SubjectID"
avgColumns[2] <- "Activity"
colnames(averageValuesByPersonAndActivity) <- avgColumns

## Order the Data By Subject and Activity
averageValuesByPersonAndActivity <- arrange(averageValuesByPersonAndActivity, SubjectID, Activity)

# Write the table to a file
write.table(averageValuesByPersonAndActivity, file="data/tidy/averages.txt", row.name=FALSE)




  
  



