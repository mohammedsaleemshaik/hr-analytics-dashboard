SELECT
  CASE
    WHEN Age < 25 THEN 'Under 25'
    WHEN Age BETWEEN 25 AND 34 THEN '25-34'
    WHEN Age BETWEEN 35 AND 44 THEN '35-44'
    WHEN Age BETWEEN 45 AND 54 THEN '45-54'
    ELSE '55+'
  END AS age_group,
  COUNT(*) AS total_employees
FROM `hr-analytics-dashboard-504104.hr.employees`
GROUP BY age_group
ORDER BY
  CASE age_group
    WHEN 'Under 25' THEN 1
    WHEN '25-34' THEN 2
    WHEN '35-44' THEN 3
    WHEN '45-54' THEN 4
    WHEN '55+' THEN 5
  END;
