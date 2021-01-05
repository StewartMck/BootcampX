SELECT teachers.name AS teacher, cohorts.name AS cohort, COUNT(req.*) AS total_assistances
FROM teachers
JOIN assistance_requests req ON teachers.id = req.teacher_id
JOIN students ON req.student_id = students.id
JOIN cohorts ON students.cohort_id = cohorts.id
WHERE cohorts.name = 'JUL02'
GROUP BY teachers.name, cohorts.name
ORDER BY teacher;