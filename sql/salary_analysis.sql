SELECT
  JobRole,
  COUNT(*) AS total_employees,
  ROUND(AVG(MonthlyIncome), 2) AS average_salary
FROM `hr-analytics-dashboard-504104.hr.employees`
GROUP BY JobRole
ORDER BY average_salary DESC;
