-- Selects the 'name' column from the 'tv_genres' table
-- Filters the result set to include only rows where the genre ID is not present in a subquery result
-- The subquery selects the genre IDs associated with the TV show "DEXTER" and performs joins between the 'tv_genres', 'tv_show_genres', and 'tv_shows' tables to get the associated genre IDs
-- Orders the results by the genre names
SELECT name FROM tv_genres
WHERE tv_genres.id NOT IN (
      -- Subquery: Selects the genre IDs associated with the TV show "DEXTER" and performs joins between the 'tv_genres', 'tv_show_genres', and 'tv_shows' tables to get the associated genre IDs
      SELECT tv_genres.id FROM tv_genres
      JOIN tv_show_genres ON tv_genres.id=tv_show_genres.genre_id
      JOIN tv_shows ON tv_shows.id=tv_show_genres.show_id
      WHERE tv_shows.title = "DEXTER" )
ORDER BY tv_genres.name;
