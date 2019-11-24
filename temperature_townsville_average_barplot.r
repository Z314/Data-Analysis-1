# Data source: BOM http://www.bom.gov.au/climate/data/index.shtml?bookmark=200.
# Data file name: townsville_temp_BOM.xlsx
# Barplot of Townsville Temperatures: The Annual average maximum temperatures
# from 1941 to 2018.
# Vertical and horizontal barplots are compiled.

# libraries
library("xlsx")
library("readxl")

# Read MS Excel file
annual_avg_temp = read.xlsx("townsville_temp_BOM.xlsx", sheetName="Table 3",header=TRUE)

# convert years from num to char string
annual_avg_temp$Year = as.character(annual_avg_temp$Year)

# Plot the bar chart (vertical bars)
barplot(annual_avg_temp$Annual,names.arg=annual_avg_temp$Year, xlab="Year",
        ylab="Temperature (C)",col="blue",
        main="Annual Average Temperature in Townsville", 
        las=2, space = 0, cex.names = 0.5, axis.lty=1)

# Plot the bar chart (horizontal bars)
barplot(annual_avg_temp$Annual,names.arg=annual_avg_temp$Year, xlab="Temperature (C)",
        ylab="Year",col="blue",
        main="Annual Average Temperature in Townsville", 
        las=2, space = 0, cex.names = 0.5, axis.lty=1, horiz = TRUE)