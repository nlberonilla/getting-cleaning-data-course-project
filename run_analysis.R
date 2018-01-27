##################
#STEP 0

### GET THE DATA FROM SITE
getwd() 
setwd("./quiz")
fileurl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip" 
filedest <- "./UCI HAR Dataset.zip"
if (!file.exists(filedest)) {download.file(fileurl, destfile = filedest, mode = "wb")}
if (!file.exists("./UCI HAR Dataset")){unzip(filedest)}

### load the training data
trainingsubjects <- read.table("./UCI HAR Dataset/train/subject_train.txt")
trainingvalues <- read.table("./UCI HAR Dataset/train/X_train.txt")
trainingactivity <- read.table("./UCI HAR Dataset/train/y_train.txt")

### load the test data
testsubjects <- read.table("./UCI HAR Dataset/test/subject_test.txt")
testvalues <- read.table("./UCI HAR Dataset/test/X_test.txt")
testactivity <- read.table("./UCI HAR Dataset/test/y_test.txt")

### activity labels
activities <- read.table("./UCI HAR Dataset/activity_labels.txt")

##################
# STEP 1 merge the training and test data to create on data set

mergedata <- rbind(
  cbind(trainingsubjects, trainingvalues, trainingactivity),
  cbind(testsubjects, testvalues, testactivity)
)

##################
# STEP 2 extract measurements on the mean and standard deviation
#  for each measurement
features <- read.table("./UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)
colnames(mergedata) <- c("subject", features[, 2], "activity")
keepcolumns <- grepl("subject|activity|mean|std", colnames(mergedata))
finaldata <- mergedata[, keepcolumns]

##################
# STEP 3 use descriptive names to the activities in the data set

finaldata$activity <- factor(finaldata$activity, levels = activities[,1], 
                             labels = activities[,2])

##################
# STEP 4 labels data with descriptive variable names

cleannames <- colnames(finaldata) #assign the names to a variable
cleannames <- gsub("[\\-\\()-]", "",cleannames) #remove special characters
cleannames <- gsub("BodyBody", "Body", cleannames) #remove typo

# expand names to readable length
cleannames <- sub("^f", "frequencydomain", cleannames)
cleannames <- sub("[Aa]cc", "Accelerometer", cleannames)
cleannames <- sub("Freq", "Frequency", cleannames)
cleannames <- sub("[Gg]yro", "Gyroscope", cleannames)
cleannames <- sub("[Mm]ag", "Magnitude", cleannames)
cleannames <- sub("[Ss]td", "StandardDev", cleannames)
cleannames <- sub("^t", "timedomain", cleannames)

colnames(finaldata) <- cleannames #assign a new name

##################
# STEP 5 create an independent tidy data set with average of
#        of each variable for each activity and each subject

step5tidy <- aggregate(finaldata[,2:80], by=list(finaldata$subject, finaldata$activity),
                  FUN = mean, na.rm = TRUE) 
names(step5tidy)[names(step5tidy) == "Group.1"] <- "subject" #replace name to be tidy
names(step5tidy)[names(step5tidy) == "Group.2"] <- "activity" #replace name to be tidy
write.table(step5tidy, file = "step5tidy.txt", row.names = FALSE)
