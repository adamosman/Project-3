Getting and Cleaning Data Course Project
========================================================

Overview of the `run_analysis.R` script
-----------------

1. First, the script sets path to the **UCI HAR Dataset** data set, and clears the current environment of any existing objects.
2. The three `.txt` files found within the **train** and **test** folders are read into data frames and combined using the `rbind` function.
3. Next the variable names located in the `features.txt` file are read into a data frame and get parsed out to collect only the variables with the words `mean` and `std` in the name. The parsed variable names get stripped of the parentheses and are assigned to the column names of the combined X-value data frame.
4. The activity labels are read into a data frame and the corresponding activity numbers located in the combined Y-value data frame are replaced with the appropriate activity label.
5. The the subject, activity label, and measurement data are combined into one data frame, and t he measurement data variables are changed to more descriptive names.
6. The combined data frame with new header names is written to a file called `mergedata.txt`. 
7. Finally, the script averages the measurements for each subject with respect to each type of activity and writes the new data frame file called `average.txt`. 