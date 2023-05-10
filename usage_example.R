# Example:

data <- read_data("./test.dat")
plot_data(data, main_title="Sample data", xlab="Category", ylab="Score", ymin=5, ymax=25)

save_plot("./test", "pdf", 4, 3)
