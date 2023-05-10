data <- read_data("/Users/varona/Laboro/Papers/Algorithms_and_apps/R/bargraph/test.dat")

plot_data(data, main_title="Sample data", xlab="Category", ylab="Score", ymin=5, ymax=25)

save_plot("/Users/varona/Laboro/Papers/Algorithms_and_apps/R/bargraph/data_plot", "jpeg", 4, 3, 500)
