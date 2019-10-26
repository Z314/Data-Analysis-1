"""
Data source: AIMS https://www.aims.gov.au/docs/data/data.html. "temp-logger.csv".
Ocean water temperature at location Bramble Cay.
Two temperature sensor locations at Bramble Cay:BRAMBLEFL1, BRAMBLESL1.
Multiple measurements taken per day.
Data file: "Bramble_Cay-BRAMBLEFL1.csv" and "Bramble_Cay-BRAMBLESL1.csv,
which is a subset of "temp-logger.csv".
"""

import matplotlib.pyplot as plt
import pandas as pd

# Sensor depth 2.6m to 3m
filename = 'Bramble_Cay-BRAMBLEFL1.csv'
df = pd.read_csv(filename, header=0, sep=',')
print(df.shape)
print(df.head)
df['TIME'] = pd.to_datetime(df['TIME'])

plt.figure()
plt.title('Ocean Water Temperature 2.6m to 3m Depths')
plt.xlabel('Date (Year/Month)')
plt.ylabel('Temperature (C)')
plt.scatter(df['TIME'], df['WATER_TEMPERATURE'], c="blue", marker=".")
plt.show()


# Sensor depth 3.1m to 5m
filename = 'Bramble_Cay-BRAMBLESL1.csv'
df = pd.read_csv(filename, header=0, sep=',')
print(df.shape)
print(df.head)
df['TIME'] = pd.to_datetime(df['TIME'])

plt.figure()
plt.title('Ocean Water Temperature 3.1m to 5m Depths')
plt.xlabel('Date (Year/Month)')
plt.ylabel('Temperature (C)')
plt.scatter(df['TIME'], df['WATER_TEMPERATURE'], c="blue", marker=".")
plt.show()
