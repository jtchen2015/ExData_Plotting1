source("getdata.R")

png("plot3.png",width=400,height=400)
plot(df[,2],df[,7],col="black",type='l',ylab = "Energy sub metering",xlab="")
lines(df[,2],df[,8],col="red")
lines(df[,2],df[,9],col="blue")
legend("topright",names(df[,7:9]),col=c("black","red","blue"),lwd=1,lty=1)
dev.off()

#my system language setting made the "thursday, friday, saturday" on x axis into Chinese, the code shall work fine in english environment