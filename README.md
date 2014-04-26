## Summary
This repo contains the scripts to prepare a tidy dataset from the data obtained at https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

It will create and save as text file a dataset of average values of means and standard deviations of measurements for each activity of each subject.

### Repo contents
* `run_analysis.R` - the main data processing script
* `download_data.R` - an additional script with a function to load and unpack the data if it is missing from the working directory.
* `CodeBook.md` - the description of variables of the resulting tidy dataset.
* `README.md` - explanation of data processing performed by the script.

## Running the script
1. Clone this repo to your desktop
2. Launch R and change the working directory to the folder with this repo's contents.
3. If you have the `UCI HAR Dataset` folder or the `getdata_projectfiles_UCI HAR Dataset.zip` package - move or copy it to the working directory. If not - don't bother, the script will download it from the source.
4. Run the `run_analysis.R` script.
5. The resulting dataset will be saved as `TidyDataset.txt` in the working directory.

### Requirements
* This script requires the `plyr` package. It will install and/or load it at the beginning.
* It expects the data to be located in the `UCI HAR Dataset` subfolder in the working directory.

## Assumptions
* The structure of folders and files in `UCI HAR Dataset` is preserved.
* The descriptive **activity names** and their corresponding numeric labels are in the `activity_labels.txt` file. They are ordered by the numeric label.
* The **names of measurements** are in `features.txt` file. They are indexed and ordered by their indices.
  * The variables contianing the **means** of measurements have `-mean()` in their names, and those containing **standard deviations** of measurements have `-std()` in their names.
* The training data is in the `train` subfolder, and the test data in the `test` subfolder.
  * The test and train **measurements** are in `X_train.txt` and `X_test.txt` respectively.
  * The **subject** codes for the train and test datasets are in the `subject_train.txt` and `subject_test.txt` files respectively.
  * The numeric **activity labels** for the train and test datasets are in `y_train.txt` and `y_test.txt` respectively.
* The data in the `Initial Signals` subfolders is not required to complete this assignment, so the script does not use it. 

## Data processing
1. Store the directory and file names listed above in variables
2. Check if `UCI HAR Dataset` subfolder is present. If not - load the `DownloadData` from `download_data.R` which will locate and unpack or download and unpack the `getdata_projectfiles_UCI HAR Dataset.zip` if it is missing.
3. Process activities data:
   1.  Load the train and test numeric activitiy labels and bind them in a single dataframe `uciActivity`.
   2.  Load the descriptive activity names and use them to change the numeric labels in `uciActivity` to descriptive names.
4. Process subjects data:
  1. Load the train and test subject codes and bind them into a single dataframe `uciSubj`.
5. Process measurement names:
  1. Load the measurement names, extract only those containing `-std()` or `-mean()` and store these names in the character vector `namesMeanSd`.
  2. Get row numbers of these names (which are same as their numeric indices) and store in an integer vector `indexMeanSd`.
  3. Clean up the names: process with `make.names` function, then remove duplicate dots and dots from the ends. Also replace "BodyBody" in some of the names with just "Body".
6. Process measurements:
  1. Load the train and test sets of measurements and bind them into a single dataframe `uciData`.
  2. Extract a subset `uciSubset` selecting only the columns with indices present in `indexMeanSd`.
  3. Label the columns of the subset with measurement names from `namesMeanSd`.
7. Create the tidy dataset:
  1. Bind the `uciSubj`, `uciActivity` and `uciSubset` dataframes into a single `uci` dataframe.
  2. Apply the `ddply` function to split the `uci` dataframe by `subject` and `activity`, calculate the means of all measurements columns and save the result into `uciTidy` dataframe.
8. Save `uciTidy` as `TidyDataset.txt` in the working directory.