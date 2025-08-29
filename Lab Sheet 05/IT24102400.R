getwd()
setwd("C:\\Users\\PC\\Desktop\\3rd Semester\\PS\\Lab Sheet\\IT24102400")
getwd()

#01 Question)
Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE, sep = ",")
attach(Delivery_Times)
fix(Delivery_Times)

#02 Question)

delivery_hist <- hist(Delivery_Time_.minutes.,
                      main = "Histogram of Delivery Times",
                      xlab = "Delivery Time (minutes)",
                      breaks = seq(20, 70, length = 10), 
                      right = FALSE) 

#03 Question)

# The histogram is unimodal, with most deliveries between 35 and 45 minutes. 
#The shape is fairly balanced but slightly skewed to the right, 
#showing a few longer delivery times.

#04 Question)
breaks <- delivery_hist$breaks
freq <- delivery_hist$counts

cum.freq <- cumsum(freq)

new <- c(0)

new <- c(new, cum.freq)

plot(breaks, new,
     type = "b", # "b" for both points and lines
     main = "Cumulative Frequency Polygon for Delivery Times",
     xlab = "Delivery Times (minutes)",
     ylab = "Cumulative Frequency",
     ylim = c(0, max(cum.freq)))