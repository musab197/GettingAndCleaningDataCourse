# Peer Graded Assignment: Getting and Cleaning Data Course Project

## Overview
This project is done as a part of the Coursera "Getting and Cleaning Data" course. The goal is to prepare a tidy data set that can be used for later analysis.

## Data Source
The data was collected from the accelerometers of the Samsung Galaxy S smartphone.  
Original source: [UCI Machine Learning Repository](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

## Files in the Repository
- `run_analysis.R` – The script to clean and analyze the data.
- `tidy_dataset.txt` – The final tidy data set.
- `CodeBook.md` – Describes the variables and transformations performed.
- `README.md` – This file explaining the project and its structure.

## How to Run the Script
1. Download the dataset and unzip it.
2. Save the `run_analysis.R` script in the project folder.
3. Open RStudio and set the working directory to the project folder.
4. Run `source("run_analysis.R")` in RStudio.

## Steps in the Script
1. Merges the training and the test sets.
2. Extracts only mean and standard deviation measurements.
3. Assigns descriptive activity names.
4. Labels the dataset with descriptive variable names.
5. Creates a tidy dataset with the average of each variable for each activity and subject.

## Output
- A tidy dataset named `tidy_dataset.txt` is created in the working directory.

## Author
[Hafiz Musab]