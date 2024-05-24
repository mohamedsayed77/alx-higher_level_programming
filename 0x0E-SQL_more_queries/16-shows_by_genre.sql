-- Selects the 'title' column from the 'tv_shows' table and the 'name' column from the 'tv_genres' table
-- Performs left joins between the 'tv_shows' table and the 'tv_show_genres' table, and between the 'tv_show_genres' table and the 'tv_genres' table
-- Matches the IDs between 'tv_shows' and 'tv_show_genres' tables, and between 'tv_show_genres' and 'tv_genres' tables
-- Orders the results first by 'title' from 'tv_shows' and then by 'name' from 'tv_genres'
SELECT title, tv_genres.name FROM tv_shows
LEFT JOIN tv_show_genres ON id=tv_show_genres.show_id
LEFT JOIN tv_genres ON tv_show_genres.genre_id = tv_genres.id
ORDER BY title, tv_genres.name;
