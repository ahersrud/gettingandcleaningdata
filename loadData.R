#load the test data
testDataFile <- "./data/raw/UCI HAR Dataset/test/X_test.txt"
testData <- read.table(testDataFile)
testActivityFile <- "./data/raw/UCI HAR Dataset/test/y_test.txt"
testActivityData <- read.table(testActivityFile)
testSubjectFile <- "./data/raw/UCI HAR Dataset/test/subject_test.txt"
testSubjectData <- read.table(testSubjectFile)

#load the training data
trainDataFile <- "./data/raw/UCI HAR Dataset/train/X_train.txt"
trainData <- read.table(trainDataFile)
trainActivityFile <- "./data/raw/UCI HAR Dataset/train/y_train.txt"
trainActivityData <- read.table(trainActivityFile)
trainSubjectFile <- "./data/raw/UCI HAR Dataset/train/subject_train.txt"
trainSubjectData <- read.table(trainSubjectFile)

#load the labels
labelsFile <- "./data/raw/UCI HAR Dataset/features.txt"
labels <- read.table(labelsFile)

#load the activity names
activityNamesFile <- "./data/raw/UCI HAR Dataset/activity_labels.txt"
activityLabels <- read.table(activityNamesFile)



