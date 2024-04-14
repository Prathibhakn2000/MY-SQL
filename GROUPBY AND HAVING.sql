CREATE TABLE newspaper(id int,name varchar(20),language_type varchar(20),price int);

INSERT INTO newspaper values(1,'prajavaani','kannada',10);
INSERT INTO newspaper values(2,'timesofindia','english',20);
INSERT INTO newspaper values(3,'vijayakarnataka','kannada',30);
INSERT INTO newspaper values(4,'DeccanHerald ','english',30);
INSERT INTO newspaper values(5,'vijayavaani','kannada',10);
INSERT INTO newspaper values(6,'vijayavaani','kannada',60);
INSERT INTO newspaper values(7,'DeccanHerald','english',60);

delete from newspaper where id=4;

Select *from newspaper;

truncate table newspaper;


Group by:

SELECT name,count(name) as count FROM newspaper group by name ;
SELECT name,SUM(price)as sum from newspaper group by name;
SELECT name,max(price)as max from newspaper group by name;
SELECT name,min(price)as min from newspaper group by name;
SELECT name,avg(price)as avg from newspaper group by name;

Having:
SELECT name, MAX(price) AS price 
FROM newspaper 
WHERE language_type = 'kannada' 
GROUP BY name 
HAVING price >= 10;

