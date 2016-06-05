#  run_analysis.R
#  read the files
setwd("Z:/SWISSCOM_AG/COURSES/eTraining_Courses/Coursera/Data_Science_Specialization/03_Getting_and_Cleaning_Data/R_wd")
#  read the downloaded input files
# url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
user_train <- read.table("./UCI_HAR_Dataset/train/subject_train.txt", header = FALSE )
user_test <- read.table("./UCI_HAR_Dataset/test/subject_test.txt", header = FALSE )
X_train <- read.table("./UCI_HAR_Dataset/train/X_train.txt", header = FALSE )
X_test <- read.table("./UCI_HAR_Dataset/test/X_test.txt", header = FALSE )
y_train <- read.table("./UCI_HAR_Dataset/train/y_train.txt", header = FALSE )
y_test <- read.table("./UCI_HAR_Dataset/test/y_test.txt", header = FALSE )
features <- read.table("./UCI_HAR_Dataset/features.txt", header = FALSE, stringsAsFactors = FALSE )
# 1. Merges the training and the test sets to create one data set.

# append test and train data

test <- cbind(user_test, y_test, X_test)
train <- cbind(user_train, y_train, X_train)
data <- rbind(test,train)

# 2. Extracts only the measurements on the mean and standard deviation for each measurement.
index <- grep("(mean|std)([^a-zA-Z])",features[,2])
indexs <- c(1,2, index+2)
dataset <- data[, indexs]

names(dataset) <- c("subject", "activity", grep("(mean|std)([^a-zA-Z])",features[,2], value= TRUE))
# library(data.table)
# setnames(dataset, c("user", "activity", grep("(mean|std)([^a-zA-Z])",features[,2], value = TRUE)))

# 3. Uses descriptive activity names to name the activities in the data set
# sapply(dataset,class)
class(dataset$activity) <- "character"
dataset$activity <- sub("1", "walking", dataset$activity)
dataset$activity <- sub("2", "walking_upstairs", dataset$activity)
dataset$activity <- sub("3", "walking_downstairs", dataset$activity)
dataset$activity <- sub("4", "sitting", dataset$activity)
dataset$activity <- sub("5", "standing", dataset$activity)
dataset$activity <- sub("6", "laying", dataset$activity)

# 4. Appropriately labels the data set with descriptive variable names.
names(dataset) <- sub("mean\\(\\)","mean", names(dataset))
names(dataset) <- sub("std\\(\\)","stdev", names(dataset))
names(dataset) <- sub("\\-","_", names(dataset))
names(dataset) <- sub("^f","freq", names(dataset))
names(dataset) <- sub("^t","time", names(dataset))
names(dataset) <- sub("BodyBody","body", names(dataset))

# dataset <- as.data.table(dataset)
library("plyr")


# 5. From the data set in step 4, creates a second, independent tidy data set 
# with the average of each variable for each activity and each subject.


colMeanswo12 <- function(data) { colMeans(data[,-c(1,2)]) }
tidy.dataset <- ddply(dataset, .(subject, activity), colMeanswo12)     


        
        # pieces <-split(dataset, list(dataset$subject, dataset$activity))
        # vs.
        #  pieces <-split(dataset, c("subject", "activity"))

write.table(tidy.dataset, "tidydataset.txt", row.names = FALSE)






