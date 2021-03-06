x<-read.csv("E:\\RWorkplace\\data\\household_power_consumption.txt",header=T, sep=";")
y<-subset(x, Date %in% c("1/2/2007","2/2/2007"))
z <- as.numeric(y$Global_active_power)
png("plot1.png" ,width=500,height=500)
hist(z,xlab="Global_active_power",col="yellow",main="histogram of global active power" )
dev.copy(png,"plot_1.png")
dev.off()