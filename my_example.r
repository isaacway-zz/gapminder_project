#Demo for the software carpentry workshop RMD helper
#At U of A
#Isaac Way
#isaac@email.arizona.edu
#10-3-15
#

gap.in <- read.table("output/combined_gapMinder.tsv", sep = "\t", header = TRUE)

my_make_plot <- function(country.data, name){
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

make_plot <-function(name){
  my_make_plot(gap.in, name)
}