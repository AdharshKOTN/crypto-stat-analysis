# CS6313: Statistial Methods for Data Science -S19
# Pat Dayton and AJ Rahendran

#install.packages("plyr")
library(plyr)
library(ggplot2)

# Load in the Etherium Tokens Information
df <- read.table("./tokenPrices/ether", 
                 col.names = c('Date',	'Open',	'High',	'Low',	'Close',	'Volume',	'MarketCap'),
                 skip = 1,
                 header = TRUE)

# Convert date to the correct format
df$Date = as.Date(df$Date,format='%m/%d/%Y')

# Check for duplicated
print(anyDuplicated(df))

# Plot Opening Price over Time
p = ggplot(aes(x=Date, y=Open), data = df) + geom_point()
print(p)