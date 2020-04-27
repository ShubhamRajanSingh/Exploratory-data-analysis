x<-read.csv("E:\\RWorkplace\\data\\household_power_consumption.txt",header=T, sep=";")
y<-subset(x, Date %in% c("1/2/2007","2/2/2007"))
TZ="UTC"
y$Date <- as.Date(y$Date, format="%d/%m/%Y")
datetime <- paste(as.Date(y$Date), y$Time)
y$Datetime <- as.POSIXct(datetime)
with(y, {
  plot(Sub_metering_1~Datetime, type="l",
       ylab="Global Active Power (kilowatts)", xlab="")
  lines(Sub_metering_2~Datetime,col='yellow')
  lines(Sub_metering_3~Datetime,col='orange')
})
legend("topright", col=c("black", "yellow", "orange"), lty=1, lwd=2, 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.copy(png, file="plot3.png", height=480, width=480)
dev.off()