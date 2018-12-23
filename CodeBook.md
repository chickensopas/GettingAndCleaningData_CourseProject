# Getting and Cleaning Data Course Project

## Data
*Human Activity Recognition Using Smartphones Dataset Version 1.0\
*source: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

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
The Averages_tidydataset.txt file contains the following variables
*`Subject`: Column 1, Subject number, from 1 -30\
*`Activity`: Column 2, Activity performed by the subject during the observation (Walking, Walking Upstairs, Walking Downstairs, Sitting, Standing, Laying\
*Average Measurements: Columns 3 - 81, Means and standards deviations of the quantities observed from the original dataset\
## Transformations
* The test and training datasets were merged into one dataset\
* The resulting table was then filtered to contain only means and standard devivations, apart from the subject and activity columns
* Activity names were transformed from numeric codes to descriptive labels
