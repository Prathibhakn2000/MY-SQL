CREATE TABLE chocolate(Id int,name varchar(20),price int);

select * from chocolate;

insert into chocolate values(101,'kitkat',200);
insert into chocolate values(102,'milkybar',300);
insert into chocolate values(103,'fivestar',500);
insert into chocolate values(104,'dairymilk',800);
insert into chocolate values(105,'snickers',100);

//Aggregate functions:
1.COUNT
SELECT COUNT(*) FROM chocolate;
SELECT COUNT(price) as total FROM chocolate;

2.SUM
SELECT SUM(price) as sum from chocolate;

3.MIN
SELECT MIN(price) as sum from chocolate where Id IN(101,102,103,104);
SELECT MIN(price) as sum from chocolate;

4.MAX
SELECT MAX(price) as sum from chocolate;

5.AVG
SELECT AVG(price) as sum from chocolate;

