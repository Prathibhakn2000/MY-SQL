CREATE TABLE owner (O_id int primary key,O_name varchar(20) NOT NULL UNIQUE,company_name varchar(20)NOT NULL);
INSERT INTO owner values(1,'prathibha','amazon');
INSERT INTO owner values(2,'jyothi','amazon');
INSERT INTO owner values(3,'kavya','flipkart');
INSERT INTO owner values(4,'veena','amazon');
INSERT INTO owner values(5,'pruthvi','meesho');
INSERT INTO owner values(8,'pp','meesho');


SELECT * FROM owner;

truncate table owner;

CREATE TABLE vender (v_id int primary key,v_name varchar(20) NOT NULL UNIQUE,v_address varchar(20)NOT NULL,O_id int, foreign key(O_id) references owner (O_id) on delete cascade on update cascade);
INSERT INTO vender values(11,'pramod','hoskote',1);
INSERT INTO vender values(12,'abhi','mlore',4);
INSERT INTO vender values(13,'madhu','blore',3);
INSERT INTO vender values(14,'narun','hoskote',3);
INSERT INTO vender values(15,'aryan','blore',2);
INSERT INTO vender values(16,'ashu','blore',5);

Select * from vender;

CREATE TABLE cust (c_id int primary key,c_name varchar(20) NOT NULL UNIQUE,c_address varchar(20)NOT NULL,v_id int, foreign key(v_id) references vender (v_id) on delete cascade on update cascade);
INSERT INTO cust values(1,'akash','hoskote',12);
INSERT INTO cust values(3,'sanju','blore',11);
INSERT INTO cust values(4,'nisha','sulible',13);
INSERT INTO cust values(5,'smitu','krpuram',14);
INSERT INTO cust values(6,'chitra','tinfactory',15);

truncate  table cust;

SELECT * from cust;

//inner join
select * from owner as O inner join vender as V on O.O_id=V.O_id;

select * from owner as O inner join vender as V on O.O_id=V.O_id inner join cust as c on c.c_id = V.O_id ;

//left join
SELECT * FROM owner as o LEFT JOIN vender as v on o.O_id = v.O_id;

//right join
SELECT * FROM owner as o RIGHT JOIN vender as v on o.O_id = v.O_id;

SELECT * FROM owner as o RIGHT JOIN vender as v on o.O_name = v_name;

//outer full join or full join
SELECT * FROM owner as o LEFT JOIN vender as v on o.O_id = v.O_id
union
SELECT * FROM owner as o RIGHT JOIN vender as v on o.O_id = v.O_id;





