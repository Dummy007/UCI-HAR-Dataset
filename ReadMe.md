## Project Description
A script is written to transform raw data into a tidy data. Specifically, the [UCI HAR Dataset]("http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones") is processed by this script.

This script was made for the Course Project of the course "Getting and Cleaning Data" on Coursera.

 
##Information on the original (raw) data 
###The dataset includes the following files:


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

###Notes: 

- Features are normalized and bounded within [-1,1].
- Each feature vector is a row on the text file.

For more information about this dataset, refer to the README.txt file or/and contact: activityrecognition@smartlab.ws
 
##Creating the tidy datafile
 
###Requirements
Create a R script that does the following:

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
 
###R Code
To complete the requirments listed above, use the script Run_Analysis.R and it has 5 sister functions. That is, the Run_Analysis.R function outsources its task to the following functions:

- libraries.R : loads all the libraries needed for the processing done by Run_Analysis.R.
- Get_trainDF.R: gets and combines the data in the files X_train.txt and y_train.txt into a dataframe.
-  Get_testDF.R: gets and combines the data in the files X_test.txt and y_test.txt into a data frame.
-  Get_fullDF.R: takes and combines the results of Get_trainDF and Get_testDF into a big/full data 
-  Set.labels.R: creates a data.table object where the first column contains the "old" feature labels from the tidy data frame (from requirement 3). The second column contains the "new" feature labels to be assigned to the tidy data. 

Each of the function MUST be sourced in the following format:

```source("insert_function_name_here.R")```

For example : ```source("Get_testDF.R")``` will source the Get_testDF.R function.

The tidy data resulting from running the Run_Analysis.R script can be obtained as follow:

```tidyDF <- read.table("MyTidyDF.txt")```

##Code Book

The codebook available in this repo describes the variables, the data, the transformations that are done and the clean up that was performed on the data.

 
 