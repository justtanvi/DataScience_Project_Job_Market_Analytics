# ==========================================
# Feature Eng - Skill Flag
# ==========================================
# Finalize the model dataset by extracting high-value keywords
model_data <- model_data_step2 %>%
  mutate(
    # Check if job title contains "AI" or "Data Scientist"
    skill_flag = ifelse(str_detect(job_title, "AI|Data Scientist"), 1, 0)
  )