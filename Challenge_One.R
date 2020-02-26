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

## 4. [2 points] According to the following boxplot, what is the median number of hotels in the machine area? 

# Boxplot ----

boxplot(data$num_hotels, data = data, ylim = c(0,2))

# Answer ----

## The median number of hotels in the machine area is 0.
