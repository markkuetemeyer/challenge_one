if (!is.null(parent.frame(2)$ofile)) {
  this.dir <- dirname(parent.frame(2)$ofile)
  setwd(this.dir)
}


## Load library ----

library(data.table)
library(lsr)
library(ggplot2)

# Read dataset ----

data = fread('dir/machine_data.csv',
          dec=".", sep=",") 

# Question ----

## 2. Consider the following plot of the number of items sold per machine and day

# a. Is there a general trend in the number of snacks and drinks as the months progress
#from January to April? Is it the same for snacks and drinks? Why do you think that
#might be so?

#Based on the graphic we can observe that for the period between January to April, 
#the consumption of snacks remains stable, while the consumption of drinks  shows a tendency to increase. 
#This may occur due to a shift in seasons (the higher temperatures, the higher consumption of beverages). 

# b. Is there shorter time period trend as well? Is it the same for snacks and drinks? What
#do you might be the cause?

#The graphic also shows short time period trends that show peaks and valleys for one vending machine. 
#Given that these match between snacks and drinks, we can assume that they happen due to the refill nature 
#of a vending machine: the peaks generate when consumption increases when the machine has just been refilled 
#because it has more variety of products to offer, and viceversa.

## 4. [2 points] According to the following boxplot, what is the median number of hotels in the machine area? 

# Boxplot ----

boxplot(data$num_hotels, data = data, ylim = c(0,2))

# Answer ----

## The median number of hotels in the machine area is 0.
