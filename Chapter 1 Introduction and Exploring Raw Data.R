###Chapter 1 Introduction and Exploring Raw Data

###Here's what Messy Data Looks Like
# Weather in Data Camp's workspace
# View the first 6 rows of data
head(weather)

# View the last 6 rows of data
tail(weather)

# View a condensed summary of the data
str(weather)

###Here's what Clean Data Look Like
# View the first 6 rows of data
head(weather_clean)

# View the last 6 rows of data
tail(weather_clean)

# View a condensed summary of the data
str(weather_clean)

###Getting a Feel for Your Data
# Check the class of bmi
class(bmi_clean)

# Check the dimensions of bmi
dim(bmi_clean)

# View the column names of bmi
names(bmi_clean)

###Viewing the Structure of Your Data
# Check the structure of bmi
str(bmi_clean)

# Load dplyr
library(dplyr)

# Check the structure of bmi, the dplyr way
glimpse(bmi_clean)

# View a summary of bmi
summary(bmi_clean)

###Looking at Your Data
# Print bmi to the console
bmi_clean

# View the first 6 rows
head(bmi_clean)

# View the first 15 rows
head(bmi_clean, 15)

# View the last 6 rows
tail(bmi_clean)

# View the last 10 rows
tail(bmi_clean, 10)

###Visualizing your Data
# Histogram of BMIs from 2008
hist(bmi_clean$Y2008)

# Scatter plot comparing BMIs from 1980 to those from 2008
plot(bmi_clean$Y1980, bmi_clean$Y2008)

