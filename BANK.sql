CREATE DATABASE BANK;
CREATE TABLE bank_details (bank_id bigint, bank_name varchar(30), bank_address varchar(30), account_holder varchar(30), 
    holder_address varchar(30), holder_number bigint, manager_name varchar(30), dob int, open_date int, active_status boolean) ; 
 
 SELECT * FROM bank_details ;
 
 
ALTER TABLE bank_details ADD COLUMN department varchar(60);
ALTER TABLE bank_details ADD COLUMN email varchar(70);
ALTER TABLE bank_details ADD COLUMN pan_number bigint;
ALTER TABLE bank_details ADD COLUMN hire_date bigint;
ALTER TABLE bank_details ADD COLUMN manager_id bigint;


ALTER TABLE bank_details CHANGE COLUMN hire_date start_date bigint; 
ALTER TABLE bank_details CHANGE COLUMN department sector varchar(60); 
ALTER TABLE bank_details CHANGE COLUMN manager_id supervisor_id bigint; 
ALTER TABLE bank_details CHANGE COLUMN active_status account_inuse enum('yes','no'); 
ALTER TABLE bank_details CHANGE COLUMN dob date_of_birth varchar(30); 


INSERT INTO bank_details (bank_id, bank_name, bank_address, email, account_holder, holder_number, account_inuse)
VALUES (101, 'Bank Of America', 'America', 'bankamerica@gmail', 'Christafer', 123456789, 2),
	   (102, 'Chase Bank', 'Mid Town', 'chasebank@gmail', 'Aeliana', 8660235989, 1),
       (103, 'Wells Fargo', 'Wall Street', 'wellsfargo@gmail', 'Thalassa', 9972669927, 2),
       (104, 'Citi Bank', 'Times Square', 'citibank@gmail', 'Caelum', 9448743547, 1),
	   (105, 'HSBC', 'Upper East Side', 'hsbc@gmail', 'Eamon', 983356427, 2),
       (106, 'ICICI', 'Greenwich Village', 'icici@gmail', 'Isolde', 9611345068, 1),
       (107, 'PNC Bank', 'Soho', 'pncbank@gmail', 'Nyssa', 636305134, 1),
       (108, 'TD Bank', 'Brooklyn', 'tdbank@gmail', 'Orion', 123478956, 2),
       (109, 'Canara', 'Harlem', 'canara@gmail', 'Meenakshi', 6754896542, 2),
	   (110, 'Karnataka Bank', 'Canada', 'karnatakabank@gmail', 'Vajra', 9084532768, 1);
       

UPDATE bank_details SET bank_name = 'Baroda' WHERE bank_id = 101;
UPDATE bank_details SET bank_address = 'Italy' WHERE bank_id = 102;
UPDATE bank_details SET email = 'crvem@gmail' WHERE bank_id = 103;
UPDATE bank_details SET account_holder = 'Vidvan' WHERE bank_id = 104;
UPDATE bank_details SET account_inuse = 1 WHERE bank_id = 105;
UPDATE bank_details SET email = 'aruna@gmail' WHERE bank_id = 106;
UPDATE bank_details SET account_holder = 'Anamika' WHERE bank_id = 107;
UPDATE bank_details SET email = 'bankofsome@gmail' WHERE bank_id = 108;
UPDATE bank_details SET bank_address = 'Lucknow' WHERE bank_id = 109;
UPDATE bank_details SET bank_name = 'Swizz Bank' WHERE bank_id = 110;


DELETE FROM bank_details WHERE email = 'aruna@gmail';
DELETE FROM bank_details WHERE account_holder = 'Anamika';
DELETE FROM bank_details WHERE account_inuse = 1;

SELECT * FROM bank_details WHERE bank_name = 'Swizz Bank' AND account_inuse = 1;

SELECT * FROM bank_details WHERE bank_name IN ('Bank Of America', 'ICICI');

SELECT * FROM bank_details WHERE email NOT IN (101,105,108);

SELECT * FROM bank_details WHERE account_holder = 'Vajra' OR holder_number = 9084532768;
