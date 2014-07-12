myFile <- "household_power_consumption.txt"
mySql <- "SELECT * FROM file WHERE Date='1/2/2007' OR Date='2/2/2007'"
data <- read.csv.sql(myFile,mySql,sep=";")
d <- data$Global_active_power
png(filename="plot2.png", height=480, width=480, units="px")
x <- as.POSIXct(strptime(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S"))
plot(x, d, type="l", xlab="", ylab="Global Active Power(kilowatts)")
dev.off()