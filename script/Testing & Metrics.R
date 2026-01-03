# ==========================================
# Testing & Metrics
# ==========================================
# Generate predictions on the unseen test set
predictions <- predict(rf_model, test_set)

# Define and Calculate Accuracy Metrics
# R-Squared: How well the model explains variance
R2_score <- cor(predictions, test_set$salary_in_usd)^2
print(paste("R-Squared:", round(R2_score, 4)))

# MAE: Average error in dollars
MAE_score <- mean(abs(predictions - test_set$salary_in_usd))
print(paste("Mean Absolute Error:", round(MAE_score, 2)))