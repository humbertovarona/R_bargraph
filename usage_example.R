data <- read_data("./test.dat")

plot_data(data, main_title="Sample data", xlab="Category", ylab="Score", ymin=5, ymax=25)

save_plot("./data_plot", "jpeg", 4, 3, 500)
