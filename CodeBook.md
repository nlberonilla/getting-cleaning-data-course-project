# Code Book
Contains description of the variables, the data, and any transformations/work performed to clean up the data in the `step5tidy.txt` file submitted in the peer graded project.

The `step5tidy.txt` contains 81 variables with the first two variables as identifiers, while the other 79 variables are average signal measurements.

The complete list of variables is shown in *Tidy Data* section together with the description

## Tidy Data 
Variable Name   |   Description
----------------|----------------
[1] "subject"   | ID of subject, int (1-30)                                                
 [2] "activity" | Label of activity, factor (6 levels)                                                 
 [3] "timedomainBodyAccelerometermeanX"     | mean value, by subject and activity                     
 [4] "timedomainBodyAccelerometermeanY"     | mean value, by subject and activity                     
 [5] "timedomainBodyAccelerometermeanZ"     | mean value, by subject and activity                     
 [6] "timedomainBodyAccelerometerStandardDevX"   | mean value, by subject and activity                
 [7] "timedomainBodyAccelerometerStandardDevY"   | mean value, by subject and activity                
 [8] "timedomainBodyAccelerometerStandardDevZ"   | mean value, by subject and activity                
 [9] "timedomainGravityAccelerometermeanX"  | mean value, by subject and activity                     
[10] "timedomainGravityAccelerometermeanY"  | mean value, by subject and activity                     
[11] "timedomainGravityAccelerometermeanZ"  | mean value, by subject and activity                     
[12] "timedomainGravityAccelerometerStandardDevX"   | mean value, by subject and activity             
[13] "timedomainGravityAccelerometerStandardDevY"   | mean value, by subject and activity             
[14] "timedomainGravityAccelerometerStandardDevZ"   | mean value, by subject and activity             
[15] "timedomainBodyAccelerometerJerkmeanX"     | mean value, by subject and activity                 
[16] "timedomainBodyAccelerometerJerkmeanY"     | mean value, by subject and activity                 
[17] "timedomainBodyAccelerometerJerkmeanZ"     | mean value, by subject and activity                 
[18] "timedomainBodyAccelerometerJerkStandardDevX"   | mean value, by subject and activity             
[19] "timedomainBodyAccelerometerJerkStandardDevY"   | mean value, by subject and activity            
[20] "timedomainBodyAccelerometerJerkStandardDevZ"   | mean value, by subject and activity            
[21] "timedomainBodyGyroscopemeanX"   | mean value, by subject and activity                           
[22] "timedomainBodyGyroscopemeanY"   | mean value, by subject and activity                           
[23] "timedomainBodyGyroscopemeanZ"   | mean value, by subject and activity                           
[24] "timedomainBodyGyroscopeStandardDevX"   | mean value, by subject and activity                    
[25] "timedomainBodyGyroscopeStandardDevY"   | mean value, by subject and activity                    
[26] "timedomainBodyGyroscopeStandardDevZ"   | mean value, by subject and activity                    
[27] "timedomainBodyGyroscopeJerkmeanX"   | mean value, by subject and activity                       
[28] "timedomainBodyGyroscopeJerkmeanY"   | mean value, by subject and activity                       
[29] "timedomainBodyGyroscopeJerkmeanZ"   | mean value, by subject and activity                       
[30] "timedomainBodyGyroscopeJerkStandardDevX"   | mean value, by subject and activity                
[31] "timedomainBodyGyroscopeJerkStandardDevY"   | mean value, by subject and activity                
[32] "timedomainBodyGyroscopeJerkStandardDevZ"   | mean value, by subject and activity                
[33] "timedomainBodyAccelerometerMagnitudemean"    | mean value, by subject and activity              
[34] "timedomainBodyAccelerometerMagnitudeStandardDev"  | mean value, by subject and activity         
[35] "timedomainGravityAccelerometerMagnitudemean"   | mean value, by subject and activity            
[36] "timedomainGravityAccelerometerMagnitudeStandardDev"  | mean value, by subject and activity      
[37] "timedomainBodyAccelerometerJerkMagnitudemean"  | mean value, by subject and activity            
[38] "timedomainBodyAccelerometerJerkMagnitudeStandardDev"  | mean value, by subject and activity     
[39] "timedomainBodyGyroscopeMagnitudemean"      | mean value, by subject and activity                
[40] "timedomainBodyGyroscopeMagnitudeStandardDev"  | mean value, by subject and activity             
[41] "timedomainBodyGyroscopeJerkMagnitudemean"  | mean value, by subject and activity                
[42] "timedomainBodyGyroscopeJerkMagnitudeStandardDev"   | mean value, by subject and activity        
[43] "frequencydomainBodyAccelerometermeanX"  | mean value, by subject and activity                   
[44] "frequencydomainBodyAccelerometermeanY"  | mean value, by subject and activity                   
[45] "frequencydomainBodyAccelerometermeanZ"  | mean value, by subject and activity                   
[46] "frequencydomainBodyAccelerometerStandardDevX"  | mean value, by subject and activity            
[47] "frequencydomainBodyAccelerometerStandardDevY"  | mean value, by subject and activity            
[48] "frequencydomainBodyAccelerometerStandardDevZ"  | mean value, by subject and activity            
[49] "frequencydomainBodyAccelerometermeanFrequencyX"  | mean value, by subject and activity          
[50] "frequencydomainBodyAccelerometermeanFrequencyY"  | mean value, by subject and activity          
[51] "frequencydomainBodyAccelerometermeanFrequencyZ"  | mean value, by subject and activity          
[52] "frequencydomainBodyAccelerometerJerkmeanX"  | mean value, by subject and activity               
[53] "frequencydomainBodyAccelerometerJerkmeanY"  | mean value, by subject and activity               
[54] "frequencydomainBodyAccelerometerJerkmeanZ"  | mean value, by subject and activity               
[55] "frequencydomainBodyAccelerometerJerkStandardDevX"   | mean value, by subject and activity       
[56] "frequencydomainBodyAccelerometerJerkStandardDevY"   | mean value, by subject and activity       
[57] "frequencydomainBodyAccelerometerJerkStandardDevZ"   | mean value, by subject and activity       
[58] "frequencydomainBodyAccelerometerJerkmeanFrequencyX"   | mean value, by subject and activity     
[59] "frequencydomainBodyAccelerometerJerkmeanFrequencyY"   | mean value, by subject and activity     
[60] "frequencydomainBodyAccelerometerJerkmeanFrequencyZ"   | mean value, by subject and activity     
[61] "frequencydomainBodyGyroscopemeanX"   | mean value, by subject and activity                      
[62] "frequencydomainBodyGyroscopemeanY"   | mean value, by subject and activity                      
[63] "frequencydomainBodyGyroscopemeanZ"   | mean value, by subject and activity                      
[64] "frequencydomainBodyGyroscopeStandardDevX"  | mean value, by subject and activity                
[65] "frequencydomainBodyGyroscopeStandardDevY"  | mean value, by subject and activity                
[66] "frequencydomainBodyGyroscopeStandardDevZ"  | mean value, by subject and activity                
[67] "frequencydomainBodyGyroscopemeanFrequencyX"   | mean value, by subject and activity             
[68] "frequencydomainBodyGyroscopemeanFrequencyY"   | mean value, by subject and activity             
[69] "frequencydomainBodyGyroscopemeanFrequencyZ"   | mean value, by subject and activity             
[70] "frequencydomainBodyAccelerometerMagnitudemean"  | mean value, by subject and activity           
[71] "frequencydomainBodyAccelerometerMagnitudeStandardDev"   | mean value, by subject and activity   
[72] "frequencydomainBodyAccelerometerMagnitudemeanFrequency"   | mean value, by subject and activity 
[73] "frequencydomainBodyAccelerometerJerkMagnitudemean"  | mean value, by subject and activity       
[74] "frequencydomainBodyAccelerometerJerkMagnitudeStandardDev"  | mean value, by subject and activity
[75] "frequencydomainBodyAccelerometerJerkMagnitudemeanFrequency"  | mean value, by subject and activity
[76] "frequencydomainBodyGyroscopeMagnitudemean"    | mean value, by subject and activity             
[77] "frequencydomainBodyGyroscopeMagnitudeStandardDev"   | mean value, by subject and activity       
[78] "frequencydomainBodyGyroscopeMagnitudemeanFrequency"   | mean value, by subject and activity     
[79] "frequencydomainBodyGyroscopeJerkMagnitudemean"  | mean value, by subject and activity           
[80] "frequencydomainBodyGyroscopeJerkMagnitudeStandardDev"   | mean value, by subject and activity   
[81] "frequencydomainBodyGyroscopeJerkMagnitudemeanFrequency"   | mean value, by subject and activity

## Transformation
The data are downloaded from https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The zip contains training and test data which were merged; variable names containing `mean` and `std` were retained; the variables names were renamed with easy-to-understand names; the averages were then computed and saved as separate data called `step5tidy.txt`.

For additional information see `README.md` file.
