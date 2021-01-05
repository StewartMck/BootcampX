SELECT cohorts.name, AVG(req.completed_at - req.started_at) AS average_assistance_time
FROM cohorts
JOIN students ON cohorts.id = students.cohort_id
JOIN assistance_requests req ON students.id = req.student_id
GROUP BY cohorts.name
ORDER BY average_assistance_time DESC
LIMIT 1;