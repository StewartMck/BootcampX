SELECT teachers.name AS teacher, students.name AS student, assignments.name AS assignment,
        rec.completed_at - rec.started_at AS duration
FROM teachers
JOIN assistance_requests rec ON teachers.id = rec.teacher_id
JOIN students ON rec.student_id = students.id
JOIN assignments ON rec.assignment_id = assignments.id
ORDER BY duration;