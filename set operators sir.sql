CREATE TABLE train1(p_no int ,t_name varchar(20),capacity int,ticketprice int);

INSERT INTO train1 values(1001,'a',1000,300);
INSERT INTO train1 values(1002,'b',500,400);
INSERT INTO train1 values(1003,'c',200,900);
INSERT INTO train1 values(1004,'d',600,200);
INSERT INTO train1 values(1005,'e',800,700);


CREATE TABLE train2(p_no int ,t_name varchar(20),capacity int,ticketprice int);
INSERT INTO train2 values(1001,'a',1000,300);
INSERT INTO train2 values(1002,'b',500,400);
INSERT INTO train2 values(1007,'c',200,900);
INSERT INTO train2 values(1004,'d',600,200);
INSERT INTO train2 values(1009,'e',800,700);


//union
select * from train1
union
select * from train2;

//union all
select * from train1
union all
select * from train2;


Intersect:

select * from student;
select * from college;
SELECT distinct c_code as inter from college inner join student using(c_code);

JOINS:

SELECT * FROM college c INNER JOIN student s on c.c_code = s.c_code;
SELECT * FROM college c left join student s on c.c_code = s.c_code;
 SELECT * FROM college c right join student s on 
 c.no_of_staff = s.marks;
 
 select * from college;
 CASE:
 
 SELECT no_of_staff,
 CASE
 WHEN no_of_ staff > 20 THEN "Greater than 100"
 WHEN no_of_staff < 50 THEN "Less than 50"
 ELSE "In between 20 and 50"
 END AS num
 FROM college;
 
 SELECT no_of_staff,
  CASE
    WHEN no_of_staff > 100 THEN "Greater than 100"
    WHEN no_of_staff < 50 THEN "Less than 50"
    ELSE "In between 50 and 100"
  END AS msg
FROM college;

 
 
 

 SELECT 
  no_of_staff,
  CASE
    WHEN no_of_staff > 100 THEN "Greater than 100"
    WHEN no_of_staff < 50 THEN "Less than 50"
    ELSE "In between 50 and 100"
  END AS num
FROM college;



SUBQUERIES:Inner query or Nested Query

SELECT * FROM college;  c_code pk
SELECT * FROM student;  c_code fk s_id pk
select * from branch;   s_id fk, b_code pk
select * from library;  b_code fk


delete from college where c_code = 
(select c_code from student where s_id = 
(select s_id from branch where b_code =
(select b_code from library where bk_id = 401)));

select * from college where c_code = 
(select c_code from student where s_id = 
(select s_id from branch where b_code =
(select b_code from library where bk_id = 401)));



update college set c_name = 'National' where c_code = 
(select c_code from student where s_id = 
(select s_id from branch where b_code = 
(select b_code from library where no_of_book = 50)));


select * from college where c_code = 
(select c_code from student where s_id = 
(select s_id from branch where b_code = 
(select b_code from library where no_of_book = 50)));

select * from college,student;
CARTESIAN PRODUCT: 

1    1
2    2
3    2 
4    5
5    7
9




select 

select c_id,c_name from college where c_code = 
(select c_code from student where s_id = 
(select s_id from branch where b_code = 
(select b_code from library where no_of_book = 10)));





select c_name from college where c_code = 
(select c_code from student where s_id = 
(SELECT s_id from branch where HOD = 'pramod'));





select c_loc from college where c_code = (
select c_code from student where s_name = 'Kavya');




SELECT no_of_staff from  college where c_code = 
(SELECT c_code from student where s_sem = 2);

select c_name from college where c_code in 
(select c_code from student where s_address = 'blore');




SELECT c_name from college where c_code = 
(SELECT c_code from student where s_name = 'parthibha');



SELECT * FROM college;

LOCK TABLE college read;


update college set c_name = 'National' where c_code = 201;

unlock tables;









