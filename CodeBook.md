
Data Science Specialization - Getting and Cleaning Data
==================================================================
David Tran
Course Project

## Codebook:

### Description:

1. Load libraries
2. Extract all necessary files into separate variables
3. Merge the data and labels into 1 data frame each
4. Subset the data into variables only including mean or std. Change the colnames appropriately.
5. Change label into descriptive words and merge to clean data
6. Perform tidy operations to tidy the data
7. Condense data by grouping and averaging
8. Factoring data & lower casing activities
9. Write data into txt format

## Variables:

#### Features: This is referring to what feature is doing the recording
1. tBodyAcc- 
2. tGravityAcc- 
3. tBodyAccJerk-
4. tBodyGyro-
5. tBodyGyroJerk-
6. tBodyAccMag
7. tGravityAccMag
8. tBodyAccJerkMag
9. tBodyGyroMag
10. tBodyGyroJerkMag
11. fBodyAcc-XYZ
12. fBodyAccJerk-XYZ
13. fBodyGyro-XYZ
14. fBodyAccMag
15. fBodyAccJerkMag
16. fBodyGyroMag
17. fBodyGyroJerkMag

#### Activity: This is referring to the activity that is occuring while measurements are being taken
1. walking
2. walking_upstairs
3. walking_downstairs
4. sitting
5. standing
6. laying

#### Measurement: This is the measurement type
1. mean 	- 	Mean value
2. sd 		-	Standard Deviation

#### Axis: The plane in which the measurement is being taken
1. X 		-	X Plane/axis
2. Y 		-	Y Plane/axis
3. Z 		-	Z Plane/axis

#### Average: Values are the average of the measurement row; either average of the mean or average of the standard deviation. The units are measured in m/s or m/s^2 depending on the feature.