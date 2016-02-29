filename<-"household_power_consumption.txt"
edata<-read.table(filename,
                  header=TRUE,
                  sep=";",
                  colClasses=c("character", "character", rep("numeric",7)),
                  na="?")
edata0<-edata

edata<-edata0
edata$datetime<-strptime(paste(edata[,1],edata[,2]),"%d/%m/%Y %H:%M:%S")
edata[,1]<-as.Date(edata[,1],format="%d/%m/%Y")
dates<-as.Date(c("2007-02-01","2007-02-02"),"%Y-%m-%d")
df<-subset(edata,Date%in%dates)