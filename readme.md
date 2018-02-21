#Peer-graded Assignment: Getting and Cleaning Data Course Project

This folder contains the 'run_analysis.R' script that looks for a zipped folder "dataset.zip" and downloads the file from the URL: 


if not found. 

It then checks for an unzipped folder "UCI HAR Dataset", and unzips dataset.zip in it's absence. 

It merges the test & train feature sets, subject_id,  the y labels, and assigns the activity name to each activity id based on the mapping in the "activity_labels.txt" file. 

It then removes all non mean and standard deviation columns, cleans the column names, and finally averages all features by subject & activiy which is written to a file "averagesdataset.txt"

This script makes use of the dplyr package. 