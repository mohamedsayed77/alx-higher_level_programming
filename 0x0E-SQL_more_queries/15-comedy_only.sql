-- Selects the 'title' column from the 'tv_shows' table
-- Performs inner joins between the 'tv_shows' table, 'tv_show_genres' table, and 'tv_genres' table based on matching IDs and genre names
-- Filters the result set to include only rows where the genre name is 'Comedy'
-- Orders the results by the titles of the TV shows
SELECT title FROM tv_shows
JOIN tv_show_genres ON id=tv_show_genres.show_id
JOIN tv_genres ON tv_genres.id=tv_show_genres.genre_id
WHERE tv_genres.name = 'Comedy'
ORDER BY title;
