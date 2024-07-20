CREATE DATABASE MOVIE;
CREATE TABLE movie_details (movie_id int, movie_name varchar(30), production_house varchar(30), hero_name varchar(30), 
    heroine_name varchar(30), viewer_number bigint, producer_name varchar(30), duration_minute int, ticket_sold bigint, blockbuster boolean) ; 
 
 SELECT * FROM movie_details ;
 
 
ALTER TABLE movie_details ADD COLUMN mode_of_seat varchar(60);
ALTER TABLE movie_details ADD COLUMN hero_age int;
ALTER TABLE movie_details ADD COLUMN heroine_age int;
ALTER TABLE movie_details ADD COLUMN piracy enum('yes','no');
ALTER TABLE movie_details ADD COLUMN team_members int;


ALTER TABLE movie_details CHANGE COLUMN piracy copied enum('yes','no'); 
ALTER TABLE movie_details CHANGE COLUMN production_house rating int; 
ALTER TABLE movie_details CHANGE COLUMN team_members members_worked int; 
ALTER TABLE movie_details CHANGE COLUMN producer_name viewer_name varchar(50); 


INSERT INTO movie_details (movie_id, movie_name, rating, hero_name, ticket_sold, blockbuster, copied, members_worked, seat)
VALUES (1, 'Blade Runner 2049', 5,  'Leonardo DiCaprio', 90009, TRUE, 2, 190, 'VIP'),
	   (2, 'Parasite', 7,  'Brad Pitt', 7965860, TRUE, 1, 467, 'Premium Glider'),
       (3, 'Mad Max', 4, 'Tom Hanks', 346790, TRUE, 2, 980, 'Boutique'),
       (4, 'Fury Road', 9, 'Robert Downey', 237854, FALSE, 1, 378, 'VIP Kids'),
	   (5, 'Gladiator', 8, 'Johnny Depp', 9732570, FALSE, 2, 589, 'Full Rocker' ),
       (6, 'Spirited Away', 4, 'Denzel Washington', 9078453, TRUE, 1, 2089, 'Swing Back'),
       (7, 'Black Panther', 6, 'Morgan Freeman', 1245886, TRUE, 1, 490, 'Fixed Back'),
       (8, 'La La Land', 3, 'Chris Hemsworth', 5038562, FALSE, 2, 390, 'Planetarium Seating'),
       (9, 'The Social Network', 10, 'Will Smith', 8660235, FALSE, 2, 156, 'Balcony'),
	   (10, 'Moonlight', 5, 'Matt Damon', 96113459, TRUE, 1, 357, 'Orchestra');
       

UPDATE movie_details SET movie_name = 'Salgliyana' WHERE movie_id = 9;
UPDATE movie_details SET rating = 8 WHERE movie_id = 2;
UPDATE movie_details SET hero_name = 'Rock' WHERE movie_id = 8;
UPDATE movie_details SET ticket_sold = 86743 WHERE movie_id = 5;
UPDATE movie_details SET blockbuster = FALSE WHERE movie_id = 3;
UPDATE movie_details SET copied = 2 WHERE movie_id = 6;
UPDATE movie_details SET members_worked = 543 WHERE movie_id = 4;
UPDATE movie_details SET seat = 'Swing Back' WHERE movie_id = 7;
UPDATE movie_details SET rating = 3 WHERE movie_id = 1;
UPDATE movie_details SET movie_name = 'Want More' WHERE movie_id = 10;


DELETE FROM movie_details WHERE seat = 'Swing Back';
DELETE FROM movie_details WHERE rating = 3;
DELETE FROM movie_details WHERE hero_name = 'Rock';

SELECT * FROM movie_details WHERE movie_name = 'Salgliyana' AND movie_id = 8;

SELECT * FROM movie_details WHERE copied IN (1,9,5,4);

SELECT * FROM movie_details WHERE seat NOT IN (3,6,8,7);

SELECT * FROM movie_details WHERE rating = 8 OR movie_name = 'Mad Max';
