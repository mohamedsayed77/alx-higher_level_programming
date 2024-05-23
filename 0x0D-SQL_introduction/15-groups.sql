-- Selects the 'score' column and counts the occurrences of each score, aliasing the count as 'number', from the table 'second_table'. Groups the results by 'score' and orders them by the count of occurrences in descending order.
SELECT score, COUNT(1) AS number FROM second_table
GROUP BY score
ORDER BY number DESC;
