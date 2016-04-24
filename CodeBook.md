DATA DICTIONARY - tidy_avg_features.txt

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