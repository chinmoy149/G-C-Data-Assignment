# Peer Graded Assignment
# Getting & Cleaning Data
# Chinmoy Das
# github.com/chinmoy149

library ("data.table")

# Load the activity labels
act_labels <- read.table ("D:/R/JHU/Getting & Cleaning Data/Week 4/Project (UCI HAR Dataset)/activity_labels.txt")[, 2]

# Load the column names
features <- read.table ("D:/R/JHU/Getting & Cleaning Data/Week 4/Project (UCI HAR Dataset)/features.txt")[, 2]

# using grepl to extract names
req_features <- grepl ("mean|std", features)

# Load x_test & y_test data.
x_test <- read.table ("D:/R/JHU/Getting & Cleaning Data/Week 4/Project (UCI HAR Dataset)/test/X_test.txt")
y_test <- read.table ("D:/R/JHU/Getting & Cleaning Data/Week 4/Project (UCI HAR Dataset)/test/y_test.txt")
sub_test <- read.table ("D:/R/JHU/Getting & Cleaning Data/Week 4/Project (UCI HAR Dataset)/test/subject_test.txt")

# appropriate names
names (x_test) = features
# Extract only the measurements on the mean and standard deviation for each measurement. [Required Data]
x_test = x_test[, req_features]

# Load activity labels
y_test[, 2] = act_labels [y_test [, 1]]
# appropriate names
names (y_test) = c ("activity_id", "activity_label")
names (sub_test) = "subject"

# Bind data into final data table
test_data <- cbind (as.data.table (sub_test), y_test, x_test)


# Load x_train & y_train data.
x_train <- read.table ("D:/R/JHU/Getting & Cleaning Data/Week 4/Project (UCI HAR Dataset)/train/X_train.txt")
y_train <- read.table ("D:/R/JHU/Getting & Cleaning Data/Week 4/Project (UCI HAR Dataset)/train/y_train.txt")
sub_train <- read.table ("D:/R/JHU/Getting & Cleaning Data/Week 4/Project (UCI HAR Dataset)/train/subject_train.txt")

#appropriate names
names (x_train) = features
# Extract only the measurements on the mean and standard deviation for each measurement.
x_train = x_train[, req_features]

# Load activity data
y_train[, 2] = act_labels [y_train [, 1]]
#appropriate names
names (y_train) = c ("activity_id", "activity_label")
names (sub_train) = "subject"

# Bind data into final data table
train_data <- cbind(as.data.table(sub_train), y_train, x_train)

# Merge test and train data
final_data = rbind (test_data, train_data)
id_labels   = c ("subject", "activity_id", "activity_label")
data_labels = setdiff (colnames (final_data), id_labels)
melt_data = melt (final_data, id = id_labels, measure.vars = data_labels)

# Apply mean function to dataset using dcast function
tidy_data   = dcast (melt_data, subject + activity_label ~ variable, mean)
write.table (tidy_data, file = "D:/R/JHU/Getting & Cleaning Data/Week 4/tidy_data.txt")
