SELECT DISTINCT teachers.name AS teacher, cohorts.name as cohort
FROM teachers
JOIN assistance_requests req ON teachers.id = req.teacher_id
JOIN students ON req.student_id = students.id
JOIN cohorts ON students.cohort_id = cohorts.id
WHERE cohorts.name = 'JUL02'
ORDER BY teacher;
