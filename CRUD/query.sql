-- CREATE DATABASE hello_world_db;

-- DROP DATABASE hello_world_db;

-- CREATE DATABASE dog_walking_app;

-- --------------------------------

-- CREATE TABLE cats
--     (
--         name VARCHAR(100),
--         age INT
--     );

-- ---------------------------------

-- SHOW TABLES;

-- SHOW COLUMNS FROM cats
-- DESC cats

-- DROP TABLE cats;

-- ---------------------------------

-- INSERT INTO cats(name, age) 
-- VALUES ('Jetson', 7);

-- INSERT INTO table_name 
--             (column_name, column_name) 
-- VALUES      (value, value), 
--             (value, value), 
--             (value, value);


------------------------------------

-- SELECT * FROM cats;

------------------------------------

-- CREATE TABLE cats2
--   (
--     name VARCHAR(100) NOT NULL,
--     age INT NOT NULL
--   );

-- CREATE TABLE cats3
--   (
--     name VARCHAR(20) DEFAULT 'no name provided',
--     age INT DEFAULT 99
--   );

-- CREATE TABLE cats4
--   (
--     name VARCHAR(20) NOT NULL DEFAULT 'unnamed',
--     age INT NOT NULL DEFAULT 99
--   );

-- CREATE TABLE unique_cats2 (
--     cat_id INT NOT NULL AUTO_INCREMENT,
--     name VARCHAR(100),
--     age INT,
--     PRIMARY KEY (cat_id)
-- );

-- create table employees
--     (
--     id int not null auto_increment,
--     first_name varchar(50) not null,
--     last_name varchar(50) not null,
--     middle_name varchar(50),
--     age int not null,
--     current_status varchar(50) not null default 'employed',
--     primary key (id)
--     );

-- SELECT cat_id AS id, name FROM cats;

-------------------------------------

-- UPDATE cats SET breed='Shorthair' WHERE breed='Tabby'; 

-- UPDATE cats SET age=14 WHERE name='Misty'; 

--------------------------------------

-- DELETE FROM cats WHERE name='Egg';

--------------------------------------

