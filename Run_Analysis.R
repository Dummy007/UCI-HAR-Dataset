
############### Loading necessary Libraries ##################

libraries()


############### STEP 1 ########################################

#Merging the training and the test sets to create one data set.

trainDF <- Get_trainDF()
testDF <- Get_testDF()
DF <- Get_fullDF(trainDF, testDF)
DF <- data.table(DF)
DF[, Subject := as.factor(Subject)]

rm(list = c("testDF","trainDF"))





################ STEP 2 ########################################

#Extracts only the measurements on the mean and standard deviation for each measurement.
measure.columns <- names(DF)[3:563]
mean.columns <- measure.columns[grep("mean()", measure.columns,fixed = TRUE)]
sd.columns <- measure.columns[grep("std()", measure.columns,fixed = TRUE)]
columns.of.interest = c(mean.columns, sd.columns)

columns.of.interest <- DF[, names(DF) %in% c(columns.of.interest, "Activity", "Subject")]
columns.of.interest <- which(columns.of.interest == TRUE)

DF <- DF%>%select(columns.of.interest)

rm(list=c("measure.columns", "mean.columns","sd.columns","columns.of.interest"))


################ STEP 3 ########################################

#Uses descriptive activity names to name the activities in the data set



DF$Activity[which(DF$Activity == 1)] = "Walking"
DF$Activity[which(DF$Activity == 2)] = "Walking Upstairs"
DF$Activity[which(DF$Activity == 3)] = "Walking Downstairs"
DF$Activity[which(DF$Activity == 4)] = "Sitting"
DF$Activity[which(DF$Activity == 5)] = "Standing"
DF$Activity[which(DF$Activity == 6)] = "Laying"

DF$Activity <- as.factor(DF$Activity)



############### STEP 4 ########################################
# Appropriately labels the data set with descriptive variable names.
feature.labels <- Set.labels()
names(DF) <-feature.labels[[2]]
rm("feature.labels")


############### STEP 5 ########################################

# From the data set in step 4, creates a second, independent tidy 
# data set with the average of each variable for each activity 
# and each subject.

DF2 <- DF[, lapply(.SD, mean), by = .(Subject, Activity), .SDcols = 3:68]





write.table(DF2,
            "MyTidyDF.txt", 
            quote =FALSE, 
            sep = " ", 
            eol ="\n", 
            dec=".",
            row.names = FALSE,
            col.names = TRUE)