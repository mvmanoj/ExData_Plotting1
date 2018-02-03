## Set Workign Diectorya and soure the script to lod the file.

setwd("C:/R/Coursera/R/4.1/")
source("41Load.R")
png(filename = "plot2.png", width = 480, height = 480, units = "px", bg = "transparent")
plot(DateTime, Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()
