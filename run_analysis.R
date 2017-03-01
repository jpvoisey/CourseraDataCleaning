library(dplyr)
library(data.table)

TidyDataTable <- function(file, actFile, subjFile, varSelect, varNames) {
    dT <- fread(file)
    activitiesDT <- fread(actFile)
    subjectsDT <- fread(subjFile)
    
    meanStdDT <- select(dT,varSelect)
    names(meanStdDT) <- varNames
    
    meanStdDT$subject <- activitiesDT
    meanStdDT$activity <- subjectsDT 
    meanStdDT
}

varNamesFile <- "UCI HAR Dataset/features.txt"
varnames <- fread(varNamesFile)
varNamesMeanStdWhich <- which(grepl("mean|std", varnames$V2))
varNamesMeanStd <- varnames$V2[varNamesMeanStdWhich]

trainFile <- "UCI HAR Dataset/train/X_train.txt"
trainActivitiesFile <- "UCI HAR Dataset/train/y_train.txt"
trainSubjectFile <- "UCI HAR Dataset/train/subject_train.txt"

trainDT <- TidyDataTable(trainFile, trainActivitiesFile, trainSubjectFile, varNamesMeanStdWhich, varNamesMeanStd)

testFile <- "UCI HAR Dataset/test/X_test.txt"
testActivitiesFile <- "UCI HAR Dataset/test/y_test.txt"
testSubjectFile <- "UCI HAR Dataset/test/subject_test.txt"

testDT <- TidyDataTable(testFile, testActivitiesFile, testSubjectFile, varNamesMeanStdWhich, varNamesMeanStd)

fullDT <- rbind(testDT, trainDT)
