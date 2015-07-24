# Getting and Cleaning Data Course Project

# You should create one R script called run_analysis.R that does the following. 
# 1. Merges the training and the test sets to create one data set.
# 2. Extracts only the measurements on the mean and standard deviation for each measurement. 
# 3. Uses descriptive activity names to name the activities in the data set
# 4. Appropriately labels the data set with descriptive variable names. 
# 5. From the data set in step 4, creates a second, independent tidy data set 
#    with the average of each variable for each activity and each subject.

data.path <- "./Course Project/data/"

# 1. Merge the training and the test sets to create one data set.
# 1.1 Load training data
dta.train.x = read.table(paste0(data.path, "train/X_train.txt"))
dta.train.y = read.table(paste0(data.path, "train/y_train.txt"))
dta.train.subject = read.table(paste0(data.path, "/train/subject_train.txt"))
# str(dta.train.x)

# 1.2 Load test data
dta.test.x = read.table(paste0(data.path, "test/X_test.txt"))
dta.test.y = read.table(paste0(data.path, "test/y_test.txt"))
dta.test.subject = read.table(paste0(data.path, "test/subject_test.txt"))

# 1.3 Merge the training and test datasets
dta.all.x <- rbind(dta.train.x, dta.test.x)
dta.all.y <- rbind(dta.train.y, dta.test.y)

# 1.4 Merge subject data
dta.all.subject <- rbind(dta.train.subject, dta.test.subject)
dta.all <- cbind(dta.all.x, dta.all.y, dta.all.subject)

# 1.5 Load activity codes
activities = read.table(paste0(data.path, "activity_labels.txt"), sep = " ")

# 2. Name measurement feature columns using provided codes
# 2.1 Load measurement features
features = read.table(paste0(data.path, "features.txt"))
# head(features, 10)
# str(features)

# 2.2 Rename columns
names(dta.all) <- features[,2]
names(dta.all)[ncol(dta.all) - 1] <- "activity.code"
names(dta.all)[ncol(dta.all)] <- "subject"
# str(dta.all)


# 3. Appply descriptive activity names to the activities in the data set
# activities
names(activities) <- c("activity.code", "activity.name")

all.activities <- merge(all.activities, activities)

if (any(is.na(all.activities))) {
  stop("N.A. values detected in the output dataset")
}


# 4. Create an independent tidy data set with the average of each variable 
# for each activity and each subject.

library(reshape2)

# 4.1 calculate molten dataframe by subject and activity
activites.molten <- melt(data = all.activities, 
                         id = c("subject","activity.name"),
                         measure.vars = colnames(all.activities[,grep("mean[(][)]|std[(][)]", colnames(all.activities))]))
str(activites.molten)

# 4.2 calculate mean value by by subject and activity while casting molten dataframe into multiple variable dataframe
activities.avg <- dcast(activites.molten, subject + activity.name ~ variable, mean)
str(activities.avg)

head(activities.avg, 10)

# 4.3 Rename columns to indicate that those are averages
names(activities.avg)[3: ncol(activities.avg)] <- paste(names(activities.avg)[3: ncol(activities.avg)], "avg", sep = ".")



# 5. Generate the output text file (no row names)
write.table(activities.avg, paste0(data.path, "subject.activity.avg.txt"), row.names = FALSE)


# end of file
