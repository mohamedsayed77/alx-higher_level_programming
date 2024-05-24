-- Selects the 'title' column from the 'tv_shows' table
-- Filters the result set to include only rows where the show ID is not present in a subquery result
-- The subquery selects the show IDs associated with the genre "Comedy" and performs joins between the 'tv_shows', 'tv_show_genres', and 'tv_genres' tables to get the associated show IDs
-- Orders the results by the title of the TV shows
SELECT tv_shows.title FROM tv_shows
WHERE tv_shows.id NOT IN (
      -- Subquery: Selects the show IDs associated with the genre "Comedy" and performs joins between the 'tv_shows', 'tv_show_genres', and 'tv_genres' tables to get the associated show IDs
      SELECT tv_shows.id FROM tv_shows
      JOIN tv_show_genres ON tv_shows.id=tv_show_genres.show_id
      JOIN tv_genres ON tv_genres.id=tv_show_genres.genre_id
      WHERE tv_genres.name = "Comedy" )
ORDER BY tv_shows.title;
