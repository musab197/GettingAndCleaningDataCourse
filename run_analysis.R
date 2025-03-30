## SETTING WORKING DIRECTORY
setwd("D:/Musab_data/Work_Dir_R/Getting and Cleaining Data_Course")

## 2. DOWNLOADING AND UNZIPPING DATA
download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", "Dataset.zip", mode = "wb")
  unzip("Dataset.zip")

  
## 3. LOADING DATA
features <- read.table("UCI HAR Dataset/features.txt")
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt", col.names = c("ActivityID", "Activity"))
  
## LoadING training and test data
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
x_train <- read.table("UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
  
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
x_test <- read.table("UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("UCI HAR Dataset/test/y_test.txt")

## 4. MERGING DATA
subject <- rbind(subject_train, subject_test)
x_data <- rbind(x_train, x_test)
y_data <- rbind(y_train, y_test)
data <- cbind(subject, y_data, x_data)

## 5. EXTRACTING MEAN AND STANDARD DEVIATION
mean_std_columns <- grep("mean\\(\\)|std\\(\\)", features$V2)
data <- data[, c(1, 2, mean_std_columns + 2)] # +2 to adjust for subject and activity columns

## 6. ADDING DESCRIPTIVE ACTIVITY NAMES
colnames(data)[1:2] <- c("Subject", "ActivityID")
data <- merge(data, activity_labels, by = "ActivityID")
data <- data[order(data$Subject, data$Activity), ]

## 7. CLEANING VARIABLE NAMES
names(data) <- gsub("^t", "Time", names(data))
names(data) <- gsub("^f", "Frequency", names(data))
names(data) <- gsub("Acc", "Accelerometer", names(data))
names(data) <- gsub("Gyro", "Gyroscope", names(data))
names(data) <- gsub("Mag", "Magnitude", names(data))
names(data) <- gsub("BodyBody", "Body", names(data))

## 8. CREATING TIDY DATASET WITH AVERAGES
library(dplyr)
tidy_data <- data %>%
  group_by(Subject, Activity) %>%
  summarise(across(everything(), mean))

## 9. SAVING AND VIEWING TIDY DATASET
write.table(tidy_data, "tidy_dataset.txt", row.names = FALSE)
dim(tidy_data)
View(tidy_data)
