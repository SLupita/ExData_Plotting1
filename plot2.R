data2$Date <- format(as.Date(data2$Date), "%Y-%m-%d")
##data2$Time <- strptime(data2$Time, "%H:%M:%S")
data3 <- mutate(data2, t = as.POSIXct(paste(Date,Time), format="%Y-%m-%d %H:%M:%S"))
plot(data3$t,data3$Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)")
dev.copy(png, file="plot2.png")
dev.off()

