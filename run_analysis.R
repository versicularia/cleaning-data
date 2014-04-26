require(plyr)

## Setting file paths
mainFolder     <- "UCI HAR Dataset"
actvNames      <- "activity_labels.txt"
featureNames   <- "features.txt"
trainFolder    <- "train"
trainActv      <- "y_train.txt"
trainSubj      <- "subject_train.txt"
trainData      <- "X_train.txt"
testFolder     <- "test"
testActv       <- "y_test.txt"
testSubj       <- "subject_test.txt"
testData       <- "X_test.txt"

## Check if the data is in the working directory
## If not - download and/or unzip it
print("I'm going to check you have the data I need...")
if(!file.exists(mainFolder)) {
        print("Oops, the 'UCI HAR Dataset' subfolder is missing")
        print("Perhaps you have the zip-package?")
        source("download_data.R")
        DownloadData() 
} else {
        print("Yes you do!")
}
print("I'm now going to process the data, please wait a little bit...")
## Loading the activities labels for the train and test set and merging them
uciTrainActiv <- read.table(file.path(mainFolder, trainFolder, trainActv),
                            col.names = "activity")
uciTestActiv  <- read.table(file.path(mainFolder, testFolder, testActv),
                           col.names = "activity")
uciActivity   <- rbind(uciTrainActiv, uciTestActiv)

## Loading the data linking the activity label to its name
## Descriptively naming the train and test activities
uciActivNames <- read.table(file.path(mainFolder, actvNames),
                            col.names = c("label", "name"))
uciActivity$activity <- as.factor(uciActivity$activity)
levels(uciActivity$activity) <- factor(uciActivNames$name)

## Loading and merging train and test subjects
uciTrainSubj <- read.table(file.path(mainFolder, trainFolder, trainSubj),
                           col.names = "subject")
uciTestSubj  <- read.table(file.path(mainFolder, testFolder, testSubj),
                          col.names = "subject")
uciSubj      <- rbind(uciTrainSubj, uciTestSubj)

## Loading feature names
## Selecting only those that contain "-mean()" or "-std()"
## Obtaining the indices of the selected feature names
uciFeatures <- read.table(file.path(mainFolder, featureNames), 
                           col.names = c("index", "name"))
namesMeanSd <- grep("\\-mean\\(\\)|\\-std\\(\\)", uciFeatures$name, value=TRUE)
indexMeanSd <- which(uciFeatures$name %in% namesMeanSd)

## Cleaning the measurement names to adhere to R naming standards
namesMeanSd <- make.names(namesMeanSd)
namesMeanSd <- sub("\\.\\.|\\.$", "", namesMeanSd)
namesMeanSd <- sub("BodyBody", "Body", namesMeanSd)

## Loading the train and test measurements datasets and merging them
uciTrainData <- read.table(file.path(mainFolder, trainFolder, trainData))
uciTestData  <- read.table(file.path(mainFolder, testFolder, testData))
uciData      <- rbind(uciTrainData, uciTestData)

## Creating a subset of columns corresponding to previously selected features
## and naming the variables
uciSubset    <- subset(uciData, select = indexMeanSd)
colnames(uciSubset) <- namesMeanSd

## Creating a dataset with subject indices, descriptive activity labels
## and selected feature measurements, then counting the number of columns.
uci     <- cbind(uciSubj, uciActivity, uciSubset)
numVars <- dim(uci)[2]
print("Processing complete")
## Computing the averages of measurements by subject and activity and creating 
## a new dataset with these values
## Saving the tidy dataset as a text file
uciTidy <- ddply(uci, .(subject, activity),
                 function(x) colMeans(x[, 3:numVars]))
print("Saving the tidy dataset...")
write.table(uciTidy, "TidyDataset.txt", sep="\t")
print("TidyDataset.txt had been saved")
print("Done! ^_^")