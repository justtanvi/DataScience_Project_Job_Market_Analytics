# ==========================================
# Initial Cleaning
# ==========================================
# Start the cleaning pipeline
clean_data_step1 <- raw_data %>%
  
  # Remove duplicate rows to ensure data integrity
  distinct() %>%
  
  # Remove rows where salary is missing, as this is our target variable
  drop_na(salary_in_usd)