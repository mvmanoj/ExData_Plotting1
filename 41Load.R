#Load the Input File into fileame
filename <- "household_power_consumption.txt"
data <- read.table(filename,header = TRUE,sep = ";
                   ",colClasses = c("character", "character", rep("numeric",7)),na = "?")
dim(data)
attach(data)


## Select data from the dates 2007-02-01 and 2007-02-02
subset <- Date == "1/2/2007" | Date == "2/2/2007"
newData <- data[subset, ]
attach(newData)
x <- paste(Date, Time)
newData$DateTime <- strptime(x, "%d/%m/%Y %H:%M:%S")
rownames(newData) <- 1:nrow(newData)
dim(newData)
attach(newData)
