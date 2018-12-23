library(dplyr)

##Read the datasets##
path <- "UCI HAR Dataset"

test_subject <- read.table(file.path(path, "test", "subject_test.txt"))
test_values <- read.table(file.path(path, "test", "X_test.txt"))
test_activity <- read.table(file.path(path, "test", "y_test.txt"))

train_subject <- read.table(file.path(path, "train", "subject_train.txt"))
train_values <- read.table(file.path(path, "train", "X_train.txt"))
train_activity <- read.table(file.path(path, "train", "y_train.txt"))

features <- read.table(file.path(path, "features.txt"), as.is = TRUE)
activities <- read.table(file.path(path, "activity_labels.txt"))

##Step 1. Merge training and test datasets##
test <- cbind(test_subject, test_activity, test_values)
train <- cbind(train_subject, train_activity, train_values)
data <- rbind(test, train)

##Step 4. Assign columnn names##
##Performed Step 4 first for easier troubleshooting for Step 2, mean and std extraction##
colnames(data) <- c("Subject", "Activity", features[,2])

##Step 2. Extract only measurements on means and standard deviations
mean_and_std <- grep("Subject|Activity|mean|std", colnames(data))
data_final <- data[, mean_and_std]

##Step 3. Use descriptive activity names to name the activities
data_final$Activity <- factor(data_final$Activity, levels = activities[,1], labels = activities[,2])

##Step 5. Create an independent tidy dataset with the average of each variable for each activity and each subject
means <- group_by(data_final, Subject, Activity)
means_summary <- summarise_all(means, funs(mean))

write.table(means_summary, "Averages_tidydataset.txt", row.names = FALSE)