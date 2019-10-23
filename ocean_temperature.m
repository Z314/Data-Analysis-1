% Data source: AIMS https://www.aims.gov.au/docs/data/data.html. "temp-logger.csv".
% Ocean water temperature at location Bramble Cay.
% Two temperature sensor locations at Bramble Cay:BRAMBLEFL1, BRAMBLESL1.
% Multiple measurements taken per day.
% Data file: "Bramble_Cay-BRAMBLEFL1.csv" and "Bramble_Cay-BRAMBLESL1.csv,
% which is a subset of "temp-logger.csv".

% Import data: 2.6m to 3m water depth
% Read in csv file as a table
data = readtable('Bramble_Cay-BRAMBLEFL1.csv', 'Format', '%s %s %s %f %f %f %f');
%  convert TIME column to datetime array
data.TIME = datetime(data.TIME,'TimeZone','Australia/Sydney','InputFormat', 'yyyy-MM-dd H:mm:ss XXX');

% 1st scatter plot
figure(1)
x = datenum(data.TIME);
y = data.WATER_TEMPERATURE;
a = 36;
c = 'blue';
markertype = 'o';
scatter(x, y, a, c, markertype)
title('Ocean Water Temperature 2.6m to 3m Depths')
xlabel('Date (Year/Month/Day)') 
ylabel('Temperature (C)') 
ylim([20 35])
datetick('x', 'yyyy-mm-dd')

% Import data: 3.1m to 5.1m water depth
% Read in csv file as a table
data = readtable('Bramble_Cay-BRAMBLESL1.csv', 'Format', '%s %s %s %f %f %f %f');
%  convert TIME column to datetime array
data.TIME = datetime(data.TIME,'TimeZone','Australia/Sydney','InputFormat', 'yyyy-MM-dd H:mm:ss XXX');

% 2nd scatter plot
figure(2)
x = datenum(data.TIME);
y = data.WATER_TEMPERATURE;
a = 36;
c = 'blue';
markertype = 'o';
scatter(x, y, a, c, markertype)
title('Ocean Water Temperature 3.1m to 5m Depths')
xlabel('Date (Year/Month/Day)') 
ylabel('Temperature (C)') 
ylim([20 35])
datetick('x', 'yyyy-mm-dd')