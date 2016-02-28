source("getdata.R")

png("plot1.png", width=400, height=400)
hist(df[,3],col="red",main="Global Active Power",xlab = "Global Active Power (kilowatts)",ylab = "Frequency")
dev.off()