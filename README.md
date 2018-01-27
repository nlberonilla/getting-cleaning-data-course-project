# getting-cleaning-data-course-project

The data used in this course project is collected from the accelerometers from the Samsung Galaxy S smartphone. 

This repo contains the following:
* `README.md`, this file, which provides how the script `run_analysis.R` works, and how the data `step5tidy.txt` was created.
* `CodeBook.md`, the code book, which describes the contents of the data `step5tidy.txt`.
* `run_analysis.R`, the R script to create the data `step5tidy.txt`.

## Creating the data set `step5tidy.txt`

The data set `step5tidy.txt` was created by running the `run_analysis.R`, which does the following:
* downloads the raw data sets found in a zip file from the cloud and unziped in the local computer (labeled step 0)
* merges the the training and test data sets (labeled step 1)
* extracts the measurements with `mean` and `std` contained in the variable names (labeled step 2)
* converts the activity into factor variable (labeled step 3)
* renames variables names into intuitive names (labeled step 4)
* computes averages of each measurement by activity and subject and save into separate file (labeled step 5)
