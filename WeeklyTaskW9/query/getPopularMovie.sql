SELECT m.*, d.name as director_name, AVG(m.rating) as avg_rating
FROM "MOVIES" m
JOIN "DIRECTORS" d ON m.directors_id = d.id
GROUP BY m.id, d.name
ORDER BY avg_rating DESC
LIMIT 10;