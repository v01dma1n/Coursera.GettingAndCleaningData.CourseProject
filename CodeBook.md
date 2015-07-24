Code Book
=========



The output dataset variables represent average values of all the mean (mean()) and standard deviation (std()) varialbles of the input dataset by subject and activity.

Data processing
---------------

The generation process consisted of:   
1. Merging the training and the test sets to create one data set including subject data  
2. Naming measurement feature columns using provided codes (features.txt)  
3. Applying descriptive activity names to the activities in the data set based on activity code (activity_labels.txt)  
4. Creating an independent tidy data set with the average of each variable for each activity and each subject.  
5. Generating the output text file (no row names)  

The output datset has columns named after input datased ammended with ".avg".  
Example:   
  <b>Original variable:</b>    tBodyAcc-mean()-X     
  <b>Average value:</b>        tBodyAcc-mean()-X.avg  

Input data
----------

<b>Test data:</b>  
  subject_test.txt  
  X_test.txt  
<b>Training data:</b>  
  subject_train.txt  
  X_train.txt  
<b>Data variable names:</b>  
  features.txt  
<b>Activity descriptive name map:</b>  
  activity_labels.txt  

Output data
-----------
<b>File Name:</b>
  subject.activity.avg.txt


subject <i>- subject id (numeric)</i>  
activity.name  <i>- descriptive name of subject's activity</i>  
tBodyAcc-mean()-X.avg  
tBodyAcc-std()-X.avg  
tBodyAcc-mean()-Y.avg  
tBodyAcc-std()-Y.avg  
tBodyAcc-mean()-Z.avg  
tBodyAcc-std()-Z.avg  
tGravityAcc-mean()-X.avg  
tGravityAcc-std()-X.avg  
tGravityAcc-mean()-Y.avg  
tGravityAcc-std()-Y.avg  
tGravityAcc-mean()-Z.avg  
tGravityAcc-std()-Z.avg  
tBodyAccJerk-mean()-X.avg  
tBodyAccJerk-std()-X.avg  
tBodyAccJerk-mean()-Y.avg  
tBodyAccJerk-std()-Y.avg  
tBodyAccJerk-mean()-Z.avg  
tBodyAccJerk-std()-Z.avg  
tBodyGyro-mean()-X.avg  
tBodyGyro-std()-X.avg  
tBodyGyro-mean()-Y.avg  
tBodyGyro-std()-Y.avg  
tBodyGyro-mean()-Z.avg  
tBodyGyro-std()-Z.avg  
tBodyGyroJerk-mean()-X.avg  
tBodyGyroJerk-std()-X.avg  
tBodyGyroJerk-mean()-Y.avg  
tBodyGyroJerk-std()-Y.avg  
tBodyGyroJerk-mean()-Z.avg  
tBodyGyroJerk-std()-Z.avg  
tBodyAccMag-mean().avg  
tBodyAccMag-std().avg  
tGravityAccMag-mean().avg  
tGravityAccMag-std().avg  
tBodyAccJerkMag-mean().avg  
tBodyAccJerkMag-std().avg  
tBodyGyroMag-mean().avg  
tBodyGyroMag-std().avg  
tBodyGyroJerkMag-mean().avg  
tBodyGyroJerkMag-std().avg  
fBodyAcc-mean()-X.avg  
fBodyAcc-std()-X.avg  
fBodyAcc-mean()-Y.avg  
fBodyAcc-std()-Y.avg  
fBodyAcc-mean()-Z.avg  
fBodyAcc-std()-Z.avg  
fBodyAccJerk-mean()-X.avg  
fBodyAccJerk-std()-X.avg  
fBodyAccJerk-mean()-Y.avg  
fBodyAccJerk-std()-Y.avg  
fBodyAccJerk-mean()-Z.avg  
fBodyAccJerk-std()-Z.avg  
fBodyGyro-mean()-X.avg  
fBodyGyro-std()-X.avg  
fBodyGyro-mean()-Y.avg  
fBodyGyro-std()-Y.avg  
fBodyGyro-mean()-Z.avg  
fBodyGyro-std()-Z.avg  
fBodyAccMag-mean().avg  
fBodyAccMag-std().avg  
fBodyBodyAccJerkMag-mean().avg  
fBodyBodyAccJerkMag-std().avg  
fBodyBodyGyroMag-mean().avg  
fBodyBodyGyroMag-std().avg  
fBodyBodyGyroJerkMag-mean().avg  
fBodyBodyGyroJerkMag-std().avg 

