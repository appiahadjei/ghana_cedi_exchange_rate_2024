# Load libraries
library(ggplot2)
library(dplyr)

# Monthly percentage changes for 2024 (from the Bank of Ghana)
percentage_changes <- c(12.46, 12.78, 13.38, 13.89, 15.02, 15.56,
                        15.81, 16.04, 16.17, 16.71, 16.79, 15.88)

# Create a vector of months
months <- c("Jan", "Feb", "Mar", "Apr", "May", "Jun",
            "Jul", "Aug", "Sep", "Oct", "Nov", "Dec")

# Create a data frame to hold the months and percentage changes
data <- data.frame(
  Month = factor(months, levels = months),
  PercentageChange = percentage_changes
)

# Chart
ggplot(data, aes(x = Month, y = PercentageChange, group = 1)) +
  geom_line(color = "darkred", size = 1.2) +
  geom_point(aes(color = PercentageChange), size = 6) +
  geom_label(aes(label = paste0(PercentageChange, "%")),
             fill = "white", color = "black", size = 3, 
             label.padding = unit(0.2, "lines"),
             label.size = 0.2, vjust = -0.5) +
  scale_color_gradient(low = "darkorange", high = "darkred") +
  theme_minimal(base_family = "Arial") +
  labs(
    title = "2024 GHS to USD Exchange Rate",
    subtitle = "Monthly changes in the exchange rate",
    x = NULL,                                             # Remove X-axis title
    y = NULL,                                             # Remove Y-axis label
    caption = "Data Source: Bank of Ghana | Chart by Michael Appiah Adjei"
  ) +
  theme(
    plot.title = element_text(hjust = 0.5, size = 20, face = "bold", color = "darkred"),
    plot.subtitle = element_text(hjust = 0.5, size = 14, color = "gray30"),
    plot.caption = element_text(hjust = 1, size = 8, color = "gray50"),
    axis.text.x = element_text(size = 12, color = "darkred", face = "bold"),
    axis.text.y = element_blank(),
    panel.grid = element_blank(),                       # Remove all grid lines
    legend.position = "none"
  ) +
  annotate(
    "segment", 
    x = which.max(data$PercentageChange), 
    xend = which.max(data$PercentageChange), 
    y = max(data$PercentageChange) - 2, 
    yend = max(data$PercentageChange),
    linetype = "dashed",
    color = "darkgray", size = 0.8
  ) +
  annotate(
    "text", 
    x = which.max(data$PercentageChange), 
    y = max(data$PercentageChange) - 2.1,
    label = "Highest Change", 
    color = "darkgray", size = 4, 
    hjust = 0.5
  ) +
  annotate(
    "segment", 
    x = which.min(data$PercentageChange), 
    xend = which.min(data$PercentageChange), 
    y = min(data$PercentageChange) + 1.5,
    yend = min(data$PercentageChange),
    linetype = "dashed",
    color = "darkgray", size = 0.8
  ) +
  annotate(
    "text", 
    x = which.min(data$PercentageChange), 
    y = min(data$PercentageChange) + 1.7,
    label = "Lowest Change", 
    color = "darkgray", size = 4, 
    hjust = 0.5
  )