# ==========================================
# Text Standardization
# ==========================================
# Continue pipeline: Fix formatting issues in text columns
clean_data <- clean_data_step1 %>%
  
  # Convert job titles to Title Case (e.g., "DATA ANALYST" -> "Data Analyst")
  mutate(job_title = str_to_title(job_title))