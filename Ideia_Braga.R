library(e1071)

x<-rbind(matrix(rnorm(100,mean=0,sd=0.1),ncol=2),
         matrix(rnorm(100,mean=5,sd=0.1),ncol=2),
         matrix(rnorm(100,mean=10,sd=0.1),ncol=2)
         )
cl<-cmeans(x,4,20,verbose=TRUE,method="cmeans",m=2)
U<-cl$membership

plot(x[1:50,1], x[1:50,2], col='red', ylim=c(min(x[,2]), max(x[,2])), xlim = c(min(x[,1]), max(x[,1])),
     xlab = 'x1', ylab = 'x2')
par(new=TRUE)
plot(x[51:100,1], x[51:100,2], col='blue', ylim=c(min(x[,2]), max(x[,2])), xlim = c(min(x[,1]), max(x[,1])),
     xlab = 'x1', ylab = 'x2')
image(U %*% t(U))