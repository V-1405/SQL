CREATE DATABASE STATE;


SELECT * FROM state_info;


CREATE TABLE state_info (id bigint, state_name varchar(100), population bigint, capital_city varchar(100), area_sq_km float,
                         governor varchar(100), state_code varchar(2), region varchar(50), founded_date int, statehood_date int);


ALTER TABLE state_info ADD COLUMN famous_for VARCHAR(150);
ALTER TABLE state_info ADD COLUMN famous_food VARCHAR(50);
ALTER TABLE state_info ADD COLUMN famous_place VARCHAR(50);
ALTER TABLE state_info ADD COLUMN chief_minister VARCHAR(50);
ALTER TABLE state_info ADD COLUMN expenditure ENUM('costly','cheap');
    

ALTER TABLE state_info CHANGE COLUMN statehood_date poverty_rate BIGINT; 
ALTER TABLE state_info CHANGE COLUMN famous_food famous_foods VARCHAR(50); 
ALTER TABLE state_info CHANGE COLUMN famous_place  famous_places VARCHAR(50);
ALTER TABLE state_info CHANGE COLUMN chief_minister chief_minister_name VARCHAR(50);
ALTER TABLE state_info CHANGE COLUMN governor chief_minister_age INT; 


ALTER TABLE state_info MODIFY COLUMN  poverty_rate enum('high','low');
ALTER TABLE state_info MODIFY COLUMN  chief_minister_age BIGINT;
ALTER TABLE state_info MODIFY COLUMN  area_sq_km varchar(40);
ALTER TABLE state_info MODIFY COLUMN  id int;
ALTER TABLE state_info MODIFY COLUMN  founded_date varchar(40);


INSERT INTO state_info (id, state_name, population, capital_city, state_code, famous_for, poverty_rate)
VALUES (1,'California', 39500000, ' Sacramento', 'CA', 'Entertainment industry', 2),
(2,'Texas', 29000000, ' Austin', 'TX', 'Oil production', 1),
(3,'Florida', 59500000, ' Tallahassee', 'FL', 'Tourism ', 2),
(4,'New York', 99500000, ' Albany', 'NY', 'Entertainment ', 1),
(5,'Illinois', 87500000, ' Springfield', 'IN', ' Atlantic City  ', 2),
(6,'Pennsylvania', 31200000, ' Harrisburg', 'PY', 'Entertainment ', 1),
(7,'Ohio', 31500000, ' Atlanta', 'OH', 'Microsoft, Boeing ', 2),
(8,'Georgia', 33500000, ' Raleigh', 'GR', 'Historic sites ', 1),
(9,'North Carolina', 35500000, ' Sacramento', 'NC', ' Atlantic City  ', 2),
(10,'Michigan', 39500000, ' Sacramento', 'MH', 'American history ', 1),
(11,'California', 39500000, ' Trenton', 'CL', 'Entertainment industry', 2),
(12,'Virginia', 38500000, ' Sacramento', 'VG', 'Automotive industry ', 1),
(13,'Washington', 39500000, ' Sacramento', 'WH', 'Research Triangle ', 2),
(14,'Arizona', 39800000, ' Trenton', 'AZ', 'Entertainment industry', 1),
(15,'Massachusetts', 39500000, ' Columbus', 'MC', 'Coca-Cola ', 2),
(16,'Tennessee', 39500000, ' Atlanta', 'TS', 'Manufacturing  ', 1),
(17,'Indiana', 39500000, ' Trenton', 'II', 'American history ', 2),
(18,'Missouri', 39500000, ' Sacramento', 'NU', 'Chicago ', 1),
(19,'Maryland', 59500000, ' Raleigh', 'NL', 'Financial hub ', 2),
(20,'Wisconsin', 69500000, ' Columbus', 'WC', 'Entertainment industry', 1);


UPDATE state_info SET state_name = 'New Jersey' WHERE id = 11; 
UPDATE state_info SET capital_city = 'New Raleigh' WHERE id = 10; 
UPDATE state_info SET state_code = 'NL' WHERE id = 13; 
UPDATE state_info SET state_name = 'New Jersey' WHERE id = 17; 
UPDATE state_info SET population = 27386353 WHERE id = 4; 
UPDATE state_info SET state_code = 'WC' WHERE id = 9; 
UPDATE state_info SET state_name = 'New Jersey' WHERE id = 7; 
UPDATE state_info SET capital_city = 'Raleigh Jersey' WHERE id = 5; 
UPDATE state_info SET population = 523345425 WHERE id = 2; 
UPDATE state_info SET state_name = 'New Jersey' WHERE id = 1; 


DELETE FROM state_info WHERE id = 1;
DELETE FROM state_info WHERE poverty_rate = 9;
DELETE FROM state_info WHERE famous_for = 'Entertainment industry';


SELECT * FROM state_info WHERE population = 1000000 AND poverty_rate = 1;
SELECT * FROM state_info WHERE state_name = 'Pennsylvania' OR capital_city = 'Columbus';
SELECT * FROM state_info where id IN(1,3,5,7); 
SELECT * FROM state_info where id NOT IN(1,2,3,4,5);

  



   