---
title: "Readme"
author: "M Scholten"
date: "Sunday, January 25, 2015"
output: html_document
---

The run_analysis script is used to transform raw data collected from the accelerometers from the Samsung Galaxy S smartphone, 
into two tidy data-sets. 

The raw data has 10299 observations coming from 30 subjects, each of which performed one of six activities several times.
We transform the raw data into the following two tidy data-sets

1.Data that for every observation has features on the mean and std_deviation, and a feature that denotes the activity the subject was performing. 

2.Data with the average value for the features on the mean and std_deviation, for every subject, and every activity. 

We use the following six text files :"X_train.txt", "y_train.txt" , "X_test.txt""y_test.txt" ,"features.txt","activity_labels.txt"

For tidy data set 1:

-We use the grepl (regular expression) on "features.txt" to select the features that have observations on the mean and std_deviation of the subjects. 

-Using only these features, we bind the train and test set together with the  y-variable and the subject-variable that denotes the subject, and the activity that the subject was performing.

-We name the columns of the tidy data set with the corresponding feature labels. The last two column of the tidy data set are the subject-variable that we name "subject" and the activity-varible that we name Activity". This last variable has been transformed to a character vector that denotes which activity the subject was performing. 

-Finally we sort the data in ascending order by subject, and activity 


For tidy data set 2:
 
We take the average of the observations of tidy data set 1, for every subject, and for every activity. 
Since there are 30 subjects and 6 activites we end up with 180 rows. 



Features :

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

For all the above variables we a feature that denotes the mean, and a feature that denotes the std variable.

Finally we have the following two features:

"subject"     numeric feature that denotes the subject
"activity"    characer feature that denotes the activity 












