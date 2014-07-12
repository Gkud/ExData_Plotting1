myFile <- "household_power_consumption.txt"
mySql <- "SELECT * FROM file WHERE Date='1/2/2007' OR Date='2/2/2007'"
data <- read.csv.sql(myFile,mySql,sep=";")
a <- data$Sub_metering_1
b <- data$Sub_metering_2
c <- data$Sub_metering_3
png(filename="plot3.png", height=480, width=480, units="px")
plot(x, a, type="l", col="black", ylab="Energy sub metering", xlab="")
lines(x, b, col="red")
lines(x, c, col="blue")
legend("topright",lty="solid",col = c("black","red","blue"), legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()