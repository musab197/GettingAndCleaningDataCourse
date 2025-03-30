# Code Book

## 1. Introduction
This data set contains measurements from the accelerometers of Samsung Galaxy S smartphones, processed to create a tidy summary dataset. The original data was collected from 30 subjects while performing six different activities (e.g., walking, sitting, laying).

---

## 2. Data Source
- Original data: [Human Activity Recognition Using Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)
- The data was provided for educational purposes as part of the "Getting and Cleaning Data" course on Coursera.

---

## 3. Steps Taken to Clean the Data
1. **Merged Data Sets**  
   Combined the training and test sets into a single data set.

2. **Extracted Relevant Measurements**  
   Extracted only the mean and standard deviation measurements for each observation.

3. **Added Descriptive Activity Names**  
   Used descriptive activity names instead of numeric codes.

4. **Labeled Variables with Descriptive Names**  
   Renamed variables to more descriptive names following consistent formatting.

5. **Created a Tidy Data Set**  
   Created a tidy data set with the average of each variable for each activity and each subject.

---

## 4. Units of Measurement
- Measurements are normalized and bounded within `[-1, 1]`.
- Activities are categorical (e.g., WALKING, LAYING).
- Subject IDs are integers (1 to 30).

---

## 5. Notes
- The data has been processed to follow the principles of tidy data (each variable is in a column, each observation is in a row).
- Missing values have been removed.