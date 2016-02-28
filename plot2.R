source("getdata.R")

png("plot2.png",width=400,height=400)
plot(df[,2],df[,3],type='l',ylab = "Global Active Power (kilowatts)",xlab="")
dev.off()

#my system language setting made the "thursday, friday, saturday" on x axis into Chinese, the code shall work fine in english environment