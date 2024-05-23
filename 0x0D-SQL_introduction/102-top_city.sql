-- Calculate the average temperature (Fahrenheit) for each city during July and August, and display the top 3 cities ordered by temperature (descending)
SELECT city, AVG(temperature) AS avg_temp
FROM table_name
WHERE MONTH(date) IN (7, 8)
GROUP BY city
ORDER BY avg_temp DESC
LIMIT 3;
