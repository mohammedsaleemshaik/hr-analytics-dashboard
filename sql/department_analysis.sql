SELECT
  Department,
  COUNT(*) AS total_employees,
  ROUND(AVG(MonthlyIncome), 2) AS average_salary,
  ROUND(
    COUNTIF(Attrition = TRUE) * 100.0 / COUNT(*),
    2
  ) AS attrition_rate
FROM `hr-analytics-dashboard-504104.hr.employees`
GROUP BY Department
ORDER BY total_employees DESC;
