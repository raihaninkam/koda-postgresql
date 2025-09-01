UPDATE "MOVIES" 
SET 
    title = 'new_title',
    synopsis = 'new_synopsis',
    duration_minutes = new_duration,
    release_date = 'new_release_date',
    poster_image = 'new_poster_image',
    directors_id = new_director_id,
    rating = new_rating
WHERE id = movie_id;