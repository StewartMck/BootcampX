SELECT day, count(*) AS total_assignments
FROM assignments
GROUP BY day
HAVING count(id) >= 10
ORDER BY day;