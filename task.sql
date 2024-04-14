CREATE TABLE college(c_id int NOT NULL UNIQUE,c_name varchar(20) NOT NULL UNIQUE,c_loc varchar(20),no_of_staff int ,c_code int PRIMARY KEY);

SELECT * FROM college;
desc college;

INSERT INTO college values(101,'BCU','krCircle',40,201);
INSERT INTO college values(102,'BEL','belcircle',40,202);
INSERT INTO college values(103,'Maruthi','hoskote',30,203);
INSERT INTO college values(104,'PES','blore',80,204);
INSERT INTO college values(105,'GFGCHoskote','hoskote',20,205);
INSERT INTO college values(106,'GFGCKRPURAM','krpuram',30,206);
INSERT INTO college values(107,'EASTPOINT','krpuram',40,207);
INSERT INTO college values(108,'NARAYAN','vidyaranyapura',70,208);
INSERT INTO college values(109,'Mahadeva','hoskote',50,209);
INSERT INTO college values(110,'Sambrundi','hoskote',40,210);


CREATE TABLE student(s_id int primary key, s_name varchar(20) NOT NULL UNIQUE, s_address varchar(20),s_sem int NOT NULL UNIQUE,marks int,c_code int, foreign key(c_code)references college(c_code) on delete cascade on update cascade);

select * from student;
desc student;

INSERT INTO student values(1001,'parthibha','hoskote','6','90',201);
INSERT INTO student values(1002,'kavya','tinfactory','4','80',203);
INSERT INTO student values(1003,'jyothi','krpuram','5','80',202);
INSERT INTO student values(1004,'pramod','hoskote','8','60',204);
INSERT INTO student values(1005,'sanju','blore','1','90',201);
INSERT INTO student values(1006,'narun','blore','2','70',206);
INSERT INTO student values(1007,'aryan','blore','9','90',207);
INSERT INTO student values(1008,'surya','krpuram','10','60',208);
INSERT INTO student values(1009,'prajval','tinfactory','7','40',209);
INSERT INTO student values(1010,'bharath','yalahanka','3','90',210);


CREATE TABLE branch(b_id int NOT NULL UNIQUE,b_name varchar(20) NOT NULL UNIQUE, HOD varchar(20),no_of_stud int,b_code int PRIMARY KEY, s_id int, foreign key(s_id) references  student(s_id) on delete cascade on update cascade);

SELECT * FROM branch;
DESC branch;

INSERT INTO branch values(1,'cs','pramod',30,301,1002);
INSERT INTO branch values(2,'math','madhu',50,302,1001);
INSERT INTO branch values(3,'phy','varun',30,303,1003);
INSERT INTO branch values(4,'zoo','kavitha',70,304,1002);
INSERT INTO branch values(5,'botny','narun',30,305,1004);
INSERT INTO branch values(6,'kannada','navya',30,306,1009);
INSERT INTO branch values(7,'english','sneha',90,307,1010);
INSERT INTO branch values(8,'chem','asha',20,308,1003);
INSERT INTO branch values(9,'ecom','manoj',30,309,1005);
INSERT INTO branch values(10,'ele','sanju',90,310,1006);


CREATE TABLE library(l_id int NOT NULL UNIQUE,l_name varchar(20) NOT NULL, bk_name varchar(20),no_of_book int,bk_id int PRIMARY KEY, b_code int, foreign key(b_code) references  branch(b_code) on delete cascade on update cascade);

Select * from library;
desc library;

INSERT INTO library values(20,'a','q',10,400,301);
INSERT INTO library values(21,'b','w',50,401,303);
INSERT INTO library values(22,'c','e',60,402,302);
INSERT INTO library values(23,'d','r',80,403,306);
INSERT INTO library values(24,'e','t',20,404,305);
INSERT INTO library values(25,'f','y',90,405,309);
INSERT INTO library values(26,'g','u',40,406,304);
INSERT INTO library values(27,'h','i',20,407,302);
INSERT INTO library values(28,'i','o',90,408,305);
INSERT INTO library values(29,'j','p',40,409,307);

CREATE TABLE author(a_id int NOT NULL UNIQUE,a_name varchar(20) NOT NULL, a_addres varchar(20),a_age int,a_code int PRIMARY KEY, bk_id int, foreign key(bk_id) references  library(bk_id) on delete cascade on update cascade);

SELECT * FROM author;
desc author;

INSERT INTO author values(30,'pramod','blore',40,500,400);
INSERT INTO author values(31,'prathiba','blore',30,501,402);
INSERT INTO author values(32,'kavita','blore',80,502,403);
INSERT INTO author values(33,'jyothi','blore',90,503,404);
INSERT INTO author values(34,'kavya','blore',50,504,406);
INSERT INTO author values(35,'navya','blore',40,505,407);
INSERT INTO author values(36,'asha','blore',40,506,408);
INSERT INTO author values(37,'arun','blore',80,507,409);
INSERT INTO author values(38,'narun','blore',30,508,405);
INSERT INTO author values(39,'prajwal','blore',60,509,404);



