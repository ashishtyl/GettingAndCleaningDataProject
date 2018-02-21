#Check if file exists 
if(!file.exists("Dataset.zip")){
  download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip","Dataset.zip")
}
#Unizp File 
if(!file.exists("UCI HAR Dataset")){
  unzip("Dataset.zip")
}

# import features & subjects files 
x_test <-read.table("UCI HAR Dataset/test/X_test.txt",header=FALSE)
x_train <- read.table("UCI HAR Dataset/train/X_train.txt",header=FALSE)

#combine test & train into 1 set
features_raw <- rbind(x_test,x_train)

# rename Columns based on feature list
feature_list<-read.table("UCI HAR Dataset/features.txt",header=FALSE)
colnames(features_raw)<-feature_list$V2

# Filter only mean and std dev feature columns 
req_featrues <- grep(".*mean()|std().*",feature_list$V2)
features_filtered <- features_raw[,req_featrues]

# import activity labels
y_train <- read.table("UCI HAR Dataset/train/y_train.txt",header=FALSE)
y_test <-read.table("UCI HAR Dataset/test/y_test.txt",header=FALSE)
labels<-rbind(y_test,y_train)
colnames(labels)<-"Activity_ID"

# merge with activity labales to get activity name 
activity_lables <-read.table("UCI HAR Dataset/activity_labels.txt",header=FALSE)
colnames(activity_lables)<-c("Activity_ID","Activityname")
labels<-merge(labels,activity_lables,by.x = "Activity_ID",by.y = "Activity_ID")

# merge features & labels 
merged<-cbind(features_filtered,labels)

# add subjects 
subjects_test <- read.table("UCI HAR Dataset/test/subject_test.txt",header=FALSE)
subjects_train <- read.table("UCI HAR Dataset/train/subject_train.txt",header=FALSE)
subjects<-rbind(subjects_test,subjects_train)
colnames(subjects)<-c("Subject_ID")

dataset <- cbind(merged,subjects)

dataset_names<-colnames(dataset) # Vector of names to clean names
dataset_names<- gsub("BodyBody","Body",dataset_names)  # correct duplication of word body
dataset_names<-gsub("tBodyAcc","timeBodyAccelerometer",dataset_names)  # expand tBodyAcc
dataset_names<-gsub("tGravityAcc","timeGravityAccelerometer",dataset_names)  # expand tGravityAcc
dataset_names<-gsub("tBodyGyro","timeBodyGyroscope",dataset_names)  # expand tBodyGyro
dataset_names<-gsub("tGravityAcc","timeGravityAccelerometer",dataset_names)  # expand tGravityAcc
dataset_names<-gsub("fBodyGyro","frequencyBodyGyroscope",dataset_names)  # expand fBodyGyro
dataset_names<-gsub("\\()","",dataset_names)  # remove brackets
dataset_names<-gsub("fBodyAcc","frequencyBodyAccelerometer",dataset_names)  # expand fBodyAcc
dataset_names<-gsub("Mag","Magnitude",dataset_names)  # expand Mag
colnames(dataset)<- dataset_names

library(dplyr)
library(magrittr)

grouped_dataset <- group_by(dataset,Activity_ID,Activityname,Subject_ID) %>%
  summarise_all("mean")

write.table(grouped_dataset,"averagedataset.txt")
