#uses dplyr & data.table
library(dplyr)
library(data.table)

#Read data, activity label & subject label files. Select Columns & Rename them
TidyDataTable <- function(file, actFile, subjFile, varSelect, varNames) {
    #Read file containing data
    dT <- fread(file)
    
    #Read file containing activity labels
    activitiesDT <- fread(actFile)
    
    #Read file containing subject (people) labels
    subjectsDT <- fread(subjFile)
    
    #Select required columns (mean and sd only)
    meanStdDT <- select(dT,varSelect)
    
    #Add "subject" and "activity" to column names
    varNames <- c("subject", "activity", varNames)
    
    #Add Acitivity & Subject variables to data table
    meanStdDT <- cbind(subjectsDT, activitiesDT, meanStdDT)
    
    #Rename Columns
    names(meanStdDT) <- varNames
    
    #Return Data Table
    meanStdDT
}

## Main Body of Script

# Read in column names
varNamesFile <- "UCI HAR Dataset/features.txt"
varnames <- fread(varNamesFile)

#Select variable names for mean and standard deviation only
#grep on "mean()" or "std()", Note "(" requires double escape "\\("
varNamesMeanStdWhich <- which(grepl("mean\\(\\)|std\\(\\)", varnames$V2))

#Create vector containing column names
varNamesMeanStd <- varnames$V2[varNamesMeanStdWhich]

#Format variable names
varNamesMeanStd <- sub("-mean\\(\\)", "Mean", varNamesMeanStd)
varNamesMeanStd <- sub("-std\\(\\)", "SD", varNamesMeanStd)
varNamesMeanStd <- sub("-", "", varNamesMeanStd)

#Read in training data
trainFile <- "UCI HAR Dataset/train/X_train.txt"
trainActivitiesFile <- "UCI HAR Dataset/train/y_train.txt"
trainSubjectFile <- "UCI HAR Dataset/train/subject_train.txt"

#Call to function to read files & return tidy data table
trainDT <- TidyDataTable(trainFile, trainActivitiesFile, trainSubjectFile, varNamesMeanStdWhich, varNamesMeanStd)

#Read in test data
testFile <- "UCI HAR Dataset/test/X_test.txt"
testActivitiesFile <- "UCI HAR Dataset/test/y_test.txt"
testSubjectFile <- "UCI HAR Dataset/test/subject_test.txt"

#Call to function to read files & return tidy data table
testDT <- TidyDataTable(testFile, testActivitiesFile, testSubjectFile, varNamesMeanStdWhich, varNamesMeanStd)

#Combine data tables
fullDT <- rbind(testDT, trainDT)

#Meaningful names of activities, 1:6
activities <- c("Walking" , "Walking Up" , "Walking Down" , "Sitting" , "Standing" , "Laying" )

#Convert activity labels from nuber (1:6) to factor
fullDT$activity <- as.factor(activities[fullDT$activity])

#Find mean of each column by subject and activity
meansDT <- fullDT %>% 
    group_by(subject, activity) %>%
    summarise_each(funs(mean))

#Write mean data table to text file
write.table(meansDT, file = "means.txt", row.names = FALSE)
