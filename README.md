# EIC_Area

## Introduction/Motivation
This script was developed for use in analyzing plant metabolomics. This particular script was originally utilized for analyzing amino acids. The script utilizes the XCMS package in R developed by Bioconductor. The script assumes all files are in the same folder which is initially set as the working directory. The script scans in a .txt file with the names of each of the data files and then reads in the required data that is either hard coded (input option 1) or read from an input file that is created using the input template. This ends all of the setup and then the command "data <- allPeakAreas(files, mz, mz.tol, rt.min, rt.max, compound_names) processes all the data and extracts the peaks. That data can then be writting to a csv or used for other purposes.  

## Usage Notes
### Lines that require editing:
- 10: set your working directory
- 79: may need to edit this depending on what you named the .txt file with all of your data file names in it. 
- 85, 86, 88, 90, 93: Hard coded input option. Set variables to their desired values. 
- 100: Input template option. Set string to input file name. 

### Workflow
- Generate file list .txt file. 
- Fill in Input_Data_Template.csv and save OR update hard coded lines (85, 86, 88, 90, 93).
- Update file name's in script. 
- Run lines 7-79 to set up function, directory, and .txt file. 
- Run 81-95 OR 97-110 to read in input data. 
- Run 113 to extract peak data
- (optional) Update filename in line 116 to desired csv name and then run 116 to generate csv using data. 

## Files
A brief description of each file in this repo and its role. 

### Peak_area_finder.R
R script that does all the analysis. 

### Input_Data_Template.csv
Empty .csv file with only column names filled in. This is provided to accompany input option 2 in the script and may be an easier input method particularly with those less familiar with R. 

### Input_Data_chilicAA071415
Example of how data should be entered into the Input_Data_Template.csv. This specific file was used for amino acid analysis. 

## Hegeman Lab - University of Minnesota Twin-Cities
This code was developed for use in the Hegeman Lab at the University of Minnesota Twin-Cities. If you use this script in your research, please don't forget to site us. Additionally, if there are any questions about how to use this code, feel free to contact the lab or the scripts creater directly through GitHub. 
