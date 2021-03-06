# Code Book

*'The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.*

*Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).*

*Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).'* 

That is the original description of the dataset provided. For this assignment, which created a tidy data set based on the original data provided by Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita (November 2012), a specific set of variables were selected. These are described below. 

#### These variables were the ones selected for the final tidy data set: 
*('-XYZ' is used to denote 3-axial signals in the X, Y and Z directions)*

    timeBodyAccelerometer-XYZ
    timeGravityAccelerometer-XYZ
    timeBodyAccelormeterJerk-XYZ
    timeBodyGyrometer-XYZ
    timeBodyGyrometerJerk-XYZ
    timeBodyAccelerometerMagnitude
    timeGravityAccelerometerMagnitude
    timeBodyAccelerometerJerkMagnitude
    timeBodyGyrometerMagnitude
    timeBodyGyroometerJerkMagnitude
    frequencyBodyAccelerometer-XYZ
    frequencyBodyAccelerometerJerk-XYZ
    frequencyBodyGyroometer-XYZ
    frequencyBodyAccelerometerMagnitude
    frequencyBodyAccelerometerJerkMagnitude
    frequencyBodyGyroometerMagnitude
    frequencyBodyGyroometerJerkMagnitude
  
#### The measurements were obtained from five different activities for each subject and for each variable, namely:
    WALKING
    WALKING_UPSTAIRS
    WALKING_DOWNSTAIRS
    SITTING
    STANDING
    LAYING

#### The set of measurements that were used from these signals for the final tidy data set are:
    Mean value 
    Mean frequency 
    Standard deviation
  
  The final data set created upon running the run_analysis.R script contains a summary of each variable for every subject, activity and measurement described above.
