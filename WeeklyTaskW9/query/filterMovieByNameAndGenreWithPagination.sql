SELECT m.*, d.name as director_name, STRING_AGG(g.name, ', ') as genres
FROM "MOVIES" m
JOIN "DIRECTORS" d ON m.directors_id = d.id
JOIN "MOVIES_GENRE" mg ON m.id = mg.movies_id
JOIN "GENRES" g ON mg.genres_id = g.id
WHERE m.title ILIKE '%cep%'
GROUP BY m.id, d.name
ORDER BY m.release_date DESC
LIMIT 5 OFFSET 0;