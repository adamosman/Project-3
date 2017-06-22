<<<<<<< HEAD
setwd("~/Desktop/Project 3/UCI HAR Dataset")
=======
setwd("~/Downloads/UCI HAR Dataset")
>>>>>>> parent of 7dbe283... Project 3
library(plyr)
library(data.table)

# clears the environment
rm(list = ls())

# reads the individual .txt files from both the test and train folders into seperate data frames
subTrain <- read.table('./train/subject_train.txt', header = F)
subTest <- read.table("./test/subject_test.txt", header = F)
subDt <- rbind(subTrain, subTest)
colnames(subDt) <- c('Subject')

xTrain <- read.table("./train/X_train.txt", header = F)
xTest <- read.table("./test/X_test.txt", header = F)
xDt <- rbind(xTrain, xTest)

yTrain <- read.table("./train/y_train.txt", header = F)
yTest <- read.table("./test/y_test.txt", header = F)
yDt <- rbind(yTrain, yTest)

# Reads the variable names from the feature.txt file and parses out the variables with the word 'mean' or 'std' in name.
# The parsed variable names are then stripped of the parentheses and assigned to the header of the combined X-values
features <- read.table('./features.txt')
meanSD <- grep("-mean\\(\\)|-std\\(\\)",features[,2])
x.meanSD <- xDt[,meanSD]
names(x.meanSD) <- features[meanSD,2]
names(x.meanSD) <- gsub("\\(|\\)", "", names(x.meanSD))

# Reads the activity labels and replaces the activity number with the corresponding activity label
activity <- read.table('./activity_labels.txt')
yDt[, 1] = activity[yDt[, 1], 2]
colnames(yDt) <- c('Activity')

# Combines the subject, activity label, and measurement data into one data frame. The measurement data variables are changed to more descriptive names and writes the data frame to .txt file 
dt <- cbind(subDt, yDt, x.meanSD)
names(dt) <- make.names(names(dt))
names(dt) <- gsub("^t","Time.",names(dt))
names(dt) <- gsub("^f","Frequency.",names(dt))
names(dt) <- gsub("Acc", "Acceleration", names(dt))
names(dt) <- gsub("Mag", ".Magnitude", names(dt))
names(dt) <- gsub("GyroJerk", "AngularAcceleration", names(dt))
names(dt) <- gsub("Gyro", "AngularVelocity", names(dt))
names(dt) <- gsub("\\.mean", ".Mean", names(dt))
names(dt) <- gsub("\\.std", ".StandardDeviation", names(dt))
write.table(dt, file = "mergedata.txt", row.names = F)

# Averages the measurements for each subject with respect to each type of activity and writes the new data frame to a .txt file
meanDt <- aggregate(x = dt, by = list(Activities = dt$Activity, subDt = dt$Subject), FUN = mean)
drops <- c("subDt", "Activity")
meanDt <- meanDt[, !(colnames(meanDt) %in% drops)]
write.table(meanDt, file = 'averagetidydata.txt', row.names = F)


