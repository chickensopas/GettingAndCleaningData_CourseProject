# Getting and Cleaning Data Course Project

## Data
*Human Activity Recognition Using Smartphones Dataset Version 1.0\
*source: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

From the UCI HAR Dataset README.txt file:\\
"The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data." 

## Variables
The run_analysis.R script contains the following variables:\
*`test_subject`, `test_values`, `test_activity`, `train_subject`, `train_values`, `train_activity`,`features`, `activities`: data from the source file\
*`test`: merged test subjects, values, and activities\
*`train`: merged training subjects, values, and activities\
*`data`: merged test and training datasets\
*`mean_and_std`: index of columns with means and standard deviations, including Subject and Activity\
*`data_final`: filtered table containing subject, activity, means, and standard deviations\
*`means`: intermediate table for computing means per subject, per activity\
*`means_summary`: tidy dataset containing the average of each variable for each activity and each subject\
\
The Averages_tidydataset.txt file contains the following variables:\
*`Column 1`: Subject number, from 1 -30\
*`Column 2`: Activity performed by the subject during the observation (Walking, Walking Upstairs, Walking Downstairs, Sitting, Standing, Laying\
*`Columns 3 - 81`: Means and standards deviations of the quantities observed from the original dataset

## Transformations
* The test and training datasets were merged into one dataset\
* The resulting table was then filtered to contain only means and standard devivations, apart from the subject and activity columns
* Activity names were transformed from numeric codes to descriptive labels
