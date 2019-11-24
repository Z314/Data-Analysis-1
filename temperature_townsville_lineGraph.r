# Data source: BOM http://www.bom.gov.au/climate/data/index.shtml?bookmark=200.
# Data file name: townsville_temp_BOM.xlsx
# Plot of Townsville Temperatures: The Monthly mean maximum temperatures
# from 1940 to 2019.
# Line plots of raw data and also regression lines for four months of the year.

# libraries
library("xlsx")
library("readxl")

# Read MS Excel file
temp = read.xlsx("townsville_temp_BOM.xlsx", sheetName="Table 2",header = TRUE)


# plot with no markers (4 months plotted). Uncomment to plot other months.
plot(temp$Year, temp$Jan, type = "n", 
     main = "Monthly Mean Maximum Temperature in Townsville", 
     xlab = "Year", ylab = "Temperature (C)", ylim = c(20, 35))
lines(temp$Year, temp$Jan, col="black",lty=1)
# lines(temp$Year, temp$Feb, col="blue",lty=1)
# lines(temp$Year, temp$Mar, col="red",lty=1)
lines(temp$Year, temp$Apr, col="orange",lty=1)
# lines(temp$Year, temp$May, col="cyan",lty=1)
# lines(temp$Year, temp$Jun, col="green",lty=1)
lines(temp$Year, temp$Jul, col="red",lty=1)
# lines(temp$Year, temp$Aug, col="dodgerblue4",lty=1)
# lines(temp$Year, temp$Sep, col="firebrick",lty=1)
lines(temp$Year, temp$Oct, col="deepskyblue",lty=1)
# lines(temp$Year, temp$Nov, col="purple",lty=1)
# lines(temp$Year, temp$Dec, col="gold",lty=1)

# Add regression lines
abline(lm(temp$Jan ~ temp$Year), col="black")
abline(lm(temp$Apr ~ temp$Year), col="orange")
abline(lm(temp$Jul ~ temp$Year), col="red")
abline(lm(temp$Oct ~ temp$Year), col="deepskyblue")

# legend
legend(2000,23,legend=c("Jan","Apr","Jul", "Oct"), 
       col=c("black","orange","red", "deepskyblue"),
       lty=c(1,1,1,1), ncol=2, cex=0.75)

