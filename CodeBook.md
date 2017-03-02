# Code Book
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAccXYZ and tGyroXYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAccXYZ and tGravityAccXYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerkXYZ and tBodyGyroJerkXYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

A Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAccXYZ, fBodyAccJerkXYZ, fBodyGyroXYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

Finally the mean of each variable was calculated grouped by subject and activity

There were 30 subjects (people)

There were 6 activities:

1. Walking

2. Walking Up (stairs)

3. Walking Down (stairs)

4. Sitting

5. Standing

6. Laying

These signals were used to estimate variables of the feature vector for each pattern:  
'XYZ' is used to denote 3-axial signals in the X, Y and Z directions.
* tBodyAccXYZ
* tGravityAccXYZ
* tBodyAccJerkXYZ
* tBodyGyroXYZ
* tBodyGyroJerkXYZ
* tBodyAccMag
* tGravityAccMag
* tBodyAccJerkMag
* tBodyGyroMag
* tBodyGyroJerkMag
* fBodyAccXYZ
* fBodyAccJerkXYZ
* fBodyGyroXYZ
* fBodyAccMag
* fBodyAccJerkMag
* fBodyGyroMag
* fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 
* Mean: Mean value
* SD: Standard deviation

The complete list of variables of each feature vector is:
* subject (1 to 30)
* activity (1 of 6)
* tBodyAccMeanX      
* tBodyAccMeanY
* tBodyAccMeanZ
* tBodyAccSDX
* tBodyAccSDY
* tBodyAccSDZ
* tGravityAccMeanX
* tGravityAccMeanY
* tGravityAccMeanZ
* tGravityAccSDX
* tGravityAccSDY
* tGravityAccSDZ
* tBodyAccJerkMeanX
* tBodyAccJerkMeanY
* tBodyAccJerkMeanZ
* tBodyAccJerkSDX
* tBodyAccJerkSDY         
* tBodyAccJerkSDZ
* tBodyGyroMeanX
* tBodyGyroMeanY
* tBodyGyroMeanZ
* tBodyGyroSDX
* tBodyGyroSDY
* tBodyGyroSDZ
* tBodyGyroJerkMeanX
* tBodyGyroJerkMeanY
* tBodyGyroJerkMeanZ
* tBodyGyroJerkSDX
* tBodyGyroJerkSDY
* tBodyGyroJerkSDZ
* tBodyAccMagMean
* tBodyAccMagSD
* tGravityAccMagMean
* tGravityAccMagSD
* tBodyAccJerkMagMean
* tBodyAccJerkMagSD
* tBodyGyroMagMean
* tBodyGyroMagSD
* tBodyGyroJerkMagMean
* tBodyGyroJerkMagSD  
* fBodyAccMeanX
* fBodyAccMeanY
* fBodyAccMeanZ
* fBodyAccSDX
* fBodyAccSDY
* fBodyAccSDZ
* fBodyAccJerkMeanX
* fBodyAccJerkMeanY      
* fBodyAccJerkMeanZ
* fBodyAccJerkSDX
* fBodyAccJerkSDY
* fBodyAccJerkSDZ
* fBodyGyroMeanX
* fBodyGyroMeanY
* fBodyGyroMeanZ
* fBodyGyroSDX     
* fBodyGyroSDY
* fBodyGyroSDZ
* fBodyAccMagMean
* fBodyAccMagSD
* fBodyBodyAccJerkMagMean
* fBodyBodyAccJerkMagSD
* fBodyBodyGyroMagMean
* fBodyBodyGyroMagSD
* fBodyBodyGyroJerkMagMean
* fBodyBodyGyroJerkMagSD

