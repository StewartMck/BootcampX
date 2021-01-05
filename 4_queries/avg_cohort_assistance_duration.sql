SELECT cohorts.name AS cohort, SUM(req.completed_at - req.started_at) AS total_duration
FROM cohorts
JOIN students ON cohorts.id = students.cohort_id
JOIN assistance_requests req ON students.id = req.student_id
GROUP BY cohort
ORDER BY total_duration;
