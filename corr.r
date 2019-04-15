corr<-function (directory,threshold = 0)
{
  cs<-complete(directory)
  cs_th<-cs[cs$nobs>threshold,]
  nn=nrow(cs_th)
  corr<-rep(0,nn)
  if (nn>0)
  {
      n<-formatC(cs_th$id,width = 3,flag = "0")
    fn<-paste(directory,paste(n,"csv",sep="."),sep="\\")
    d<-lapply(fn,read.csv)
    for (i in 1:nn)
      corr[i]<-cor(d[[i]]$nitrate,d[[i]]$sulfate,use = "complete.obs")
    
  }
  corr
}
  

