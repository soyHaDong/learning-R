print('hello world')

library(ggplot2)
library(tidyr)  # Use tidyr for reshaping data

# Create a sample dataset
data <- data.frame(
  x = 1:10,
  y1 = c(2, 3, 5, 7, 11, 13, 17, 19, 23, 29),
  y2 = c(1, 4, 9, 16, 25, 36, 49, 64, 81, 100)
)

# Convert data to long format for ggplot
data_long <- pivot_longer(data, cols = c(y1, y2), names_to = "variable", values_to = "value")

# Plot the two series
ggplot(data_long, aes(x = x, y = value, color = variable)) +
  geom_line(size = 1) +
  geom_point(size = 2) +
  labs(title = "Plot of Two Series", x = "X Axis", y = "Values", color = "Series") +
    scale_x_continuous(breaks = data$x) +  # Show every x label
  scale_y_continuous(breaks = unique(data_long$value)) +  # Show every y label
  theme_minimal()
  theme_minimal()
