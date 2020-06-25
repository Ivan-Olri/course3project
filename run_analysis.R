library(dplyr)
subjecttrain = read.table('subject_train.txt',col.names = 'subject')
activitylabels = read.table("UCI HAR Dataset/activity_labels.txt",col.names = c('activitycode','activity'))
features = read.table("UCI HAR Dataset/features.txt", col.names = c('n','label'))
xtrain = read.table('X_train.txt',col.names = features$label)
ytrain = read.table('y_train.txt', col.names = 'activitycode')
subjecttest = read.table('subject_test.txt', col.names = 'subject')
xtest = read.table('X_test.txt',col.names = features$label)
ytest = read.table('y_test.txt',col.names = 'activitycode')

#Now let's bind each data set (train & test) first separately and then together.
train = cbind(subjecttrain,ytrain,xtrain)
test = cbind(subjecttest,ytest,xtest)
merged = rbind(train,test)

#Extract measurements only with mean and SD
tidydata = merged %>% 
        select(subject,activitycode,contains('mean'),contains('std')) %>%
        rename('activity' = 'activitycode')

#Replaces activity code w/activity name
tidydata$activity = activitylabels[tidydata$activity,2]

#Appropriately label the data set with descriptive variable names.
names(tidydata) = gsub('Acc','Accelerometer',names(tidydata))
names(tidydata) = gsub('Gyro','Gyroscope',names(tidydata))
names(tidydata) = gsub('Mag','Magnitude',names(tidydata))
names(tidydata) = gsub('mean()','Mean',names(tidydata))
names(tidydata) = gsub('std()','StandardDeviation',names(tidydata))
names(tidydata) = gsub('^t','Time',names(tidydata))
names(tidydata) = gsub('^f','Frequency',names(tidydata))
names(tidydata) = gsub('BodyBody','Body',names(tidydata))

#Creates a second, independent tidy data set with the average of each variable
#for each activity and each subject. Also creates a txt file for the tidy data set.

finaldata = tidydata %>% 
        group_by(subject,activity) %>%
        summarise_all(mean)
write.table(finaldata,'Final.txt', row.names = F)

