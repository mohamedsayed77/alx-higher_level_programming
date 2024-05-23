-- Selects the 'score' and 'name' columns from the table 'second_table' where the 'name' column is not NULL. Results are ordered by the 'score' column in descending order.
SELECT score, name
FROM second_table
HAVING name IS NOT NULL
ORDER BY score DESC;
