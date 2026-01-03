# ==========================================
# Setup and Loading
# ==========================================
# Load necessary libraries for data manipulation and modeling
library(tidyverse)
library(randomForest)
library(caret) # For data splitting

# Load the raw dataset (Ensure file is in your working directory)
# Data from multiple sources loaded into a single file
raw_data <- read_csv("job_market_data.csv")