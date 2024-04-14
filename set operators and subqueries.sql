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


CREATE TABLE hospitals(h_id int primary key,h_name varchar(20) NOT NULL,h_address varchar(20) NOT NULL  on  );
insert into hospitals values(101,'MVJ','hoskote');
insert into hospitals values(102,'jaydeva','btm');
insert into hospitals values(103,'sanjaygandhi','jayanagar');
insert into hospitals values(104,'nimas','blore');
insert into hospitals values(105,'appolo','btm');

select * from hospitals;

CREATE TABLE doctor(d_id int primary key, d_name varchar(20) Not null,h_id int, foreign key(h_id) references hospitals (h_id) on delete cascade on update cascade);
insert into doctor values(1,'Pramod',101);
insert into doctor values(2,'aryan',103);
insert into doctor values(3,'narun',105);
insert into doctor values(4,'madhu',103);
insert into doctor values(5,'chiru',103);

select * from doctor; 

CREATE TABLE patient(p_id int primary key, p_name varchar(20) Not null, p_address varchar(20) Not null,d_id int, foreign key(d_id) references doctor (d_id) on delete cascade on update cascade);
insert into patient values(11,'anu','hoskote',1);
insert into patient values(12,'kavitha','blore',3);
insert into patient values(13,'asha','sulibele',4);
insert into patient values(14,'navya','krpuram',4);
insert into patient values(15,'anitha','tinfactory',5);

select * from patient; 

//union
select * from hospitals
union
select * from doctor;

//union all
select * from hospitals
union all
select * from doctor;

//intersect
SELECT distinct h_id as inter from hospitals inner join doctor using(h_id);


//SUBQUERIES

SELECT * FROM hospitals;  h_id pk
SELECT * FROM doctor;     h_id fk,d_id pk
SELECT * FROM patient;    d_id fk



//featching the anu patient hospital name
Select h_name from hospitals where h_id=
(Select h_id from doctor where d_id=
(Select d_id from patient where p_name='navya'));

//deleting the p_id =12 refering in hospital table
 delete from hospitals where h_id=
(Select h_id from doctor where d_id=
(Select d_id from patient where p_id=12));

Select h_name from hospitals where h_id=
(Select h_id from doctor where d_id=
(Select d_id from patient where p_address='hoskote'));