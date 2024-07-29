CREATE DATABASE jul_29;
USE jul_29;
CREATE TABLE orders(id int,order_name varchar(20),cost int,order_id int primary key,
created_at timestamp,created_by varchar(20),modified_by varchar(30));
select * from orders;
desc orders;

create table payment(id int,price bigint,payment_id int primary key, p_order_id int,payment_status varchar(30),created_at timestamp,created_by varchar(30),modified_at timestamp,
amodified_by varchar(30),foreign key(p_order_id)references orders(order_id));

create table restaurant(id int,restaurant_name varchar(30),restaurant_id int primary key,
location varchar(40),r_order_id int,ratings int,r_payment_id int,
created_by timestamp,created_at varchar(20),modified_by timestamp,modified_at varchar(20),
foreign key(r_order_id)references orders(order_id),foreign key(r_payment_id)references payment(payment_id));

select * from restaurant;
desc restaurant;

create table delivery(id int,person_name varchar(30),mode_of_payment enum('online','offline'),
d_restaurant_id int,delivery_id int primary key,d_order_id int,created_at timestamp,created_by varchar(20),
modified_at timestamp,modified_by varchar(20),foreign key(d_restaurant_id)references restaurant(restaurant_id),foreign key (d_order_id)references orders(order_id));

insert into hotel_info values(1,'pizza',300,200,now(),'nisarga',now(),'sujith');
insert into hotel_info values(2,'pasta',400,250,now(),'swetha',now(),'keerthi');
insert into hotel_info values(3,'pani puri',30,20,now(),'sneha',now(),'vinay');
insert into hotel_info values(2,'gobi',90,75,now(),'pallavi',now(),'vikas');
insert into hotel_info values(2,'burger',10,50,now(),'neha',now(),'bindu');
select * from hotel_info;

insert into orders values(1,'samosa',20,201,now(),'kiran','sushmita');
insert into orders values(2,'pizza',120,202,now(),'ravikiran','nivediths');
insert into orders values(3,'panipuri',40,203,now(),'naveen','deepa');
insert into orders values(4,'kachori',80,204,now(),'laxmi','poorna');
insert into orders values(5,'gobi',100,205,now(),'priyanka','sanjivini');

insert into payment values(01,200,111,201,'successed',now(),'sushmita',now(),'keerti');
insert into payment values(02,300,121,202,'failed',now(),'vandhana',now(),'nisarga');
insert into payment values(03,400,131,203,'hold',now(),'vaishnavi',now(),'nandini');
insert into payment values(04,500,141,204,'successed',now(),'samanvi',now(),'smaya');
insert into payment values(05,600,151,205,'failed',now(),'prasanna',now(),'seema');

insert into restaurant values(501,'sogadu',51,'rajajinagar',201,4,111,now(),'laxmi',now(),'karthik');
insert into restaurant values(502,'canara',52,'basham sagar',202,3,121,now(),'krupa',now(),'priyanka');
insert into restaurant values(503,'pingar',53,'btm',203,4,131,now(),'sneha',now(),'harshita');
insert into restaurant values(504,'sagar',54,'nandini layout',204,5,141,now(),'nayana',now(),'vedha');
insert into restaurant values(505,'suka sagar',55,'maha laxmi layout',205,2,151,now(),'amitha',now(),'kruthi');


insert into delivery values(601,'ashwani','online',51,61,201,now(),'varsha',now(),'pratusha');
insert into delivery values(602,'naveen','offline',52,62,202,now(),'varun',now(),'kaveri');
insert into delivery values(603,'ramesh','online',53,63,203,now(),'manju',now(),'aadhira');
insert into delivery values(604,'basavaraj','online',54,64,204,now(),'priyanka',now(),'sobha');
insert into delivery values(605,'kiran','online',55,65,205,now(),'kavya',now(),'prema');