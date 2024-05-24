-- Selects the 'name' column from the 'tv_genres' table
-- Performs inner joins between the 'tv_genres' table, 'tv_show_genres' table, and 'tv_shows' table based on matching IDs and titles
-- Filters the result set to include only rows where the title of the TV show is 'Dexter'
-- Orders the results by the genre names
SELECT name FROM tv_genres
JOIN tv_show_genres ON id=tv_show_genres.genre_id
JOIN tv_shows ON tv_shows.id=tv_show_genres.show_id
WHERE tv_shows.title = 'Dexter'
ORDER BY name;
