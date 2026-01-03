# ==========================================
# Feature Eng - Remote Intensity
# ==========================================
# Create numerical feature for work flexibility
model_data_step1 <- clean_data %>%
  mutate(
    remote_intensity = case_when(
      work_setting == "On-site" ~ 0.0, # Zero flexibility
      work_setting == "Hybrid"  ~ 0.5, # Middle ground
      work_setting == "Remote"  ~ 1.0, # Full flexibility
      TRUE ~ 0.0 # Default fallback
    )
  )