read_data <- function(filename) {
  data <- read.table(filename, sep=";", header=TRUE)
  if (any(is.na(data))) {
    data[is.na(data)] <- 0 
  }
  return(data)
}
