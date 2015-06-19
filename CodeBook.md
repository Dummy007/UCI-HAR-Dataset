
## The Data Set

The UCI HAR Dataset is adataset that was made by recordings the dailing living activities of subjects who carried a waist-mounted smartphone with embedded inertial sensors. An in depth description of the procedure is available at http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones and in the README.txt file. 


## Processing
The Run_Analysis.R script processes the data in two stages:

- It generates a simplified version of the original data by extracting only the mean and standard deviation feauture measurements(66 feature measurements out of the 561 feature measurments from the original data). The outcome is a data frame that has a dimension of 10299 observations X 68 features (66 feature measurements and 2 ID features:activity and subject).
To accomplish this,
   
    0. The libraries script loads the libraries required for data processing.
    1. The Get_trainDF script accesses the train folder and column binds the data in X_train.txt, subject_train.txt, and y_train.txt into a data frame of train data.
    
    2. Similarly, the Get_testDF script accesses the test folder and column binds the data in X_test.txt, subject_test.txt, and y_test.txt into a data frame of test data. 
    
    3. The Get_fullDF script row binds the two dataframes from the two previous steps. The ID variables Activity and Subject are recoded as factor variables.
    
    4. Using the matching function ```grep```, the feature measurements of interests are extracted. That is, the script scans the column names and selects the names that contain either ```mean()``` or ``` std()```. The selected column names are now used to subset the data frame from (3) into a data frame with only 66 feature variables plus 2 ID features: subject(identifying the individual) and activity(identifying the activity performed).

- Then, it generates a reduced data frame from stage 1 by calculating the mean of each feature variable for each (activity,subject) pair,
  
       0. The levels of the variable Activity are changed to the new labels: 1 is  mapped to Laying, 2 is mapped to Sitting, 3 is mapped to Standing, 4 is mapped to Walking, 5 is mapped to Walking Downstairs, and 6 is mapped to Walking Upstairs This mapping is based on the information in the  activity_labels.txt  file. 
          The column names are also changed to new names that are obtained from the Set.labels script, which returns the old and new column names in a data.table object. Hence, the original names are kept and not completely erased (in case one changes his/her mind, he/she can always go back to using the original column names. The Set.labels script can also be modified to one's preference.). The object returned by Set.labels can obtained and viewed in the following way: ```column.labels.table <- Set.Labels(); column.labels.table``` and the new column labels can be obtained this way : ```new.labels <- column.labels.table[[2]]```. Please refer the features_info.txt file in the dataset for the explanation of the 66 feature variables in the table. 
       
       1. The data frame is grouped by subject AND activity. Then, the mean of each feature variable is caculated by finding the column means for the feature measurements.
       
       
       
       
       