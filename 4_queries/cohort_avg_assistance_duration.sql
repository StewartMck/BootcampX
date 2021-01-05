SELECT AVG(total_duration) as average_total_duration
FROM (
    SELECT SUM(req.completed_at - req.started_at) AS total_duration
    FROM assistance_requests req
    JOIN students ON req.student_id = students.id
    JOIN cohorts ON students.cohort_id = cohorts.id
    GROUP BY cohorts.name
    ) AS sub_query;