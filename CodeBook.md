## Data description

This codebook describes the dataset obtained by processing the data from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  with the `run_analysis.R` script from this repo.

Data processing steps are described in the `README.md` file. 

## Variables
The dataset contains 68 variables:
<dl>
<dt>subject</dt> <dd>The numeric identificator of the subject performing the activity. <b>Values:</b> from 1 to 30</dd>
<dt>activity</dt> <dd>The type of activty during which the signals were recorded. <b>Values:</b> 
<ol>
<li> WALKING</li> 
<li> WALKING_UPSTAIRS</li>
<li> WALKING_DOWNSTAIRS</li>
<li> SITTING</li>
<li> STANDING</li>
<li> LAYING</li>
</ol>
</dd>
<dt>tBodyAcc.mean.X</dt> <dd>Average mean of time domain body acceleration signal on the X axis. <b>Values:</b> from -1 to 1</dd>
<dt>tBodyAcc.mean.Y</dt> <dd>Average mean of time domain body acceleration signal on the Y axis. <b>Values:</b> from -1 to 1</dd>
<dt>tBodyAcc.mean.Z</dt> <dd>Average mean of time domain body acceleration signal on the Z axis. <b>Values:</b> from -1 to 1</dd>
<dt>tBodyAcc.std.X</dt> <dd>Average standard deviation of time domain body acceleration signal on the X axis. <b>Values:</b> from -1 to 1</dd>
<dt>tBodyAcc.std.Y</dt> <dd>Average standard deviation of time domain body acceleration signal on the Y axis. <b>Values:</b> from -1 to 1</dd>
<dt>tBodyAcc.std.Z</dt> <dd>Average standard deviation of time domain gravity acceleration signal on the Z axis. <b>Values:</b> from -1 to 1</dd>
<dt>tGravityAcc.mean.X</dt> <dd>Average mean of time domain gravity acceleration signal on the X axis. <b>Values:</b> from -1 to 1</dd>
<dt>tGravityAcc.mean.Y</dt> <dd>Average mean of time domain gravity acceleration signal on the Y axis. <b>Values:</b> from -1 to 1</dd>
<dt>tGravityAcc.mean.Z</dt> <dd>Average mean of time domain gravity acceleration signal on the Z axis. <b>Values:</b> from -1 to 1</dd>
<dt>tGravityAcc.std.X</dt> <dd>Average standard deviation of time domain gravity acceleration signal on the X axis. <b>Values:</b> from -1 to 1</dd>
<dt>tGravityAcc.std.Y</dt> <dd>Average standard deviation of time domain gravity acceleration signal on the Y axis. <b>Values:</b> from -1 to 1</dd>
<dt>tGravityAcc.std.Z</dt> <dd>Average standard deviation of time domain body acceleration signal on the Z axis. <b>Values:</b> from -1 to 1</dd>
<dt>tBodyAccJerk.mean.X</dt> <dd>Average mean of time domain body acceleration jerk signal on the X axis. <b>Values:</b> from -1 to 1</dd>
<dt>tBodyAccJerk.mean.Y</dt> <dd>Average mean of time domain body acceleration jerk signal on the Y axis. <b>Values:</b> from -1 to 1</dd>
<dt>tBodyAccJerk.mean.Z</dt> <dd>Average mean of time domain body acceleration jerk signal on the Z axis. <b>Values:</b> from -1 to 1</dd>
<dt>tBodyAccJerk.std.X</dt> <dd>Average standard deviation of time domain body acceleration jerk signal on the X axis. <b>Values:</b> from -1 to 1</dd>
<dt>tBodyAccJerk.std.Y</dt> <dd>Average standard deviation of time domain body acceleration jerk signal on the Y axis. <b>Values:</b> from -1 to 1</dd>
<dt>tBodyAccJerk.std.Z</dt> <dd>Average standard deviation of time domain body acceleration jerk signal on the Z axis. <b>Values:</b> from -1 to 1</dd>
<dt>tBodyGyro.mean.X</dt> <dd>Average mean of time domain body angular velocity signal on the X axis. <b>Values:</b> from -1 to 1</dd>
<dt>tBodyGyro.mean.Y</dt> <dd>Average mean of time domain body angular velocity signal on the Y axis. <b>Values:</b> from -1 to 1</dd>
<dt>tBodyGyro.mean.Z</dt> <dd>Average mean of time domain body angular velocity signal on the Z axis. <b>Values:</b> from -1 to 1</dd>
<dt>tBodyGyro.std.X</dt> <dd>Average standard deviation of time domain body angular velocity signal on the X axis. <b>Values:</b> from -1 to 1</dd>
<dt>tBodyGyro.std.Y</dt> <dd>Average standard deviation of time domain body angular velocity signal on the Y axis. <b>Values:</b> from -1 to 1</dd>
<dt>tBodyGyro.std.Z</dt> <dd>Average standard deviation of time domain body angular velocity signal on the Z axis. <b>Values:</b> from -1 to 1</dd>
<dt>tBodyGyroJerk.mean.X</dt> <dd>Average mean of time domain body angular velocity jerk signal on the X axis. <b>Values:</b> from -1 to 1</dd>
<dt>tBodyGyroJerk.mean.Y</dt> <dd>Average mean of time domain body angular velocity jerk signal on the Y axis. <b>Values:</b> from -1 to 1</dd>
<dt>tBodyGyroJerk.mean.Z</dt> <dd>Average mean of time domain body angular velocity jerk signal on the Z axis. <b>Values:</b> from -1 to 1</dd>
<dt>tBodyGyroJerk.std.X</dt> <dd>Average standard deviation of time domain body angular velocity jerk signal on the X axis. <b>Values:</b> from -1 to 1</dd>
<dt>tBodyGyroJerk.std.Y</dt> <dd>Average standard deviation of time domain body angular velocity jerk signal on the Y axis. <b>Values:</b> from -1 to 1</dd>
<dt>tBodyGyroJerk.std.Z</dt> <dd>Average standard deviation of time domain body angular velocity jerk signal on the Z axis. <b>Values:</b> from -1 to 1</dd>
<dt>tBodyAccMag.mean</dt> <dd>Average mean of magnitude of time domain body acceleration signal . <b>Values:</b> from -1 to 1</dd>
<dt>tBodyAccMag.std</dt> <dd>Average standard deviation of magnitude of time domain body acceleration signal . <b>Values:</b> from -1 to 1</dd>
<dt>tGravityAccMag.mean</dt> <dd>Average mean of magnitude of time domain gravity acceleration signal . <b>Values:</b> from -1 to 1</dd>
<dt>tGravityAccMag.std</dt> <dd>Average standard deviation of magnitude of time domain gravity acceleration signal . <b>Values:</b> from -1 to 1</dd>
<dt>tBodyAccJerkMag.mean</dt> <dd>Average mean of magnitude of time domain body acceleration jerk signal . <b>Values:</b> from -1 to 1</dd>
<dt>tBodyAccJerkMag.std</dt> <dd>Average standard deviation of magnitude of time domain body acceleration jerk signal . <b>Values:</b> from -1 to 1</dd>
<dt>tBodyGyroMag.mean</dt> <dd>Average mean of magnitude of time domain body angular velocity signal . <b>Values:</b> from -1 to 1</dd>
<dt>tBodyGyroMag.std</dt> <dd>Average standard deviation of magnitude of time domain body angular velocity signal . <b>Values:</b> from -1 to 1</dd>
<dt>tBodyGyroJerkMag.mean</dt> <dd>Average mean of magnitude of time domain body angular velocity jerk signal . <b>Values:</b> from -1 to 1</dd>
<dt>tBodyGyroJerkMag.std</dt> <dd>Average standard deviation of magnitude of time domain body angular velocity jerk signal . <b>Values:</b> from -1 to 1</dd>
<dt>fBodyAcc.mean.X</dt> <dd>Average mean of frequency domain body acceleration signal on the X axis. <b>Values:</b> from -1 to 1</dd>
<dt>fBodyAcc.mean.Y</dt> <dd>Average mean of frequency domain body acceleration signal on the Y axis. <b>Values:</b> from -1 to 1</dd>
<dt>fBodyAcc.mean.Z</dt> <dd>Average mean of frequency domain body acceleration signal on the Z axis. <b>Values:</b> from -1 to 1</dd>
<dt>fBodyAcc.std.X</dt> <dd>Average standard deviation of frequency domain body acceleration signal on the X axis. <b>Values:</b> from -1 to 1</dd>
<dt>fBodyAcc.std.Y</dt> <dd>Average standard deviation of frequency domain body acceleration signal on the Y axis. <b>Values:</b> from -1 to 1</dd>
<dt>fBodyAcc.std.Z</dt> <dd>Average standard deviation of frequency domain body acceleration signal on the Z axis. <b>Values:</b> from -1 to 1</dd>
<dt>fBodyAccJerk.mean.X</dt> <dd>Average mean of frequency domain body acceleration jerk signal on the X axis. <b>Values:</b> from -1 to 1</dd>
<dt>fBodyAccJerk.mean.Y</dt> <dd>Average mean of frequency domain body acceleration jerk signal on the Y axis. <b>Values:</b> from -1 to 1</dd>
<dt>fBodyAccJerk.mean.Z</dt> <dd>Average mean of frequency domain body acceleration jerk signal on the Z axis. <b>Values:</b> from -1 to 1</dd>
<dt>fBodyAccJerk.std.X</dt> <dd>Average standard deviation of frequency domain body acceleration jerk signal on the X axis. <b>Values:</b> from -1 to 1</dd>
<dt>fBodyAccJerk.std.Y</dt> <dd>Average standard deviation of frequency domain body acceleration jerk signal on the Y axis. <b>Values:</b> from -1 to 1</dd>
<dt>fBodyAccJerk.std.Z</dt> <dd>Average standard deviation of frequency domain body acceleration jerk signal on the Z axis. <b>Values:</b> from -1 to 1</dd>
<dt>fBodyGyro.mean.X</dt> <dd>Average mean of frequency domain body angular velocity signal on the X axis. <b>Values:</b> from -1 to 1</dd>
<dt>fBodyGyro.mean.Y</dt> <dd>Average mean of frequency domain body angular velocity signal on the Y axis. <b>Values:</b> from -1 to 1</dd>
<dt>fBodyGyro.mean.Z</dt> <dd>Average mean of frequency domain body angular velocity signal on the Z axis. <b>Values:</b> from -1 to 1</dd>
<dt>fBodyGyro.std.X</dt> <dd>Average standard deviation of frequency domain body angular velocity signal on the X axis. <b>Values:</b> from -1 to 1</dd>
<dt>fBodyGyro.std.Y</dt> <dd>Average standard deviation of frequency domain body angular velocity signal on the Y axis. <b>Values:</b> from -1 to 1</dd>
<dt>fBodyGyro.std.Z</dt> <dd>Average standard deviation of frequency domain body angular velocity signal on the Z axis. <b>Values:</b> from -1 to 1</dd>
<dt>fBodyAccMag.mean</dt> <dd>Average mean of magnitude of frequency domain body acceleration signal . <b>Values:</b> from -1 to 1</dd>
<dt>fBodyAccMag.std</dt> <dd>Average standard deviation of magnitude of frequency domain body acceleration signal . <b>Values:</b> from -1 to 1</dd>
<dt>fBodyAccJerkMag.mean</dt> <dd>Average mean of magnitude of frequency domain body acceleration jerk signal . <b>Values:</b> from -1 to 1</dd>
<dt>fBodyAccJerkMag.std</dt> <dd>Average standard deviation of magnitude of frequency domain body acceleration jerk signal . <b>Values:</b> from -1 to 1</dd>
<dt>fBodyGyroMag.mean</dt> <dd>Average mean of magnitude of frequency domain body angular velocity signal . <b>Values:</b> from -1 to 1</dd>
<dt>fBodyGyroMag.std</dt> <dd>Average standard deviation of magnitude of frequency domain body angular velocity signal . <b>Values:</b> from -1 to 1</dd>
<dt>fBodyGyroJerkMag.mean</dt> <dd>Average mean of magnitude of frequency domain body angular velocity jerk signal . <b>Values:</b> from -1 to 1</dd>
<dt>fBodyGyroJerkMag.std</dt> <dd>Average standard deviation of magnitude of frequency domain body angular velocity jerk signal . <b>Values:</b> from -1 to 1</dd>
</dl>
