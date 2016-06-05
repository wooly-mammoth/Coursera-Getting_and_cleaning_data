

# Codebook
the Variables used in the final tidy dataset are the following:

### Subject:
Subject: the user ID which identifies the users that participated in the experiment. each id corerponds to each of the 30 users.

### Activity: measurements were taken for each activity
* Walking
* Walking Upstairs
* Walking Downstairs
* Sitting
* Standing
* Laying

# Output:
All variables are the mean of a measurement for each subject and activity.

### Variables representing the mean of time domain measurements (summarized by the mean by activity and subject):
* body acceleration mean/std along X, Y, and Z axis:
       timeBodyAcc_mean-X     
       timeBodyAcc_mean-Y     
       timeBodyAcc_mean-Z  
       timeBodyAcc_stdev-X     
       timeBodyAcc_stdev-Y     
       timeBodyAcc_stdev-Z  
* gravity acceleration mean/standard deviation along X, Y, and Z:
       timeGravityAcc_mean-X     
       timeGravityAcc_mean-Y     
       timeGravityAcc_mean-Z     
       timeGravityAcc_stdev-X     
       timeGravityAcc_stdev-Y     
       timeGravityAcc_stdev-Z 
* body jerk mean/standard deviation along X, Y, and Z:
       timeBodyAccJerk_mean-X     
       timeBodyAccJerk_mean-Y     
       timeBodyAccJerk_mean-Z     
       timeBodyAccJerk_stdev-X     
       timeBodyAccJerk_stdev-Y     
       timeBodyAccJerk_stdev-Z 
* gyroscope mean/standard deviation along X, Y, and Z:
       timeBodyGyro_mean-X     
       timeBodyGyro_mean-Y     
       timeBodyGyro_mean-Z     
       timeBodyGyro_stdev-X     
       timeBodyGyro_stdev-Y     
       timeBodyGyro_stdev-Z    
* gyroscope jerk mean/standard deviation along X, Y, and Z:
       timeBodyGyroJerk_mean-X     
       timeBodyGyroJerk_mean-Y     
       timeBodyGyroJerk_mean-Z     
       timeBodyGyroJerk_stdev-X     
       timeBodyGyroJerk_stdev-Y    
       timeBodyGyroJerk_stdev-Z
* body acceleration magnitude mean/standard deviation:
       timeBodyAccMag_mean     
       timeBodyAccMag_stdev    
* Gravity body acceleration magnitude mean/standard deviation:
       timeGravityAccMag_mean     
       timeGravityAccMag_stdev     
       timeBodyAccJerkMag_mean     
       timeBodyAccJerkMag_stdev 
* gyroscope jerk mean/standard deviation along X, Y, and Z:
       timeBodyGyroMag_mean     
       timeBodyGyroMag_stdev     
* gyroscope jerk mean/standard deviation along X, Y, and Z:
       timeBodyGyroJerkMag_mean     
       timeBodyGyroJerkMag_stdev   

### Variables representing the mean of frequency domain measurements (summarized by the mean by activity and subject):
* body acceleration mean/std along X, Y, and Z axis:
       freqBodyAcc_mean-X     
       freqBodyAcc_mean-Y     
       freqBodyAcc_mean-Z     
       freqBodyAcc_stdev-X     
       freqBodyAcc_stdev-Y     
       freqBodyAcc_stdev-Z  
* body acceleration jerk mean/std along X, Y, and Z axis:
       freqBodyAccJerk_mean-X     
       freqBodyAccJerk_mean-Y     
       freqBodyAccJerk_mean-Z     
       freqBodyAccJerk_stdev-X     
       freqBodyAccJerk_stdev-Y     
       freqBodyAccJerk_stdev-Z     
* gyroscope mean/standard deviation along X, Y, and Z:
       freqBodyGyro_mean-X     
       freqBodyGyro_mean-Y     
       freqBodyGyro_mean-Z     
       freqBodyGyro_stdev-X     
       freqBodyGyro_stdev-Y     
       freqBodyGyro_stdev-Z     
* body acceleration magnitude mean/standard deviation:
       freqBodyAccMag_mean     
       freqBodyAccMag_stdev   
* body acceleration jerk magnitude mean/standard deviation:
       freqbodyAccJerkMag_mean     
       freqbodyAccJerkMag_stdev 
* gyroscope jerk magnitude mean/standard deviation:
       freqbodyGyroMag_mean     
       freqbodyGyroMag_stdev   
* gyroscope jerk magnitude mean/standard deviation:
       freqbodyGyroJerkMag_mean     
       freqbodyGyroJerkMag_stdev  

