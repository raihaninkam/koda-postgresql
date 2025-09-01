SELECT m.*, d.name as director_name
FROM "MOVIES" m
JOIN "DIRECTORS" d ON m.directors_id = d.id
ORDER BY m.release_date DESC
LIMIT 5 OFFSET 1;