SELECT 
    m.*, 
    d.name as director_name,
    STRING_AGG(DISTINCT g.name, ', ') as genres
FROM "MOVIES" m
JOIN "DIRECTORS" d ON m.directors_id = d.id
LEFT JOIN "MOVIES_GENRE" mg ON m.id = mg.movies_id
LEFT JOIN "GENRES" g ON mg.genres_id = g.id
GROUP BY m.id, d.name
ORDER BY m.id;