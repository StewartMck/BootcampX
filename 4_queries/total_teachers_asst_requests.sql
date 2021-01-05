SELECT COUNT(assr.*) AS total_assistances, teachers.name
FROM assistance_requests assr
JOIN teachers ON assr.teacher_id = teachers.id
WHERE name = 'Waylon Boehm'
GROUP BY name;