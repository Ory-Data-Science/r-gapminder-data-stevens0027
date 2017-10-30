# read a csv file, plot data
# columns = days
# rows = patients

analyze <- function(filename) {
  # Plots the mean, min & max
  # Input is a csv file
  dat <- read.csv(filename, header = FALSE)
  avg_day_inflammation <- apply(dat, 2, mean)
  plot(avg_day_inflammation)
  max_day_inflammation <- apply(dat, 2, max)
  plot(max_day_inflammation)
  min_day_inflammation <- apply(dat, 2, min)
  plot(min_day_inflammation)
}

filenames <- list.files(path = "data", pattern = "inflammation", full.names =TRUE)

for(f in filenames)
  print(f)
  analyze(f)

  #write a function called analyze all
  
  analyze_all("inflammation")