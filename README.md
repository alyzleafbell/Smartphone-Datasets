=================================================================
Smartphone-Datasets getting and cleaning
=================================================================
1. understanding the provided collecting data

The dataset includes the following files:

- 'README.txt': introduction of the backgroud of the project and dataset

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set; 561 statistical features based on inertial signal datasets

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set;561 statistical features based on inertial signal datasets

- 'test/y_test.txt': Test labels.

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

2. analysing the data manipulating requirements 
## You should create one R script called run_analysis.R that does the following.
## 1. Merges the training and the test sets to create one data set.
## 2. Extracts only the measurements on the mean and standard deviation for each measurement.
## 3. Uses descriptive activity names to name the activities in the data set
## 4. Appropriately labels the data set with descriptive variable names.
## 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

3. data merging and cleaning 
## Task 1 : Merges the training and the test sets to create one data set.
   First read data from test dir into vectors; The vector read from "test/X_test.txt" need special transformation because there are 561 feature statistical fields in one column.Use the function separate() in package dplyr to transform feature vector into data.frame with 561 columns. Create a test dataset of class data.frame using vectors and dataframe.Create train dataset in a same way. Finally rbind  the two dataset.

## Task 2 : Extracts only the measurements on the mean and standard deviation for each measurement.
According all the feature variables list in feartures.txt, we can observe there aer rules in comumn variable names. We can find out those features related mean or standard deviation by using grep function. Then we can only extract those required columns.

## Task 3 : Uses descriptive activity names to name the activities in the data set
Read from activity_labels.txt into activity_txt vector. Use mutate function to update activity field into label text.

## Task 4: Appropriately labels the data set with descriptive variable names.
Reading variable names in features.txt into a name vector, and using gsub string function to make variables descriptive. Then update names of extracted features in merged dataset.

## Task 5 : From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
Using function group_by and summarise_each from package dplyr to implement this task.
