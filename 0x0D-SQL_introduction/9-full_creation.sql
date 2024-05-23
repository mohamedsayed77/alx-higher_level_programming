-- Creates a new table named 'second_table' with columns 'id' (integer), 'name' (variable character up to 256 characters), and 'score' (integer) if it doesn't already exist
CREATE TABLE IF NOT EXISTS second_table (id INT, name VARCHAR(256), score INT);

-- Inserts up to 4 records into the table 'second_table' with specified values for 'id', 'name', and 'score'
INSERT INTO `second_table` (`id`, `name`, `score`) VALUES (1, "John", 10);
INSERT INTO `second_table` (`id`, `name`, `score`) VALUES (2, "Alex", 3);
INSERT INTO `second_table` (`id`, `name`, `score`) VALUES (3, "Bob", 14);
INSERT INTO `second_table` (`id`, `name`, `score`) VALUES (4, "George", 8);