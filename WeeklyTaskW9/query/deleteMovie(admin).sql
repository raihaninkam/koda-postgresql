-- First delete related records
DELETE FROM "MOVIES_GENRE" WHERE movies_id = movie_id;
DELETE FROM "MOVIES_CAST" WHERE movies_id = movie_id;

-- Then delete the movie
DELETE FROM "MOVIES" WHERE id = movie_id;