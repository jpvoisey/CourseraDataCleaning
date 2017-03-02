# Coursera Data Cleaning Project
## Accelerometer Data
### Jeremy Voisey

#### R packages used:
* dplyr - to select columns & summarise data
* data.table - to use fread

## TidyDataTable function
This takes as input:
* File containing accelerometer data
* File containing subject labels
* File containing activity labels
* A numeric vector of columns required
* A character vector of corresponding column names

#### Steps

1. Reads all 3 files, using fread, which, in this case, is able to detect the file format by itself

2. The required columns are selected

3. Subject & Activity are added to column names vector

4. The subject & activity vectors are bound to the data

5. Columns are renamed

6. Data Table is returned

## Main Body of Script

1. Reads original varibale names stored in "features.txt"

2. Creates numeric column vector of variables soring mean and standard deviation

3. Creates corresponding numeric vector of actual names

4. Formats variable names

5. Uses TidyDataTable function to read training data

6. Uses TidyDataTable function to read test data 

7. Merges training and test data

8. Converts activity column (1-6) to factor variable with meaningful labels

9. Finds mean of each variable by subject and group

10. Writes means data table to file
