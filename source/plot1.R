myFile <- "household_power_consumption.txt"
mySql <- "SELECT * FROM file WHERE Date='1/2/2007' OR Date='2/2/2007'"
data <- read.csv.sql(myFile,mySql,sep=";")
d <- data$Global_active_power
png(filename="plot1.png", height=480, width=480, units="px")
hist(d, xlab='Global Active Power(kilowatts)', main='Global Active Power', col='red')
dev.off()