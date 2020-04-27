x<-read.csv("E:\\RWorkplace\\data\\household_power_consumption.txt",header=T, sep=";")
y<-subset(x, Date %in% c("1/2/2007","2/2/2007"))
TZ="UTC"
y$Date <- as.Date(y$Date, format="%d/%m/%Y")
datetime <- paste(as.Date(y$Date), y$Time)
y$Datetime <- as.POSIXct(datetime)
with(y, {
  plot(Global_active_power~Datetime,type="l" ,
       ylab="Global Active Power (kilowatts)", xlab="")
})
dev.copy(png, file="plot2.0.png", height=480, width=480)
dev.off()