Get_fullDF <- function(train, test){
  
  DF <-  rbind.data.frame(train, test)
  
  features <- read.table("features.txt", sep =" ", header = F)
  features <-features%>%select(V2)
  features <-as.character(features$V2)
  
  names(DF)[1] = "Subject"
  names(DF)[2]  = "Activity"
  names(DF)[3:563] = features
  
  
  rm("features")
  
  
  return(DF)
  
  
  
}