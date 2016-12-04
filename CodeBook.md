<h1><i>CodeBook</i></h1>
This is the codebook, required for the analysis of the programs given alongside.

A full description is available at the site where the data was obtained :-</br>
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones</br>
Here are the data for the project :-</br>
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip</br>

<h4><i>Information on the Experiment</i></h4>
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

<h4><i>Files inside the Dataset</i></h4>
<ol style = "list-style-type:circle">
<li>README.txt</li>
<li>features_info.txt</li>
<li>features.txt</li>
<li>activity_labels.txt</li>
<li>test dataset
<ol style = "list-style-type:circle">
<li>subject_test.txt</li><li>x_test.txt</li><li>y_test.txt</li>
</ol>
</li>
<li>train dataset
<ol style = "list-style-type:circle">
<li>subject_train.txt</li><li>x_train.txt</li><li>y_train.txt</li>
</ol>
</li>
</ol>

<h4><i>What we need to do...</i></h4>
You should create one R script called <i>run_analysis.R</i> that does the following :-</br>
<ol style = "list-style-type:circle">
<li>Merges the training and the test sets to create one data set.</li>
<li>Extracts only the measurements on the mean and standard deviation for each measurement.</li>
<li>Uses descriptive activity names to name the activities in the data set</li>
<li>Appropriately labels the data set with descriptive variable names.</li>
<li>From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.</li>
</ol>
