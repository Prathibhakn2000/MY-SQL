SELECT * FROM branch;

desc branch;

desc bakery;

CREATE TABLE bag(id int, b_name varchar(20), b_colour varchar(20),price int, primary key(id, b_name, b_colour));
Composite primary key:

SELECT * FROM bag;

INSERT INTO bag values(1,'Lenovo','Black',500);
INSERT INTO bag values(2,'hp','Blue',600);
INSERT INTO bag values(1,'Lenovo','Green',700);
INSERT INTO bag values(1,'hp','Green',700);

joins:




SELECT * FROM college;


select * from college;
group by:

SELECT c_loc,count(c_loc) FROM college group by c_loc;

SELECT * FROM library;

SELECT * FROM jewellery_shop;

SELECT jewel_material,SUM(jewel_price) from jewellery_shop group by jewel_material;

SELECT jewel_material,(jewel_price) from jewellery_shop group by jewel_material;

SELECT jewel_material,MAX(jewel_price) as price from jewellery_shop group by jewel_material;

HAVING:

SELECT jewel_material,avg(jewel_price) as price from jewellery_shop where 
location = 'BTM'
group by jewel_material having price > 400000;

SELECT * FROM jewellery_shop;










100 students

id  s-name  gender  marks branch


SELECT SUM(marks) from student group by gender;

SELECT count(s_name) from student where branch = 'CS'
group by college_name having count>300;




joins:Combine the multiple tables based on join condition.
1)Inner join:

SELECT * FROM college;
select * from student;
select * from branch;
SELECT * FROM library;

SELECT * from college c INNER JOIN student s
 ON c.c_code = s.c_code inner join branch b on b.s_id = s.s_id 
 inner join library l on l.b_code = b.b_code;


create table a(id int, a_name varchar(20));
create table b(id int, b_name varchar(20));
create table c(id int, c_name varchar(20));

INSERT INTO a values(1,'ABC'),(2,'CDE'),(3,'DEF'),(4,'EFG'),(5,'RES');
INSERT INTO b values(1,'HJK'),(8,'CDE'),(3,'GKL'),(4,'EFG'),(9,'RES');
INSERT INTO c values(1,'IJK'),(4,'mno'),(3,'uio'),(5,'EFG'),(10,'RES');

SELECT * FROM a;
SELECT * FROM b;
select * from c;

SELECT * FROM a INNER JOIN b on a.a_name = b.b_name INNER JOIN c on c.c_name=b.b_name;


Inner join:

SELECT taba.id,taba.a_name,tabb.id,tabb.b_name FROM a as taba INNER JOIN b as tabb on 
taba.a_name = tabb.b_name

LEFT JOIN: will return all rows from left table and matching records from right table

SELECT * FROM a LEFT JOIN b on a.id = b.id;


A   B 
1   1
2   6
3   3
4   7 
5   5


full outer join:

SELECT * FROM college;
select * from student;

SELECT * from college c left join student s on c.c_code = s.c_code
union
select * from college c right join student s on c.c_code = s.c_code;





SELECT * FROM college;
update college set c_name = 'XWORKZ' WHERE c_id = 101;



CREATE TABLE college_dup as select c_id,c_loc,c_code from college;
select * from college_dup;

VIEWS:

CREATE VIEW college_view as select * from college;
SELECT * FROM college_view;















