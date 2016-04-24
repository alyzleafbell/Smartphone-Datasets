CODEBOOK

About the project data source:
==================================================================

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 
wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, 
we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments 
have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two 
sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. You can read
more detailed and recent info from https://sites.google.com/site/harsmartlab/
 

About the main used data source:
======================================
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================

- 'README.txt' : introduction to the project and data

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set with 561 statistical features based on inertial signal data.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set with 561 statistical features based on inertial signal data.

- 'test/y_test.txt': Test labels.

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 


Notes about source data in text file: 
================================================
- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

DICTIONARY of submitted dataset - tidy_avg_features.txt
====================================================================

This text file contains the data grouby who(the volunteers) and activity(walking/sitting...), 
and average all extracted features. The specifications of each field are as the followings:
           
[1] who   
    type and length: integer(2)
    meaning : the code of the volunteers who perform the experiment
    values: 1..30
    
[2] activity
    type and lenth: string
    meaning: human activity
    values: one of the six followings("WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS" "SITTING","STANDING", "LAYING") 

[3] tBodyAcc_mean_X
    type and lenth: dbl
    meaning: average of the tBodyAcc_mean feature of a certain volunteer's certain activity 
    values: [-1,1]

  There are other 65 extracted features in this text file,   all have similar code description with the above field
 "tBodyAcc_mean_X",except that each field has a unique statistical feature related to its field name.

 These fields are :

 [4] "tBodyAcc_mean_Y"           "tBodyAcc_mean_Z"           "tBodyAcc_std_X"           
 [7] "tBodyAcc_std_Y"            "tBodyAcc_std_Z"            "tGravityAcc_mean_X"       
[10] "tGravityAcc_mean_Y"        "tGravityAcc_mean_Z"        "tGravityAcc_std_X"        
[13] "tGravityAcc_std_Y"         "tGravityAcc_std_Z"         "tBodyAccJerk_mean_X"      
[16] "tBodyAccJerk_mean_Y"       "tBodyAccJerk_mean_Z"       "tBodyAccJerk_std_X"       
[19] "tBodyAccJerk_std_Y"        "tBodyAccJerk_std_Z"        "tBodyGyro_mean_X"         
[22] "tBodyGyro_mean_Y"          "tBodyGyro_mean_Z"          "tBodyGyro_std_X"          
[25] "tBodyGyro_std_Y"           "tBodyGyro_std_Z"           "tBodyGyroJerk_mean_X"     
[28] "tBodyGyroJerk_mean_Y"      "tBodyGyroJerk_mean_Z"      "tBodyGyroJerk_std_X"      
[31] "tBodyGyroJerk_std_Y"       "tBodyGyroJerk_std_Z"       "tBodyAccMag_mean"         
[34] "tBodyAccMag_std"           "tGravityAccMag_mean"       "tGravityAccMag_std"       
[37] "tBodyAccJerkMag_mean"      "tBodyAccJerkMag_std"       "tBodyGyroMag_mean"        
[40] "tBodyGyroMag_std"          "tBodyGyroJerkMag_mean"     "tBodyGyroJerkMag_std"     
[43] "fBodyAcc_mean_X"           "fBodyAcc_mean_Y"           "fBodyAcc_mean_Z"          
[46] "fBodyAcc_std_X"            "fBodyAcc_std_Y"            "fBodyAcc_std_Z"           
[49] "fBodyAccJerk_mean_X"       "fBodyAccJerk_mean_Y"       "fBodyAccJerk_mean_Z"      
[52] "fBodyAccJerk_std_X"        "fBodyAccJerk_std_Y"        "fBodyAccJerk_std_Z"       
[55] "fBodyGyro_mean_X"          "fBodyGyro_mean_Y"          "fBodyGyro_mean_Z"         
[58] "fBodyGyro_std_X"           "fBodyGyro_std_Y"           "fBodyGyro_std_Z"          
[61] "fBodyAccMag_mean"          "fBodyAccMag_std"           "fBodyBodyAccJerkMag_mean" 
[64] "fBodyBodyAccJerkMag_std"   "fBodyBodyGyroMag_mean"     "fBodyBodyGyroMag_std"     
[67] "fBodyBodyGyroJerkMag_mean" "fBodyBodyGyroJerkMag_std" 