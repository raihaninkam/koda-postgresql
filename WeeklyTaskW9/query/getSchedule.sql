SELECT ns.*, m.title as movie_title, l.name as location_name
FROM "NOW_SHOWING" ns
JOIN "MOVIES" m ON ns.movie_id = m.id
JOIN "LOCATION" l ON ns.location_id = l.id
WHERE ns.date = CURRENT_DATE
ORDER BY ns.date, ns.time;

