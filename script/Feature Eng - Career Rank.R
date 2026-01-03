# ==========================================
# Feature Eng - Career Rank
# ==========================================
# Convert categorical experience levels into a hierarchical numerical ladder
model_data_step2 <- model_data_step1 %>%
  mutate(
    career_rank = case_when(
      experience_level == "Entry"     ~ 1,
      experience_level == "Mid"       ~ 2,
      experience_level == "Senior"    ~ 3,
      experience_level == "Executive" ~ 4,
      TRUE ~ 1 # Default to entry if unknown
    )
  )