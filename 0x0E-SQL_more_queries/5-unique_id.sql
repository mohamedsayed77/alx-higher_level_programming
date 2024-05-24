-- Create the table 'unique_id' if it does not already exist
-- The table has two columns: 'id' (an integer with a default value of 1 and a unique constraint) and 'name' (a variable character string up to 256 characters)
CREATE TABLE IF NOT EXISTS unique_id (
    id INT DEFAULT 1,
    UNIQUE (id),
    name VARCHAR(256)
);
