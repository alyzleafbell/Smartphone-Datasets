## getting and cleaning data
## course project
## You should create one R script called run_analysis.R that does the following.

## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive variable names.
## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

datadir <- "/Users/alyz/Documents/coursera/R/UCI HAR Dataset" ## download data unzip dir
setwd(datadir)
library(dplyr)
library(tidyr)

## Task 1 start here:
## Merges the training and the test sets to create one data set.
## read data from test dir
who <- readLines("test/subject_test.txt") ## a group of 30 volunteers 
activity <- readLines("test/y_test.txt") ## six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
features <- readLines("test/X_test.txt") ## statistical features of inertial signal data

## features has 561 fixed length fields in one column
## get prepared for separating them
ff <- as.data.frame(features) ## turn into dataframe
names(ff) <- c("allfeatures") ## set column names
## use separate function in package tidyr to get 561 columns of features
tt <-separate(ff,col=allfeatures,into=paste("feature",c(1:561)),sep=seq(from=16,to=8961,by=16))
df_features <- sapply(tt,as.numeric) ## change to numeric
## create one dataset of features from subject_test,x_test,y_test
dataset_test <- data.frame(who,activity,df_features,source="test",rowno=c(1:length(who)))

## manipulate training data in same way
who <- readLines("train/subject_train.txt") ## a group of 30 volunteers 
activity <- readLines("train/y_train.txt") ## six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
features <- readLines("train/X_train.txt") ## statistical features of inertial signal data
## features has 561 fixed length fields in one column
## get prepared for separating them
ff <- as.data.frame(features) ## turn into dataframe
names(ff) <- c("allfeatures") ## set column names
## use separate function in package tidyr to get 561 columns of features
tt <-separate(ff,col=allfeatures,into=paste("feature",c(1:561)),sep=seq(from=16,to=8961,by=16))
df_features <- sapply(tt,as.numeric) ## change to numeric
## create one dataset of features from subject_test,x_test,y_test
dataset_train <- data.frame(who,activity,df_features,source="train",rowno=c(1:length(who)))
## add 2 aided columns, identify featrue data rowno in original source text file
dataset_m <- rbind(dataset_test,dataset_train)

## Task 2 start here:
## Extracts only the measurements on the mean and standard deviation for each measurement.
ff_txt <- read.table("features.txt")[,2] ## read all descriptions of features from text
extract_idx <- grep("-mean\\(\\)|-std\\(\\)",ff_txt) ## get required fields
extract_names <- paste("feature",extract_idx,sep='.')
extract_dset <- dataset_m[,c("who","activity",extract_names,"source","rowno")]

## Task 3 starts here:
## Uses descriptive activity names to name the activities in the data set
activity_txt <- readLines("activity_labels.txt") ## read all labels of activity from text
activity_names <- substr(activity_txt,3,nchar(activity_txt))
desc_dset <- mutate(extract_dset,activity=activity_names[activity])

## Task 4 starts here:
## Appropriately labels the data set with descriptive variable names.
feature_names <- gsub('\\(\\)','',ff_txt[extract_idx])
feature_names <- gsub('-','_',feature_names)
names(desc_dset)[3:(length(names(desc_dset))-2)] <- feature_names
tidy_dset <- desc_dset

## Task 5 starts here:
## From the data set in step 4, creates a second, independent tidy data set 
## with the average of each variable for each activity and each subject.
dset <- select(desc_dset,-rowno,-source) ## could not avg these 2 columns
dset <-group_by(dset,who,activity)
avg_dset <-summarise_each(dset,funs(mean))
write.table(avg_dset,file = "tidy_avg_features.txt",row.name=FALSE)

