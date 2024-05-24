-- Selects the 'name' column from the 'tv_genres' table and aliases it as 'genre', and counts the number of occurrences for each genre
-- Performs an inner join between the 'tv_genres' table and the 'tv_show_genres' table based on matching 'id' from 'tv_genres' with 'genre_id' from 'tv_show_genres'
-- Groups the result set by 'genre_id' from 'tv_show_genres'
-- Orders the results by the count of shows in each genre in descending order
SELECT name AS genre, COUNT(*) AS number_of_shows FROM tv_genres
JOIN tv_show_genres ON id=tv_show_genres.genre_id
GROUP BY tv_show_genres.genre_id
ORDER BY number_of_shows DESC;
