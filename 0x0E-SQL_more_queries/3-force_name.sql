-- Create the table 'force_name' if it does not already exist
-- The table has two columns: 'id' (an integer) and 'name' (a variable character string up to 256 characters) which cannot be null
CREATE TABLE IF NOT EXISTS force_name (
    id INT,
    name VARCHAR(256) NOT NULL
);
