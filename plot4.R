png("plot4.png", width=480, height=480)
par(mfrow=c(2,2))

# Top-left: Global Active Power
plot(data$DateTime, as.numeric(data$Global_active_power), type="l", 
     xlab="", ylab="Global Active Power")

# Top-right: Voltage
plot(data$DateTime, as.numeric(data$Voltage), type="l", 
     xlab="datetime", ylab="Voltage")

# Bottom-left: Energy Sub-Metering
plot(data$DateTime, as.numeric(data$Sub_metering_1), type="l", col="black",
     xlab="", ylab="Energy sub metering")
lines(data$DateTime, as.numeric(data$Sub_metering_2), col="red")
lines(data$DateTime, as.numeric(data$Sub_metering_3), col="blue")
legend("topright", col=c("black", "red", "blue"), 
       legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
       lty=1, bty="n")

# Bottom-right: Global Reactive Power
plot(data$DateTime, as.numeric(data$Global_reactive_power), type="l", 
     xlab="datetime", ylab="Global Reactive Power")

dev.off()

