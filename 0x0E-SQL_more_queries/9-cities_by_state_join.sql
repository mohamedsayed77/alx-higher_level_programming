-- Selects the 'id' and 'name' columns from the 'cities' table and the 'name' column from the 'states' table
-- Joins the 'cities' table with the 'states' table based on matching 'state_id' and 'id' columns respectively
-- Orders the results by the 'id' column in the 'cities' table
SELECT cities.id, cities.name, states.name FROM cities
JOIN states ON cities.state_id=states.id
ORDER BY cities.id;
