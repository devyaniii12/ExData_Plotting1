png("plot1.png", width=480, height=480)
hist(as.numeric(data$Global_active_power), col="red", 
     main="Global Active Power", xlab="Global Active Power (kilowatts)", 
     ylab="Frequency", breaks=50)
dev.off()
