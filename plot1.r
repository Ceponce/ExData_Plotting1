library(ggplot2)


#Loading data into test2 and will shortly create the approriate data set into variable "data"
test2 <- read.table(file = "C:/Users/v-juponc/OneDrive/DataScience/ExploringDataAnalysis/exdata_data_household_power_consumption/household_power_consumption.txt", sep = ";", header = TRUE)


# setwd to store plot1 on github
setwd(dir = "GitHub/ExData_Plotting1/")


# date formating
# strptime(test2[1,1],format = "%d/%m/%Y")

# 2-day data using variables a and b, combined, variable truth, will hold both days
# a will hold first day and b will hold truths for first day
a <- strptime(test2[,1],format = "%d/%m/%Y") == strptime("01/02/2007",format = "%d/%m/%Y")
b <- strptime(test2[,1],format = "%d/%m/%Y") == strptime("02/02/2007",format = "%d/%m/%Y")

# truth holds truth for dates in first and second day
truth <- a | b

# data will be the data.frame for the 2-day data
data <- test2[truth,]

hist(as.numeric(as.character(data[,3])), xlab = "Global Active Power (Kilowatts)", col="red", main = "Global Active Power")

png(file ="plot1.png", width = 480, height = 480, units = "px")

hist(as.numeric(as.character(data[,3])), xlab = "Global Active Power (Kilowatts)", col="red", main = "Global Active Power")

dev.off()


