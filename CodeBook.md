TRANSFORMATIONS
=======
Below I describe the steps that I took to transform the data.  You can reproduce my work by following these instructions.

  1. source the getData.R file to get the initial data set. 
  2. at the command line, enter the data/raw directory and run: unzip samsung.zip
  3. source the run_alysis.R file which does the following:
  
     * Merges the training and the test sets to create one data set.
     * Extracts only the measurements on the mean and standard deviation for each measurement. 
     * Uses descriptive activity names to name the activities in the data set
     * Appropriately labels the data set with descriptive variable names. 
     * From the data set created in the previous step, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
     * Writes the tidy data to data/tidy/averages.txt

DATA DICTIONARY
=======
(Note: For complete information about the raw data, please see the README.txt included with the raw data set)

SubjectID : An integer identifying the subject whom performed the activity                                  
Activity : The String representing the activity being performed during the measurment. One of the following: 

  * WALKING
  * WALKING_UPSTAIRS
  * WALKING_DOWNSTAIRS
  * SITTING
  * STANDING
  * LAYING

The following measurements were taken and then averaged for each subject and activity. Each value is a floating point number:

  * average.tBodyAcc.mean.X                    
  * average.tBodyAcc.mean.Y                    
  * average.tBodyAcc.mean.Z                    
  * average.tBodyAcc.std.X                     
  * average.tBodyAcc.std.Y                     
  * average.tBodyAcc.std.Z                     
  * average.tGravityAcc.mean.X                 
  * average.tGravityAcc.mean.Y                 
  * average.tGravityAcc.mean.Z                 
  * average.tGravityAcc.std.X                  
  * average.tGravityAcc.std.Y                  
  * average.tGravityAcc.std.Z                  
  * average.tBodyAccJerk.mean.X                
  * average.tBodyAccJerk.mean.Y                
  * average.tBodyAccJerk.mean.Z                
  * average.tBodyAccJerk.std.X                 
  * average.tBodyAccJerk.std.Y                 
  * average.tBodyAccJerk.std.Z                 
  * average.tBodyGyro.mean.X                   
  * average.tBodyGyro.mean.Y                   
  * average.tBodyGyro.mean.Z                   
  * average.tBodyGyro.std.X                    
  * average.tBodyGyro.std.Y                    
  * average.tBodyGyro.std.Z                    
  * average.tBodyGyroJerk.mean.X               
  * average.tBodyGyroJerk.mean.Y               
  * average.tBodyGyroJerk.mean.Z               
  * average.tBodyGyroJerk.std.X                
  * average.tBodyGyroJerk.std.Y                
  * average.tBodyGyroJerk.std.Z                
  * average.tBodyAccMag.mean                  
  * average.tBodyAccMag.std                    
  * average.tGravityAccMag.mean                
  * average.tGravityAccMag.std                 
  * average.tBodyAccJerkMag.mean               
  * average.tBodyAccJerkMag.std                
  * average.tBodyGyroMag.mean                 
  * average.tBodyGyroMag.std                   
  * average.tBodyGyroJerkMag.mean              
  * average.tBodyGyroJerkMag.std               
  * average.fBodyAcc.mean.X                    
  * average.fBodyAcc.mean.Y                    
  * average.fBodyAcc.mean.Z                    
  * average.fBodyAcc.std.X                     
  * average.fBodyAcc.std.Y                     
  * average.fBodyAcc.std.Z                     
  * average.fBodyAcc.meanFreq.X                
  * average.fBodyAcc.meanFreq.Y                
  * average.fBodyAcc.meanFreq.Z                
  * average.fBodyAccJerk.mean.X                
  * average.fBodyAccJerk.mean.Y                
  * average.fBodyAccJerk.mean.Z                
  * average.fBodyAccJerk.std.X                 
  * average.fBodyAccJerk.std.Y                 
  * average.fBodyAccJerk.std.Z                 
  * average.fBodyAccJerk.meanFreq.X            
  * average.fBodyAccJerk.meanFreq.Y            
  * average.fBodyAccJerk.meanFreq.Z            
  * average.fBodyGyro.mean.X                   
  * average.fBodyGyro.mean.Y                   
  * average.fBodyGyro.mean.Z                   
  * average.fBodyGyro.std.X                    
  * average.fBodyGyro.std.Y                    
  * average.fBodyGyro.std.Z                    
  * average.fBodyGyro.meanFreq.X               
  * average.fBodyGyro.meanFreq.Y               
  * average.fBodyGyro.meanFreq.Z               
  * average.fBodyAccMag.mean                   
  * average.fBodyAccMag.std                    
  * average.fBodyAccMag.meanFreq               
  * average.fBodyBodyAccJerkMag.mean           
  * average.fBodyBodyAccJerkMag.std            
  * average.fBodyBodyAccJerkMag.meanFreq       
  * average.fBodyBodyGyroMag.mean              
  * average.fBodyBodyGyroMag.std               
  * average.fBodyBodyGyroMag.meanFreq
  * average.fBodyBodyGyroJerkMag.mean          
  * average.fBodyBodyGyroJerkMag.std           
  * average.fBodyBodyGyroJerkMag.meanFreq      
  * average.angle.tBodyAccMean.gravity        
  * average.angle.tBodyAccJerkMean.gravityMean 
  * average.angle.tBodyGyroMean.gravityMean    
  * average.angle.tBodyGyroJerkMean.gravityMean
  * average.angle.X.gravityMean              
  * average.angle.Y.gravityMean                
  * average.angle.Z.gravityMean



