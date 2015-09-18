
Data Science Specialization - Getting and Cleaning Data
==================================================================
### David Tran
### Course Project



## Brief Description:

There is only one R script that needs to be run in order to output tidy_data.txt
The R script contains all the comments to follow along what is being performed.
In short, it reads the data, manipulates the dataset, subsets the data and performs Tidy operations.
After all data cleaning is performed, it then writes tidy_data.txt into the local working directory.

## Steps of the R script.

1. Load libraries
2. Extract all necessary files into separate variables
3. Merge the data and labels into 1 data frame each
4. Subset the data into variables only including mean or std. Change the colnames appropriately.
5. Change label into descriptive words and merge to clean data
6. Perform tidy operations to tidy the data
7. Condense data by grouping and averaging
8. Factoring data & lower casing activities
9. Write data into txt format

###Requirements:

- run_analysis.R must be in the same directory as the datasets when they are extracted

###Extracted files include:

- 'README.txt'

- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 
- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 
- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 
- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 