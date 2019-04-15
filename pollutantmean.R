pollutantmean<-function (directory="specdata",pollutant,id=1:332)
{
  n<-formatC(id,width = 3,flag = "0")
  fn<-paste(directory,paste(n,"csv",sep="."),sep="\\")
  d<-lapply(fn,read.csv)
  nn = length(id)
  m=rep(0,nn)
  if (pollutant == "sulfate")
  {
    for (i in 1:nn)
      m[i]=mean(d[[i]]$sulfate,na.rm="true")
  }
    

    
  else if (pollutant == "nitrate") 
  {
    for (i in 1:nn )
      m[i]=mean(d[[i]]$nitrate,na.rm="true")

  }
   
  else print("please specify the correct pollutant")
  
  mean(m,na.rm="true")
                  
}
