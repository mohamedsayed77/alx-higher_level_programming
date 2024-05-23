-- Calculate the average temperature (Fahrenheit) by city and order the results by temperature (descending)
SELECT city, AVG(temperature) AS avg_temp
FROM table_name
GROUP BY city
ORDER BY avg_temp DESC;
