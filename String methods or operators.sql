CREATE TABLE juice(id int,name varchar(20),flavor varchar(20),price int, mnf_year int);

SELECT * FROM juice;

INSERT INTO juice values(200,'mazza','sweet',30,2023),(201,'sprite','mint',50,2023),(202,'pepsi','mint',20,2023),(200,'pulpiOrange','orange',40,2024);

//char: LIKE, UPPER,LOWER,CONCAT,INSTR,SUBSTR,LENGTH(String methods)

//LIKE - Pattren Matching -(%)
Select * from juice where flavor LIKE'm%';
Select * from juice where flavor LIKE'm%t';
Select * from juice where flavor LIKE'o%n%e';

//UPPER
Select UPPER(name)FROM juice;

//LOWER
Select LOWER(flavor)FROM juice;

//CONCATINATION
SELECT CONCAT(name,flavor) FROM juice;

SELECT CONCAT('Xworkz','ODC','BTM');

// ALIAS:(as)
SELECT CONCAT(name,flavor) as combine FROM juice;

SELECT UPPER(name) as CAP from juice;

SELECT LOWER(name) as LOW from juice as J;

//LENGTH
SELECT name ,LENGTH(name) as length FROM juice;

//INSTR:
'BENGALURU'
SELECT INSTR('BENGALURU','R') as pos;

SELECT flavor,INSTR(flavor,'a') as pos from juice;

//SUBSTR:
(STRING,startposition,noofcharcterstoreturn);
SELECT SUBSTR('BENGULURU', 4,4);

SELECT name,SUBSTR(name, 4,3)as substr from juice;

select * from juice;







