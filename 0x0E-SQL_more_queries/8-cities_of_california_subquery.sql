-- Selects the 'id' and 'name' columns from the 'cities' table
-- Retrieves rows where the 'state_id' column matches the 'id' of the state with the name "California"
-- Orders the results by the 'id' column
SELECT id, name FROM cities
WHERE state_id = (
      -- Subquery: Selects the 'id' of the state with the name "California" from the 'states' table
      SELECT id FROM states
      WHERE name = "California")
ORDER BY id;
