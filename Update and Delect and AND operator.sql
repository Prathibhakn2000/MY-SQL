CREATE TABLE bank(Id int,B_Name varchar(30),B_location varchar(30),B_IFSCCode varchar(30),Branch varchar(30),no_of_staff int,no_of_accounts bigint);

SELECT *FROM  bank;

INSERT INTO bank values(101,'SBI','Blore','SBIIN1234','Sulibele',10,10000);
INSERT INTO bank values(102,'Cental','Kolar','CENIN1234','Malur',10,10000);
INSERT INTO bank values(103,'HDFC','Blore','HDFC1234','Chikaballapura',12,10000);
INSERT INTO bank values(104,'Karnataka','Blore','KARIN1234','Malleswaram',20,10000);
INSERT INTO bank values(105,'YES','Blore','YESIN1234','Yashvanthpura',10,10000);
INSERT INTO bank values(106,'Canara','Blore','CANIN1234','Hoskote',20,10000);

SELECT * FROM bank;

//Update
UPDATE  bank SET B_location='Blore' where B_Name='cental';
UPDATE  bank SET B_Name='Central' where Id=102;

UPDATE bank SET Branch='Hoskote' where B_IFSCCode='YESIN1234';

//AND Oprator
UPDATE  bank SET B_location='Mysuru' where Branch='BTM' AND no_of_staff=10;

UPDATE bank SET no_of_accounts=5000 where B_Name='YES' AND Id=105;

//DELETE
DELETE  FROM bank where B_Name='Central';

DELETE FROM bank  where B_Name='YES' AND Id=105;

DELETE FROM bank  where B_Name='BTM' AND Id=105;


