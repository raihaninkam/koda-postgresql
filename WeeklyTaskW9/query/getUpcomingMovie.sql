SELECT m.*, d.name as director_name
FROM "MOVIES" m
JOIN "DIRECTORS" d ON m.directors_id = d.id
WHERE m.release_date > CURRENT_DATE
ORDER BY m.release_date ASC
LIMIT 4;

