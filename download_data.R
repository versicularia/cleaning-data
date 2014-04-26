DownloadData <- function(){
        if(!file.exists("getdata_projectfiles_UCI HAR Dataset.zip")){
                print("Can't find the zip package in the working direcory")
                print ("I'll just download it from the source real quick...")
                url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
                download.file(url, "getdata_projectfiles_UCI HAR Dataset.zip",
                              method="curl")
                print ("Package downloaded")
        } else {
                print ("Yes, I found it!")
        }
        print("Unzipping the package...")
        unzip("getdata_projectfiles_UCI HAR Dataset.zip")
        print("Unzipping complete")
}
