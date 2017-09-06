###Chapter 2 Tidying Data

###Gathering Columns into Key-Value Pairs
library(tidyr)
library(dplyr)
# Apply gather() to bmi and save the result as bmi_long
bmi_long <- gather(bmi_clean, year, bmi_val, -Country)

# View the first 20 rows of the result
head(bmi_long, 20)

###Spreading Key-Value Pairs into Columns
# Apply spread() to bmi_long
bmi_wide <- spread(bmi_long, year, bmi_val)

# View the head of bmi_wide
head(bmi_wide)

###Seperating Columns
# bmi_cc loaded in Data Camp's workspace
# Apply separate() to bmi_cc
bmi_cc_clean <- separate(bmi_cc, col = Country_ISO, into = c("Country", "ISO"), sep = "/")

# View the head of the result
head(bmi_cc_clean)

###Uniting Columns
# Apply unite() to bmi_cc_clean
bmi_cc <- unite(bmi_cc_clean, Country_ISO, Country, ISO, sep = "-")

# View the head of the result
head(bmi_cc)

###Column Headers are Values, Not Variable Names
## tidyr and dplyr are already loaded for you

# View the head of census
head(census)

# Gather the month columns
census2 <- gather(census, month, amount, -YEAR)

# Arrange rows by YEAR using dplyr's arrange
census2 <- arrange(census2, YEAR)

# View first 20 rows of census2
head(census2, 20)

###Variables are Stored in Both Rows and Columns
## tidyr is already loaded for you

# View first 50 rows of census_long
# census_long in Data Camp's workspace
head(census_long, 50)

# Spread the type column
census_long2 <- spread(census_long, type, amount)

# View first 20 rows of census_long2
head(census_long2, 20)

###Multiple Values are Stored in one column
## tidyr is already loaded for you

# View the head of census_long3
# census_long3 in Data Camp's workspace
head(census_long3)

# Separate the yr_month column into two
census_long4 <- separate(census_long3, yr_month, c("year", "month"))

# View the first 6 rows of the result
head(census_long4)