# README: Getting and Cleaning Data Project

This ReadME file states the files present in the GitHub repository. Additionally, it explains how each part of the run_analysis.R script works and, at the end, explains how to read in R the txt file created that contains the final tidy data. 


### Files included:
1. run_analysis.R, which contains the code used to create the tidy data set.
2. CodeBook, which explains the variables
3. This README file.

#### The run_analysis.R script does the following:

1. The first part of the scrip loads the needed library for the analysis, followed by reading and naming all the files that will be used.
2. The second part binds each data set (train & test) first separately using 'cbind' and then together using 'rbind'.
3. Next, the measurements that contain only the mean and SD are selected and saved into a new data set called 'tidydata'.
4. The activity code is then replaced by the activity name.\
5. This part renames the columns using descriptive variables rather than abbreviations using 'gsub'.
6. Finally, a second, independent tidy data set with the average of each variable for each activity and each subject is created. This final data set is then saved as a txt file called 'Final.txt'.

To read the txt file in R, use the following code, making sure the txt file is located in the working directory:
> check  = read.table('Final.txt', header = T)

> View(check)

