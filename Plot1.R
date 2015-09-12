#-------------------------------------------
# Project Course1: Exploratory Data Analysis
# Author: Marcelo Rondelli Brito
# Date: 10/09/2015
#-------------------------------------------

#1# Read the Data
dataFile <- "data/household_power_consumption.txt"
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

#2# Create a subset data to work and format
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
globalActivePower <- as.numeric(subSetData$Global_active_power)

#3# Set the output file as especified and draw the grafic
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()