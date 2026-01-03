# ==========================================
# Visualization - Career Growth
# ==========================================
# Visualize salary potential across experience levels using a Violin Plot
plot2 <- ggplot(model_data, aes(x = experience_level, y = salary_in_usd)) +
  geom_violin(aes(fill = experience_level), trim = FALSE) +
  labs(title = "Salary Potential by Experience Level",
       y = "Annual Salary (USD)",
       x = "Career Stage")

print(plot2)