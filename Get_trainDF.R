
Get_trainDF <- function (){
  
   setwd("./train")
  
  
  trainData <- read.table("X_train.txt",
                         header = FALSE,
                         
                         sep="",
                         quote="",  
                         dec = ".",
                         stringsAsFactors=FALSE,
                         comment.char="",
                         nrows = 7352
  )
  
  subjectTrain <- read.table("subject_train.txt",
                           header = FALSE,
                           
                           sep="",
                           quote="",  
                           dec = ".",
                           stringsAsFactors=FALSE,
                           comment.char="",
                           nrows = 7352
  )
  
  
  ActivityTrain <- read.table("y_train.txt",
                            header = FALSE,
                            
                            sep="",
                            quote="",  
                            dec = ".",
                            stringsAsFactors=FALSE,
                            comment.char="",
                            nrows = 7352
  )
  
  TRAIN <- cbind.data.frame(subjectTrain, ActivityTrain, trainData )
  rm(list=c("ActivityTrain","subjectTrain","trainData"))
  
  setwd("..")
  
 return(TRAIN)
  
}