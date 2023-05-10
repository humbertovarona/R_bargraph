plot_data <- function(data, main_title="", xlab="", ylab="Value", ymin = NA, ymax = NA) {
  max_value <- max(data$value)
  min_value <- min(data$value)
  barplot(data$value, names.arg=data$name, col="lightblue", main=main_title, xlab=xlab, ylab=ylab, ylim=c(ymin, ymax))
  points(which.max(data$value), max_value, col="red", pch=21, bg="red", cex=2)
  points(which.min(data$value), min_value, col="blue", pch=21, bg="blue", cex=2)
}
