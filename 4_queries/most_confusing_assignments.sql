SELECT assignments.id, name, day, chapter, COUNT(req.*) AS total_requests
FROM assignments
JOIN assistance_requests req ON assignments.id = req.assignment_id
GROUP BY assignments.id
ORDER BY total_requests DESC;