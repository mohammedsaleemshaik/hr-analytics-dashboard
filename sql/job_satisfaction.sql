SELECT
  JobSatisfaction,
  COUNT(*) AS total_employees
FROM `hr-analytics-dashboard-504104.hr.employees`
GROUP BY JobSatisfaction
ORDER BY JobSatisfaction;
