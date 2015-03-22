# install.packages('dplyr')
library(dplyr)

# setwd("C:/Users/h40003055/OneDrive/Formation/Coursera/Data Science/03 - Getting and Cleaning Data")

# Merges the training and the test sets to create one data set.
testData <- cbind(read.table("./UCI HAR Dataset/test/X_test.txt"),
                  read.table("./UCI HAR Dataset/test/y_test.txt"),
                  read.table("./UCI HAR Dataset/test/subject_test.txt"))

trainData <- cbind(read.table("./UCI HAR Dataset/train/X_train.txt"),
                   read.table("./UCI HAR Dataset/train/y_train.txt"),
                   read.table("./UCI HAR Dataset/train/subject_train.txt"))

data <- rbind(testData, trainData)

features <- read.table("./UCI HAR Dataset/features.txt")

colnames(data) <- c(as.character(features[[2]]), "Subject", "Activity")

# Extracts only the measurements on the mean and standard deviation for each measurement. 
mean <- data[,grepl("mean", colnames(data))]
std <- data[,grepl("std", colnames(data))]

# From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
tidy<-sapply(cbind(mean, std),mean,na.rm=TRUE)
write.table(tidy, file="./tidydata.txt",row.name=FALSE)