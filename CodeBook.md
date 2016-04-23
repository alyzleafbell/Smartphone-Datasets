DATA DICTIONARY - tidydata_grouby_who_activity and average all extracted features
           
who   
    type and length: integer(2)
    meaning : the code of the volunteers who perform the experiment
    values: 1..30
    
activity
    type and lenth: string
    meaning: human activity
    values: one of the six followings("WALKING","WALKING_UPSTAIRS","WALKING_DOWNSTAIRS" "SITTING","STANDING", "LAYING") 

 1_tBodyAcc_mean()_X
    type and lenth: dbl
    meaning: average of the tBodyAcc_mean feature of a certain volunteer's certain activity 
    values: [-1,1]
 
 The following fields all have similar code description with the " 1_tBodyAcc_mean()_X",except that each field has a 
 unique statistical feature related to its field name, so only list the names here:
 2_tBodyAcc_mean()_Y                
 3_tBodyAcc_mean()_Z                 
 4_tBodyAcc_std()_X                 
 [7] "5_tBodyAcc_std()_Y"                  "6_tBodyAcc_std()_Z"                 
 [9] "41_tGravityAcc_mean()_X"             "42_tGravityAcc_mean()_Y"            
[11] "43_tGravityAcc_mean()_Z"             "44_tGravityAcc_std()_X"             
[13] "45_tGravityAcc_std()_Y"              "46_tGravityAcc_std()_Z"             
[15] "81_tBodyAccJerk_mean()_X"            "82_tBodyAccJerk_mean()_Y"           
[17] "83_tBodyAccJerk_mean()_Z"            "84_tBodyAccJerk_std()_X"            
[19] "85_tBodyAccJerk_std()_Y"             "86_tBodyAccJerk_std()_Z"            
[21] "121_tBodyGyro_mean()_X"              "122_tBodyGyro_mean()_Y"             
[23] "123_tBodyGyro_mean()_Z"              "124_tBodyGyro_std()_X"              
[25] "125_tBodyGyro_std()_Y"               "126_tBodyGyro_std()_Z"              
[27] "161_tBodyGyroJerk_mean()_X"          "162_tBodyGyroJerk_mean()_Y"         
[29] "163_tBodyGyroJerk_mean()_Z"          "164_tBodyGyroJerk_std()_X"          
[31] "165_tBodyGyroJerk_std()_Y"           "166_tBodyGyroJerk_std()_Z"          
[33] "201_tBodyAccMag_mean()"              "202_tBodyAccMag_std()"              
[35] "214_tGravityAccMag_mean()"           "215_tGravityAccMag_std()"           
[37] "227_tBodyAccJerkMag_mean()"          "228_tBodyAccJerkMag_std()"          
[39] "240_tBodyGyroMag_mean()"             "241_tBodyGyroMag_std()"             
[41] "253_tBodyGyroJerkMag_mean()"         "254_tBodyGyroJerkMag_std()"         
[43] "266_fBodyAcc_mean()_X"               "267_fBodyAcc_mean()_Y"              
[45] "268_fBodyAcc_mean()_Z"               "269_fBodyAcc_std()_X"               
[47] "270_fBodyAcc_std()_Y"                "271_fBodyAcc_std()_Z"               
[49] "294_fBodyAcc_meanFreq()_X"           "295_fBodyAcc_meanFreq()_Y"          
[51] "296_fBodyAcc_meanFreq()_Z"           "345_fBodyAccJerk_mean()_X"          
[53] "346_fBodyAccJerk_mean()_Y"           "347_fBodyAccJerk_mean()_Z"          
[55] "348_fBodyAccJerk_std()_X"            "349_fBodyAccJerk_std()_Y"           
[57] "350_fBodyAccJerk_std()_Z"            "373_fBodyAccJerk_meanFreq()_X"      
[59] "374_fBodyAccJerk_meanFreq()_Y"       "375_fBodyAccJerk_meanFreq()_Z"      
[61] "424_fBodyGyro_mean()_X"              "425_fBodyGyro_mean()_Y"             
[63] "426_fBodyGyro_mean()_Z"              "427_fBodyGyro_std()_X"              
[65] "428_fBodyGyro_std()_Y"               "429_fBodyGyro_std()_Z"              
[67] "452_fBodyGyro_meanFreq()_X"          "453_fBodyGyro_meanFreq()_Y"         
[69] "454_fBodyGyro_meanFreq()_Z"          "503_fBodyAccMag_mean()"             
[71] "504_fBodyAccMag_std()"               "513_fBodyAccMag_meanFreq()"         
[73] "516_fBodyBodyAccJerkMag_mean()"      "517_fBodyBodyAccJerkMag_std()"      
[75] "526_fBodyBodyAccJerkMag_meanFreq()"  "529_fBodyBodyGyroMag_mean()"        
[77] "530_fBodyBodyGyroMag_std()"          "539_fBodyBodyGyroMag_meanFreq()"    
[79] "542_fBodyBodyGyroJerkMag_mean()"     "543_fBodyBodyGyroJerkMag_std()"     
[81] "552_fBodyBodyGyroJerkMag_meanFreq()"
