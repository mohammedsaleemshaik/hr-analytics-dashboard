SELECT
  COUNT(*) AS total_employees,
  ROUND(AVG(Age), 1) AS average_age,
  ROUND(AVG(MonthlyIncome), 2) AS average_monthly_income,
  ROUND(
    COUNTIF(Attrition = TRUE) * 100.0 / COUNT(*),
    2
  ) AS attrition_rate
FROM `hr-analytics-dashboard-504104.hr.employees`;
