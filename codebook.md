# Codebook for Getting and Cleaning Data

## About
This dataset contains raw readings and certain derived values collected from the embeded accelerometer and gyroscope of a Samsung Galaxy SII smartphone strapped on to the waists of 30 unique participants ad they performed 6 different activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details.

## Naming Convention
The time domain signals (prefix 'time' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. 

The acceleration signal was then separated into body and gravity acceleration signals (timeBodyAccelerometer-XYZ and tGravityAccelerometer-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (timeBodyAccelerometerJerk-XYZ and timeBodyGyroscopeJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (timeBodyAccelerometerMagnitude, timeGravityAccelerometerMagnitude, timeBodyAccelerometerJerkMagnitude, timeBodyGyroscopeMagnitude, tBodyGyroscopeJerkMagnitude). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAccelerometer-XYZ, frequencyBodyAccelerometerJerk-XYZ, frequencyBodyGyroscope-XYZ, frequencyBodyAccelerometerJerkMag, frequencyBodyGyroscopeMag, frequencyBodyGyroscopeJerkMag. 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

## Column Descriptions 

### Dimensions 

* Activityname: One of WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING

* Activity_ID: 
	1. WALKING
	2. WALKING_UPSTAIRS
	3. WALKING_DOWNSTAIRS
	4. SITTING
	5. STANDING
	6. LAYING

* Subject_ID: Unique ID of each subject

### Vector Quantities  
* Body Linear Acceleration readings mean & standard deviation 
	timeBodyAccelerometer-mean-X
	timeBodyAccelerometer-mean-Y
	timeBodyAccelerometer-mean-Z
	timeBodyAccelerometer-std-X
	timeBodyAccelerometer-std-Y
	timeBodyAccelerometer-std-Z

* Gravitation Linear Acceleration mean & standard deviation 
	timeGravityAccelerometer-mean-X
	timeGravityAccelerometer-mean-Y
	timeGravityAccelerometer-mean-Z
	timeGravityAccelerometer-std-X
	timeGravityAccelerometer-std-Y
	timeGravityAccelerometer-std-Z

* Body Linear Accelerometer jerks mean & standard deviation 
	timeBodyAccelerometerJerk-mean-X
	timeBodyAccelerometerJerk-mean-Y
	timeBodyAccelerometerJerk-mean-Z
	timeBodyAccelerometerJerk-std-X
	timeBodyAccelerometerJerk-std-Y
	timeBodyAccelerometerJerk-std-Z

* Body Gyrosocope angular acceleration readings mean & standard deviation 
	timeBodyGyroscope-mean-X
	timeBodyGyroscope-mean-Y
	timeBodyGyroscope-mean-Z
	timeBodyGyroscope-std-X
	timeBodyGyroscope-std-Y
	timeBodyGyroscope-std-Z

* Body Gyroscope angular acceleration Jerks mean  & standard deviation 
	timeBodyGyroscopeJerk-mean-X
	timeBodyGyroscopeJerk-mean-Y
	timeBodyGyroscopeJerk-mean-Z
	timeBodyGyroscopeJerk-std-X
	timeBodyGyroscopeJerk-std-Y
	timeBodyGyroscopeJerk-std-Z

### Magnitudes 

* Body Linear Acceleration magnitude mean & standard deviation
	timeBodyAccelerometerMagnitude-mean
	timeBodyAccelerometerMagnitude-std
	timeGravityAccelerometerMagnitude-mean
	timeGravityAccelerometerMagnitude-std

* Body Linear Acceleration jerk mangnitude mean & standard deviation
	timeBodyAccelerometerJerkMagnitude-mean
	timeBodyAccelerometerJerkMagnitude-std

* Body Gyrosocpic angular acceleration mean & standard deviation
	timeBodyGyroscopeMagnitude-mean
	timeBodyGyroscopeMagnitude-std

* Body Gyrosocpe Jerk angualr acceleration mean & standard deviation
	timeBodyGyroscopeJerkMagnitude-mean
	timeBodyGyroscopeJerkMagnitude-std

### Fourier Transformations / Frequency Domain Signals
#### Vector quantities
* Frequency domain linear acceleration mean, standard deviation and frequency mean
	frequencyBodyAccelerometer-mean-X
	frequencyBodyAccelerometer-mean-Y
	frequencyBodyAccelerometer-mean-Z
	frequencyBodyAccelerometer-std-X
	frequencyBodyAccelerometer-std-Y
	frequencyBodyAccelerometer-std-Z
	frequencyBodyAccelerometer-meanFreq-X
	frequencyBodyAccelerometer-meanFreq-Y
	frequencyBodyAccelerometer-meanFreq-Z

* Frequency domain Jerk body linear acceleration mean, standard deviation and frequency mean
	frequencyBodyAccelerometerJerk-mean-X
	frequencyBodyAccelerometerJerk-mean-Y
	frequencyBodyAccelerometerJerk-mean-Z
	frequencyBodyAccelerometerJerk-std-X
	frequencyBodyAccelerometerJerk-std-Y
	frequencyBodyAccelerometerJerk-std-Z
	frequencyBodyAccelerometerJerk-meanFreq-X
	frequencyBodyAccelerometerJerk-meanFreq-Y
	frequencyBodyAccelerometerJerk-meanFreq-Z

* Frequency domain linear acceleration mean, standard deviation and frequency mean
	frequencyBodyGyroscope-mean-X
	frequencyBodyGyroscope-mean-Y
	frequencyBodyGyroscope-mean-Z
	frequencyBodyGyroscope-std-X
	frequencyBodyGyroscope-std-Y
	frequencyBodyGyroscope-std-Z
	frequencyBodyGyroscope-meanFreq-X
	frequencyBodyGyroscope-meanFreq-Y
	frequencyBodyGyroscope-meanFreq-Z

### Magnitude Quantities 

Frequency domain Magnitude of acceleration, standard deviation and mean frequency of the above vector quantiies. 

	frequencyBodyAccelerometerMagnitude-mean
	frequencyBodyAccelerometerMagnitude-std
	frequencyBodyAccelerometerMagnitude-meanFreq


	frequencyBodyAccelerometerJerkMagnitude-mean
	frequencyBodyAccelerometerJerkMagnitude-std
	frequencyBodyAccelerometerJerkMagnitude-meanFreq


	frequencyBodyGyroscopeMagnitude-mean
	frequencyBodyGyroscopeMagnitude-std
	frequencyBodyGyroscopeMagnitude-meanFreq


	frequencyBodyGyroscopeJerkMagnitude-mean
	frequencyBodyGyroscopeJerkMagnitude-std
	frequencyBodyGyroscopeJerkMagnitude-meanFreq
