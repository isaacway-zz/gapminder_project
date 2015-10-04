#Demo for the software carpentry workshop
#At U of A
#Isaac Way
#isaac@email.arizona.edu
#10-2-15
#

#testing on
DEBUG = TRUE
#command line args

if (!DEBUG){
  args <- commandArgs(trailingOnly = TRUE)
}

if (DEBUG){
  args <- "data/10-3-2015_Afghanistan_fixed_IW.cc-Afghanistan.cc.txt.csv" #path to file for interactive testing overloading args
}
#read in Afganistan data from Tab seporated file \t
#data.in <- read.table(file = args[1], sep = "\t", header = FALSE)
if (DEBUG){
  data.in <- read.csv(file = "data/10-3-2015_Afghanistan_fixed_IW.cc-Afghanistan.cc.txt.csv")
} else {
  
}

data.in <- order(data.in[,2], )

filename <- args[1]

#basic plot function
make_plot <- function(country.data){
  plot(x = country.data[,2], 
       y = country.data[,6], 
       main = paste("Year vs GDP", country.data[1,1]), 
       xlab = "Year", 
       ylab = "GDP Per",
       #col = "blue",
       cex = country.data[,3]/10000000,
       col = rep(c("red", "blue"),6),
       #cex = 2,
       pch = 20,
       #asp = 1/10
  )
}

#basic png plot function
make_plot_png <- function(country.data, filename){
  png(paste0(filename, ".png"))
  plot(x = country.data[,2], 
       y = country.data[,6], 
       main = paste("Year vs GDP", country.data[1,1]), 
       xlab = "Year", 
       ylab = "GDP Per",
       #col = "blue",
       #divide pop by 1000000 to make data scale
       cex = country.data[,3]/10000000,
       col = rep(c("red", "blue"),6),
       #cex = 2,
       pch = 20,
       #asp = 1/10
  )
  dev.off
}

#basic png plot function
make_plot_pdf <- function(country.data, filename){
  pdf(paste0(filename,".pdf"))
  plot(x = country.data[,2], 
       y = country.data[,6], 
       main = paste("Year vs GDP", country.data[1,1]), 
       xlab = "Year", 
       ylab = "GDP Per",
       #col = "blue",
       #divide pop by 1000000 to make data scale
       cex = country.data[,3]/10000000,
       col = rep(c("red", "blue"),6),
       #cex = 2,
       pch = 20,
       #asp = 1/10
  )
  dev.off
}



make_plot_png(data.in)


