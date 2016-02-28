source("getdata.R")

png("plot4.png",width=400,height=400)
par(mfrow=c(2,2))
hist(df[,3],col="red",main="Global Active Power",xlab = "Global Active Power (kilowatts)",ylab = "Frequency")
plot(df[,2],df[,5],type="l",xlab="datetime",ylab="Voltage")
plot(df[,2],df[,7],col="black",type='l',ylab = "Energy sub metering",xlab="")
lines(df[,2],df[,8],col="red")
lines(df[,2],df[,9],col="blue")
legend("topright",names(df[,7:9]),col=c("black","red","blue"),lwd=1,lty=1,bty="n",cex=0.5)
plot(df[,2],df[,4],type='l',xlab="datetime",ylab="Global_reactive_power")
dev.off()

#my system language setting made the "thursday, friday, saturday" on x axis into Chinese, the code shall work fine in english environment