## Set Workign Diectorya and soure the script to lod the file.

setwd("C:/R/Coursera/R/4.1/")
source("41Load.R")
png(filename = "plot1.png", width = 480, height = 480, units = "px", bg = "transparent")
hist(Global_active_power, col = "red",  main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)", breaks = 12, ylim = c(0, 1200))
dev.off()


