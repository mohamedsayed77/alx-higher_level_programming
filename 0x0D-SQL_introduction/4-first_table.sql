-- Creates a new table named 'first_table' with columns 'id' (integer) and 'name' (variable character up to 256 characters) if it doesn't already exist
CREATE TABLE IF NOT EXISTS first_table (id INT, name VARCHAR(256));
