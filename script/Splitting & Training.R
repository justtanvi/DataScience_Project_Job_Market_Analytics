# ==========================================
# Splitting & Training
# ==========================================
# Split data: 80% for training, 20% for testing
set.seed(42) # Ensure reproducibility
train_index <- createDataPartition(model_data$salary_in_usd, p = 0.8, list = FALSE)
train_set <- model_data[train_index, ]
test_set  <- model_data[-train_index, ]

# Train the Random Forest Model
rf_model <- randomForest(
  salary_in_usd ~ remote_intensity + career_rank + skill_flag,
  data = train_set,
  ntree = 500,
  importance = TRUE
)
print(rf_model)