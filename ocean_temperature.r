# Data: AIMS https://www.aims.gov.au/docs/data/data.html. "temp-logger.csv".
# Ocean water temperature at location Bramble Cay
# Two temperature sensor locations
# Multiple measurements taken per day
# Data file: "Bramble_Cay.csv", which is a subset of "temp-logger.csv" 

# libraries
library("xlsx")
library("readxl")

# Read MS Excel file
bramble_cay = read.csv("Bramble_Cay.csv",sep = ",",header = TRUE) # location: Brambles Cay
#bramble_cay = read_excel("temp-logger_copy.xlsx", sheet = "Bramble_Cay") # whole file


# subset dataframe. Plot temps for BRAMBLEFL1 LOCATION (Shallow depth)
bramble_cay_1 = bramble_cay[which(bramble_cay$LOCATION=="BRAMBLEFL1"), 
                            names(bramble_cay) 
                            %in% c("TIME","SITE","LOCATION", "NOMINAL_DEPTH", "WATER_TEMPERATURE")]
# bramble_cay_1$TIME <- as.Date(bramble_cay_1$TIME, format = "%Y-%m-%d) # date only
bramble_cay_1$TIME <- as.POSIXct.default(bramble_cay_1$TIME) # date and time
#x axis labels in the desired format

xtime = bramble_cay_1$TIME
ytemp = bramble_cay_1$WATER_TEMPERATURE
print(plot(ytemp~xtime, format="%d-%m-%Y", xlab="Date (Day-Month-Year)", pch=46, cex=0.5, col="blue", ylab="Temperature (C)", 
           main="Ocean Water Temperature at 2.6m to 3m depth"))


# subset dataframe. Plot temps for BRAMBLESL1 LOCATION (Deeper depth)
bramble_cay_2 = bramble_cay[which(bramble_cay$LOCATION=="BRAMBLESL1"), 
                            names(bramble_cay) %in% c("TIME","SITE","LOCATION", "NOMINAL_DEPTH", "WATER_TEMPERATURE")]

bramble_cay_2$TIME = as.POSIXct.default(bramble_cay_2$TIME) # Gives date and time
xtime = bramble_cay_2$TIME
ytemp = bramble_cay_2$WATER_TEMPERATURE
print(plot(ytemp~xtime, format="%d-%m-%Y", xlab="Date (Day-Month-Year)", pch=46, cex=0.5, col="blue", ylab="Temperature (C)", 
           main="Ocean Water Temperature at 3.1m to 5.1m depth"))
