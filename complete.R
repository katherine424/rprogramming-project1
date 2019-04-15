complete <-function (directory,id=1:332)
{
  n<-formatC(id,width = 3,flag = "0")
  fn<-paste(directory,paste(n,"csv",sep="."),sep="\\")
  d<-lapply(fn,read.csv)
  nn = length(id)
  nobs<-rep(0,nn)
  for (i in 1:nn)
  {
    cs<-complete.cases(d[[i]]);
    nobs[i] = sum(cs);
  }
  data.frame(id,nobs)
  
  
}