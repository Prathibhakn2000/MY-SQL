CREATE DATABASE nov_27;

Show databases; 

USE nov_27;

CREATE TABLE jewellery_shop(Id int,jewel_shop_name varchar(20),location varchar(30));

SELECT * FROM jewellery_shop;

//ADD COLUMN TO EXISTING TABLE USING ALTER COMMAND
ALTER TABLE  jewellery_shop ADD COLUMN (j_material varchar(15));
ALTER TABLE  jewellery_shop ADD COLUMN(j_brand varchar(20));
ALTER TABLE  jewellery_shop ADD COLUMN(price bigint);
ALTER TABLE  jewellery_shop ADD COLUMN(seller_name varchar(20));

//DROP COLUMN TO EXISTING TABLE USING ALTER COMMAND
ALTER TABLE  jewellery_shop DROP COLUMN seller_name ;
ALTER TABLE  jewellery_shop DROP COLUMN j_brand;

//RENAME COLUMN NAME IN EXISTING TABLE USING ALTER COMMAND
ALTER TABLE jewellery_shop RENAME  COLUMN j_material TO jewel_material ;
ALTER TABLE jewellery_shop RENAME  COLUMN price TO jewel_price ;

//CHANGING THE DATATYPE
ALTER TABLE jewellery_shop MODIFY COLUMN jewel_price int;

//HOW TO KNOW THE TABLE INFORMATION USING DESC COMMAND
DESC jewellery_shop;

CREATE TABLE hospital(Id int, name varchar(30), address varchar(40));

SELECT * FROM hospital;

//ADD
ALTER TABLE hospital ADD COLUMN (no_of_beds int);
ALTER TABLE hospital ADD COLUMN (no_of_doctors int);
ALTER TABLE hospital ADD COLUMN (is_private boolean);
ALTER TABLE hospital ADD COLUMN (no_of_patients int);

//DROP
ALTER TABLE hospital DROP COLUMN no_of_beds;
ALTER TABLE hospital DROP COLUMN no_of_doctors;  

//RENAME
ALTER TABLE hospital RENAME  COLUMN address TO location ;
ALTER TABLE hospital RENAME  COLUMN name TO hospital_name ;

//change datatype 
ALTER TABLE hospital MODIFY  COLUMN no_of_patients bigint;
ALTER TABLE hospital MODIFY  COLUMN location int ;

DESC hospital;

CREATE TABLE movie(Id int,name varchar(20),director_name varchar(25));

SELECT * FROM movie;

//ADD
ALTER TABLE movie ADD COLUMN (release_yaer int);
ALTER TABLE movie ADD COLUMN (duration int);
ALTER TABLE movie ADD COLUMN (production_budget bigint);
ALTER TABLE movie ADD COLUMN (ratings int);

//REMOVE
ALTER TABLE movie DROP COLUMN ratings;
ALTER TABLE movie DROP COLUMN production_budget;

//RENAME
ALTER TABLE movie RENAME COLUMN name TO title;
ALTER TABLE movie RENAME COLUMN director_name TO hero_name ;

//MODIFY(CHANGE DATA TYPE)
ALTER TABLE movie MODIFY COLUMN release_yaer bigint;
ALTER TABLE movie MODIFY COLUMN duration bigint;

DESC movie;

CREATE TABLE apartment(Id int, name varchar(20), address varchar(30));

SELECT *FROM apartment;

//ADD
ALTER TABLE apartment ADD COLUMN (rent bigint);
ALTER TABLE apartment ADD COLUMN (security boolean);
ALTER TABLE apartment ADD COLUMN (pets_policy boolean);
ALTER TABLE apartment ADD COLUMN (parking boolean);

//REMOVE
ALTER TABLE apartment DROP COLUMN parking;
ALTER TABLE apartment DROP COLUMN security;

//RENAME
ALTER TABLE apartment RENAME COLUMN name TO apartment_name;
ALTER TABLE apartment RENAME COLUMN address TO apartment_address ;

//MODIFY(CHANGE DATA TYPE)
ALTER TABLE apartment MODIFY COLUMN rent int;

DESC apartment;

CREATE TABLE flight(Id int,name varchar(20),number int);

SELECT * FROM flight;

//ADD
ALTER TABLE flight ADD COLUMN (Departure_city varchar(20));
ALTER TABLE flight ADD COLUMN (arrival_city varchar(20));
ALTER TABLE flight ADD COLUMN (departure_time int);
ALTER TABLE flight ADD COLUMN (arrival_time int);

//REMOVE
ALTER TABLE flight DROP COLUMN arrival_city ;
ALTER TABLE flight DROP COLUMN arrival_time;

//RENAME
ALTER TABLE flight RENAME COLUMN name TO flight_name;
ALTER TABLE flight RENAME COLUMN number TO  flight_number;
ALTER TABLE flight RENAME COLUMN Departure_city TO  departure_city;


//MODIFY(CHANGE DATA TYPE)
ALTER TABLE flight MODIFY COLUMN flight_number bigint;

DESC flight;








