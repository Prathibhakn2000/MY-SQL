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
ALTER TABLE jewellery_shop MODIFY COLUMN jewel_price bigint;

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
ALTER TABLE hospital MODIFY  COLUMN location varchar(30) ;

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
ALTER TABLE flight MODIFY COLUMN flight_number varchar(10);
ALTER TABLE flight MODIFY COLUMN departure_time varchar(10);


DESC flight;

/// INSERT VALUE TO JEWELLERY_SHOP

INSERT INTO jewellery_shop values(101,'Bhima_Jewellers','JPNagar','Gold',100000);
INSERT INTO jewellery_shop values(102,'Kalyan_Jewellers','BTM','Silver',600000);
INSERT INTO jewellery_shop values(103,'Malabar_Jewellers','RRNagar','Diamond',300000);
INSERT INTO jewellery_shop values(104,'Rajkamal_Jewellers','jayanagar','Gold',400000);
INSERT INTO jewellery_shop values(105,'JOs_Jewellers','BTM','Gemstones',800000);
INSERT INTO jewellery_shop values(106,'GIVA_Jewellers','Malleswaram','Gold',100000);
INSERT INTO jewellery_shop values(107,'Kalyan_Jewellers','Mejestic','Silver',800000);
INSERT INTO jewellery_shop values(108,'Tanishq_Jewellers','BTM','Crystal_Cascade',300000);
INSERT INTO jewellery_shop values(109,'GRT_Jewellers','SilkBoard','Pearl ',400000);
INSERT INTO jewellery_shop values(110,'JOs_Jewellers','Hoskote','Gold',200000);

/// INSERT VALUE TO Hospital

INSERT INTO hospital values(10011,'JayDev_Hospital','BTM',true,2000);
INSERT INTO hospital values(10012,'KC_General','Malleshwaram',false,800);
INSERT INTO hospital values(10013,'Manipal_Hospital','Jayanagar',true,5000);
INSERT INTO hospital values(10014,'Ramaiah_Hospital','BEL',true,4000);
INSERT INTO hospital values(10015,'Aster_RV_Hospital','Bannerughatta',true,3000);
INSERT INTO hospital values(10016,'Apollo_Hospital','Hebbal',true,2000);
INSERT INTO hospital values(10017,'Green_City_Hospital','SilkBoard',true,2300);
INSERT INTO hospital values(10018,'SanjayGandhi_Hospital','jayaNagar',false,5000);
INSERT INTO hospital values(10019,'Rainbow_Hospital','Bannerghatta',true,1000);
INSERT INTO hospital values(10020,'Nimhans_Hospital','Bengaluru',false,2000);

/// INSERT VALUE TO Movie

INSERT INTO movie values(201,'RajKumar','PuneethRajkumar',2017,3);
INSERT INTO movie values(202,'Kantara','Rishab Shetty',2022,3);
INSERT INTO movie values(203,'Adduri','DruvaSarja',2019,3);
INSERT INTO movie values(204,'Roberrt','Darshan',2022,3);
INSERT INTO movie values(205,'Yuvarathnaa','PuneethRajkumar',2022,3);
INSERT INTO movie values(206,'LoveMocktail','DarlingKrishna',2022,3);
INSERT INTO movie values(207,'Dia','KusheeRavi',2020,3);
INSERT INTO movie values(208,'KirikParty','RakshithShetty',2016,3);
INSERT INTO movie values(209,'Pogaru','DruvaSarja',2021,3);
INSERT INTO movie values(210,'KGF_1','Yash',2018,3);


/// INSERT VALUE TO Apartment

INSERT INTO apartment values(501,'shrusti_apartment','Vidyaranyapura',50000,false,true);
INSERT INTO apartment values(502,'GreenHome_apartment','HSRLayout',60000,true,true);
INSERT INTO apartment values(503,'Luxury_partments','Bengaluru',100000,false,true);
INSERT INTO apartment values(504,'Premium_apartment','mysuru',90000,false,true);
INSERT INTO apartment values(505,'Residential','Hebala',50000,false,true);
INSERT INTO apartment values(506,'Oakyard_apartment','Jayanagar',100000,false,true);
INSERT INTO apartment values(507,'Studio_apartments ','bengaluru',50000,false,true);
INSERT INTO apartment values(508,'Shivaganga ','Kanakapura',50000,false,true);
INSERT INTO apartment values(509,'vastu _apartment','SilkBoard',80000,false,true);
INSERT INTO apartment values(510,'Duplex_apartments','Hoskote',50000,false,true);

/// INSERT VALUE TO Flight

INSERT INTO flight values(901,'SkyBliss_Airways','BD674','Canada','12.00PM');
INSERT INTO flight values(902,'StarGlide_Airlines','AD674','USA','12.00AM');
INSERT INTO flight values(903,'AeroVenture_Express','GF5435','Canada','2.00PM');
INSERT INTO flight values(904,'CloudWings_Aviation','Aa8097','Canada','9.00AM');
INSERT INTO flight values(905,'HorizonJet_Airways','BA1543','Canada','1.00AM');
INSERT INTO flight values(906,'HorizonJet_Airways','BA1543','America','1.00AM');
INSERT INTO flight values(907,'AeroSpectra_Airlines','BA1543','Southwest','9.00AM');
INSERT INTO flight values(908,'SkyHarbor_Airlines','QE1543','Monrovia','5.00AM');
INSERT INTO flight values(909,'SkyQuest_Airlines','PA1453','America','7.00PM');
INSERT INTO flight values(910,'HorizonJet_Airways','PA1453','America','5.00PM');

//WHERE CLAUSE
SELECT * FROM flight where id=905;
SELECT * FROM flight where flight_name='HorizonJet_Airways';
SELECT * FROM flight where flight_number='PA1453';
SELECT * FROM flight where departure_city='Canada';
SELECT * FROM flight where departure_time='9.00AM';





















