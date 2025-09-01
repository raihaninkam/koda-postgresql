SELECT 
    m.*, 
    d.name as director_name,
    STRING_AGG(DISTINCT g.name, ', ') as genres,
    STRING_AGG(DISTINCT c.name, ', ') as casts
FROM "MOVIES" m
JOIN "DIRECTORS" d ON m.directors_id = d.id
LEFT JOIN "MOVIES_GENRE" mg ON m.id = mg.movies_id
LEFT JOIN "GENRES" g ON mg.genres_id = g.id
LEFT JOIN "MOVIES_CAST" mc ON m.id = mc.movies_id
LEFT JOIN "CASTS" c ON mc.casts_id = c.id
WHERE m.id = 1
GROUP BY m.id, d.name;