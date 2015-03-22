# run_analysis.R
Getting and cleaning data programming assignment

data read from the database

    xtest : UCI HAR Dataset/test/X_test.txt
    ytest : UCI HAR Dataset/test/y_test.txt

    subjectTest : UCI HAR Dataset/test/subject_test.txt

    xtrain : UCI HAR Dataset/train/X_train.txt
    ytrain : UCI HAR Dataset/train/y_train.txt
    subjectTrain : UCI HAR Dataset/train/subject_train.txt
    features : UCI HAR Dataset/features.txt
    activityLabels : UCI HAR Dataset/activity_labels.txt

dataframes crated from merge

    activity row merge of ytest & ytrain
    subjects row merge subjectTest & subjectTrain
    x row merge xtest & xtrain
    merged_df col merge subjects,activity,x
    merged_meanstd mean or std subset from merged_df
    meansdf result of means of each subject for each activity from merged_meanstd
