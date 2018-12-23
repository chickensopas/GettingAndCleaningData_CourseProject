# Getting and Cleaning Data Course Project
## Variables
*`test_subject`, `test_values`, `test_activity`, `train_subject`, `train_values`, `train_activity`,`features`, `activities`: data from the source file\
*`test`: merged test subjects, values, and activities\
*`train`: merged training subjects, values, and activities\
*`data`: merged test and training datasets\
*`mean_and_std`: index of columns with means and standard deviations, including Subject and Activity\
*`data_final`: filtered table containing subject, activity, means, and standard deviations\
*`means`: intermediate table for computing means per subject, per activity\
*`means_summary`: tidy dataset containing the average of each variable for each activity and each subject\
