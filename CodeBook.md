Codebook
========================================================

<<<<<<< HEAD
Given Information
----------------------

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. 

For each record it is provided:
======================================

- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.

The dataset includes the following files:
=========================================

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.

- 'features.txt': List of all features.

- 'activity_labels.txt': Links the class labels with their activity name.

- 'train/X_train.txt': Training set.

- 'train/y_train.txt': Training labels.

- 'test/X_test.txt': Test set.

- 'test/y_test.txt': Test labels.

Examples of the labels with their descriptive variable names:
=========================================

| Original Name | Descriptive Name | Description
----------------|------------------|------------
| tBodyAcc-mean()-X | Time.BodyAcceleration.Mean.X | Average time for body acceleration in the X-direction
| tBodyAcc-mean()-Y | Time.BodyAcceleration.Mean.Y | Average time for body acceleration in the Y-direction
| tBodyAcc-mean()-Z | Time.BodyAcceleration.Mean.Z | Average time for body acceleration in the Z-direction
| tBodyAcc-std()-X | Time.BodyAcceleration.StandardDeviation.X | Standard deviation of time for body acceleration in the X-direction
| tBodyAcc-std()-Y | Time.BodyAcceleration.StandardDeviation.Y | Standard deviation of time for body acceleration in the Y-direction
| tBodyAcc-std()-Z | Time.BodyAcceleration.StandardDeviation.Z | Standard deviation of time for body acceleration in the Z-direction