setwd("C://Users//it24103902//Desktop//IT24103902")

# 1. Import the dataset

Delivery_Times <- read.table('Exercise - Lab 05.txt', header = TRUE,sep = ",")

str(Delivery_Times)
head(Delivery_Times)

# 2. Draw histogram with nine class intervals (20-70), right open intervals
breaks <- seq(20, 70, length.out = 10)

delivery_data <- Delivery_Times[, 1]  


hist(delivery_data, 
     breaks = breaks,
     right = FALSE, 
     main = "Histogram of Delivery Times",
     xlab = "Delivery Time (minutes)",
     ylab = "Frequency",
     xlim = c(20, 70))


# 3. Comment on the shape of the distribution
# The distribution appears to be approximately symmetric/bell-shaped with 
# most delivery times concentrated around 35-55 minutes. There are fewer
# extremely short (20-25 min) and long (65-70 min) delivery times.

# 4. Draw cumulative frequency polygon (ogive) in a separate plot
# Calculate cumulative frequencies

freq_table <- table(cut(delivery_data, 
                        breaks = breaks, 
                        right = FALSE))

cum_freq <- cumsum(freq_table)


plot(breaks[-1], cum_freq,  
     type = "o", 
     pch = 16,    
     
     main = "Cumulative Frequency Polygon (Ogive) of Delivery Times",
     xlab = "Delivery Time (minutes)",
     ylab = "Cumulative Frequency",
     xlim = c(20, 70),
     ylim = c(0, max(cum_freq) + 5))
