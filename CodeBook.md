## CodeBook for the Data returned by the _run\_analysis.R_ Script

* * *

#### Transformations

The transformations performed on the original data are the following ones and can be found in the __run\_analisys.R__ script as comments: 

1. Read activity indices and labels data set  
2. Read feature names (variables)  
3. Get indices for those associated with the mean and standar deviation  
4. Create a vector with the feature names from the indices above and remove the parentesis  
5. Load the train and test data sets  
6. Load the outcome (activity) vector for the train and test data sets  
7. Load the subject vector for the train and test data sets  
8. Subset the train and test data sets by the columns stored in the featuresID vector  
9. Uses descriptive activity names to name the activities in the data set  
10. Merge train and test data  
11. Creates a second, independent tidy data set with the average of each variable for each activity and each subject  
12. Dump the two genareted data sets  

* * *

#### Data sets

As requested, two data sets were produced by the __run\_analysis.R__ script:  

Data files are of the _csv_ type.

* __tidyData.csv__ (a 10299 observations x 69 variables data frame)  
* __tidyDataAvg.csv__  (a 180 observations x 69 variables data frame)

* * *

#### Variables

> __subject__: a 1 to 30 vector (total number of participants in the study)

> __activity__: a 6 level factor vector labeling the activity performed by each participant for a given observation

>> _Labels_: LAYING SITTING STANDING WALKING WALKING\_DOWNSTAIRS WALKING\_UPSTAIRS

> __features__: the colunm names related to the _mean_ and _sd_ of the features

* tBodyAcc.mean.X  
* tBodyAcc.mean.Y  
* tBodyAcc.mean.Z  
* tBodyAcc.std.X  
* tBodyAcc.std.Y  
* tBodyAcc.std.Z  
* tGravityAcc.mean.X  
* tGravityAcc.mean.Y  
* tGravityAcc.mean.Z  
* tGravityAcc.std.X  
* tGravityAcc.std.Y  
* tGravityAcc.std.Z  
* tBodyAccJerk.mean.X  
* tBodyAccJerk.mean.Y  
* tBodyAccJerk.mean.Z  
* tBodyAccJerk.std.X  
* tBodyAccJerk.std.Y  
* tBodyAccJerk.std.Z  
* tBodyGyro.mean.X  
* tBodyGyro.mean.Y  
* tBodyGyro.mean.Z  
* tBodyGyro.std.X  
* tBodyGyro.std.Y  
* tBodyGyro.std.Z  
* tBodyGyroJerk.mean.X  
* tBodyGyroJerk.mean.Y  
* tBodyGyroJerk.mean.Z  
* tBodyGyroJerk.std.X  
* tBodyGyroJerk.std.Y  
* tBodyGyroJerk.std.Z  
* tBodyAccMag.mean  
* tBodyAccMag.std  
* tGravityAccMag.mean  
* tGravityAccMag.std  
* tBodyAccJerkMag.mean  
* tBodyAccJerkMag.std  
* tBodyGyroMag.mean  
* tBodyGyroMag.std  
* tBodyGyroJerkMag.mean  
* tBodyGyroJerkMag.std  
* fBodyAcc.mean.X  
* fBodyAcc.mean.Y  
* fBodyAcc.mean.Z  
* fBodyAcc.std.X  
* fBodyAcc.std.Y  
* fBodyAcc.std.Z  
* fBodyAccJerk.mean.X  
* fBodyAccJerk.mean.Y  
* fBodyAccJerk.mean.Z  
* fBodyAccJerk.std.X  
* fBodyAccJerk.std.Y  
* fBodyAccJerk.std.Z  
* fBodyGyro.mean.X  
* fBodyGyro.mean.Y  
* fBodyGyro.mean.Z  
* fBodyGyro.std.X  
* fBodyGyro.std.Y  
* fBodyGyro.std.Z  
* fBodyAccMag.mean  
* fBodyAccMag.std  
* fBodyBodyAccJerkMag.mean  
* fBodyBodyAccJerkMag.std  
* fBodyBodyGyroMag.mean  
* fBodyBodyGyroMag.std  
* fBodyBodyGyroJerkMag.mean  
* fBodyBodyGyroJerkMag.std  