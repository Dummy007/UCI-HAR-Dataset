
Get_testDF <- function (){

setwd("./test")


testData <- read.table("X_test.txt",
                       header = FALSE,
                       
                       sep="",
                       quote="",  
                       dec = ".",
                       stringsAsFactors=FALSE,
                       comment.char="",
                       nrows = 2947
)

subjectTest <- read.table("subject_test.txt",
                         header = FALSE,
                         
                         sep="",
                         quote="",  
                         dec = ".",
                         stringsAsFactors=FALSE,
                         comment.char="",
                         nrows = 2947
)


ActivityTest <- read.table("y_test.txt",
                          header = FALSE,
                          
                          sep="",
                          quote="",  
                          dec = ".",
                          stringsAsFactors=FALSE,
                          comment.char="",
                          nrows = 2947
)

TEST <- cbind.data.frame(subjectTest, ActivityTest, testData)
rm(list=c("ActivityTest","subjectTest","testData"))

  setwd("..")

return(TEST)

}