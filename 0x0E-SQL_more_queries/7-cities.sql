-- Create the database 'hbtn_0d_usa' if it does not already exist
CREATE DATABASE IF NOT EXISTS hbtn_0d_usa;

-- Use the 'hbtn_0d_usa' database
USE hbtn_0d_usa;

-- Create the table 'states' if it does not already exist
CREATE TABLE IF NOT EXISTS states (
    id INT UNIQUE NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(256) NOT NULL
);

-- Create the table 'cities' if it does not already exist
-- The table has three columns:
-- 'id' (an auto-incremented integer with a unique constraint and primary key, and it cannot be null)
-- 'state_id' (an integer that cannot be null, and it is a foreign key referencing 'id' in 'states' table)
-- 'name' (a variable character string up to 256 characters, and it cannot be null)
CREATE TABLE IF NOT EXISTS cities (
    id INT UNIQUE NOT NULL AUTO_INCREMENT PRIMARY KEY,
    state_id INT NOT NULL,
    FOREIGN KEY (state_id) REFERENCES states(id),
    name VARCHAR(256) NOT NULL
);
