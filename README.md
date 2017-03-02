# Coursera Data Cleaning Project
## Accelerometer Data
## Jeremy Voisey

The following R packages were used:
* dplyr - to select columns & summarise data
* data.table - to use fread

## TidyDataTable function
This takes as input:
* File containing accelerometer data
* File containing subject labels
* File containing activity labels
* A numeric vector of columns required
* A character vector of corresponding column names

The function

1. Reads all 3 files, using fread, which is able to detect the file format by itself in this case

2. The required columns are selected

3. Subject & Activity are added to column names vector

4. The subject & activity vectors are bound to the data

5. Columns are renamed

6. Data Table is returned

Test
