SELECT
  Gender,
  COUNT(*) AS total_employees
FROM `hr-analytics-dashboard-504104.hr.employees`
GROUP BY Gender
ORDER BY total_employees DESC;
