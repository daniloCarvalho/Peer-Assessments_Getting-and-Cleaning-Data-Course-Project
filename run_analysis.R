# Load libraries
library(data.table)

# Read activity indices and labels data set 
activity_labels <- data.table(
                        read.table("./UCI HAR data set/activity_labels.txt", quote="\"", col.names=c("ID", "label")))

# Read feature names (variables)
features <- data.table(
                read.table("./UCI HAR data set/features.txt", quote="\"", col.names=c("ID", "label")))

# Get indices for those associated with the mean and standar deviation
featuresID <- grep(".*mean\\(\\)|.*std\\(\\)", features[, label])

# Create a vector with the feature names from the indices above and remove the parentesis
cnames <- features[featuresID, label]
cnames <- gsub("\\(|\\)", "", cnames)

# Load the train and test data sets
X_train <- data.table(
                read.table("./UCI HAR data set/train/X_train.txt", quote="\""))
X_test <- data.table(
                read.table("./UCI HAR data set/test/X_test.txt", quote="\""))

# Load the outcome (activity) vector for the train and test data sets:
y_train <- data.table(
                read.table("./UCI HAR data set/train/y_train.txt", quote="\"", col.names=c("activity")))
y_test <- data.table(
                read.table("./UCI HAR data set/test/y_test.txt", quote="\"", col.names=c("activity")))

# Load the subject vector for the train and test data sets:
subject_train <- data.table(
                read.table("./UCI HAR data set/train/subject_train.txt", quote="\"", col.names=c("subject")))
subject_test <- data.table(
                read.table("./UCI HAR data set/test/subject_test.txt", quote="\"", col.names=c("subject")))
                
# Subset the train and test data sets by the columns stored in the featuresID vector
X_train <- X_train[, featuresID, with=FALSE]
names(X_train) <- cnames
X_test <- X_test[, featuresID, with=FALSE]
names(X_test) <- cnames

# Uses descriptive activity names to name the activities in the data set
y_train$activity <- activity_labels[y_train$activity,]$label
y_test$activity <- activity_labels[y_test$activity,]$label

# Merge train and test data
train <- cbind(subject_train, X_train, y_train)
test <- cbind(subject_test, X_test, y_test)

data <- data.frame(rbind(train, test))

# Creates a second, independent tidy data set with the average of each variable for each activity and each subject.
final <- aggregate(data[,2:dim(data)[2]-1],
                                list(data$subject,
                                     data$activity),
                                     mean)
names(final)[1:2] <- c('subject', 'activity')

# Dump the two genareted data sets
write.csv(data, "./UCI HAR data set/tidyData.csv")
write.csv(final, "./UCI HAR data set/tidyDataAvg.csv")