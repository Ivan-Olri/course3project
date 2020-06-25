# Code Book

This repo explains how each part of the code works and, at the end, explains how to read in R the final txt file created that contains the tidy data.

The first part of the scrip loads the needed library for the analysis, followed by reading and naming all the files that will be used.
The second part binds each data set (train & test) first separately using 'cbind' and then together using 'rbind'.
Next, the measurements that contain only the mean and SD are selected and saved into a new data set called 'tidydata'.
The activity code is then replaced by the activity name.\
This part renames the columns using descriptive variables rather than abbreviations using 'gsub'.
Finally, a second, independent tidy data set with the average of each variable for each activity and each subject is created. This final data set is then saved as a txt file called 'Final.txt'.
To read the txt file in R, use the following code, making sure the txt file is located in the working directory:

check = read.table('Final.txt', header = T)

View(check)
