SELECT
  EducationField,
  COUNT(*) AS total_employees,
  COUNTIF(Attrition = TRUE) AS attrition_count,
  ROUND(
    COUNTIF(Attrition = TRUE) * 100.0 / COUNT(*),
    2
  ) AS attrition_rate
FROM `hr-analytics-dashboard-504104.hr.employees`
GROUP BY EducationField
ORDER BY attrition_rate DESC;
