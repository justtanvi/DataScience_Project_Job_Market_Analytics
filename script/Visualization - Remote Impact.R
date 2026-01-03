# ==========================================
#  Visualization - Remote Impact
# ==========================================
# visualize how remote work ratio affects salary
plot1 <- ggplot(model_data, aes(x = as.factor(remote_intensity), y = salary_in_usd)) +
  geom_boxplot(aes(fill = as.factor(remote_intensity))) +
  labs(title = "Impact of Remote Work on Salary",
       x = "Remote Intensity Score", y = "Salary (USD)")

print(plot1)