-- Selects the 'title' column from the 'tv_shows' table and the 'genre_id' column from the 'tv_show_genres' table
-- Performs a left join between the 'tv_shows' table and the 'tv_show_genres' table based on matching 'id' from 'tv_shows' with 'show_id' from 'tv_show_genres'
-- Orders the results first by 'title' from 'tv_shows' and then by 'genre_id' from 'tv_show_genres'
SELECT tv_shows.title, tv_show_genres.genre_id FROM tv_shows
LEFT JOIN tv_show_genres ON tv_shows.id=tv_show_genres.show_id
ORDER BY tv_shows.title, tv_show_genres.genre_id;
