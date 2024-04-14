Create table student1(name varchar(20),age int,marks int);
insert into student1 values('parthi',23,90);
insert into student1 values('pramod',25,80);
insert into student1 values('aryan',20,50);
insert into student1 values('narun',13,60);
insert into student1 values('sanju',20,50);
insert into student1 values('kavitha',23,90);
insert into student1 values('kavya',23,90);
insert into student1 values('jyothi',23,90);
insert into student1 values('madhu',23,80);
insert into student1 values('anu',23,60);


SELECT name,
  CASE
    WHEN marks > 80 THEN "distinction"
    WHEN marks > 60 THEN "first class"
    WHEN marks > 30 THEN "second class"
    ELSE "fail"
  END AS result
FROM student1;