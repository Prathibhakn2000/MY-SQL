CONSTRAINTS

1) NOT NULL

CREATE TABLE gym(Id int NOT NULL,g_name varchar(20),price bigint);
SELECT * FROM gym;

INSERT INTO gym values(1,'abc',1233);
INSERT INTO gym values(2,'bcw',2300);
INSERT INTO gym values(3,'wer',7890);
INSERT INTO gym values(4,'vbn',5678);

2) UNIQUE
CREATE TABLE chair1(Id int NOT NULL UNIQUE,c_name varchar(20),price bigint);
SELECT * FROM chair1;

INSERT INTO  chair1 values(1,'abc',1233);
INSERT INTO chair1 values(2,'bcw',2300);
INSERT INTO chair1 values(3,'wer',7890);
INSERT INTO chair1 values(4,'vbn',5678);

3) CHECK
CREATE TABLE chair2(Id int NOT NULL UNIQUE,c_name varchar(20),price bigint, check(price>300));
SELECT * FROM chair2;

INSERT INTO  chair2 values(1,'abc',1245);
INSERT INTO chair2 values(2,'bcw',2300);
INSERT INTO chair2 values(3,'wer',7890);
INSERT INTO chair2 values(4,'vbn',5678);

4) PRIMARY KEY
CREATE TABLE shop(Id int PRIMARY KEY,s_name varchar(20) UNIQUE,price bigint NOT NULL);
SELECT * FROM shop;
desc shop;

INSERT INTO  shop values(1,'a',200);
INSERT INTO shop values(2,'binary',234);
INSERT INTO shop values(3,'c',789);
INSERT INTO shop values(4,'d',890);

update shop set s_name='b' where Id= 2;

5) FOREIGN KEY
CREATE TABLE saller(sl_Id int not null unique,sl_name varchar(20) UNIQUE,price bigint NOT NULL,sl_nbr int primary key,Id int, foreign key(Id)references shop(Id) on delete cascade on update cascade);
SELECT * FROM saller;
desc saller;

INSERT INTO  saller values(101,'aa',200,10,1);
INSERT INTO saller values(102,'bb',234,20,3);
INSERT INTO saller values(103,'cc',789,30,2);
INSERT INTO saller values(104,'dd',890,40,3);

