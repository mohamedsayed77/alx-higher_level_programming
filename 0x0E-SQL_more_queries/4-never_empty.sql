-- Create the table 'id_not_null' if it does not already exist
-- The table has two columns: 'id' (an integer with a default value of 1) and 'name' (a variable character string up to 256 characters)
CREATE TABLE IF NOT EXISTS id_not_null (
    id INT DEFAULT 1,
    name VARCHAR(256)
);
