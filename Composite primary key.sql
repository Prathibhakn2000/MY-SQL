CREATE TABLE bag(id int, b_name varchar(20), b_colour varchar(20),price int, primary key(id, b_name, b_colour));
Composite primary key:

SELECT * FROM bag;

INSERT INTO bag values(1,'Lenovo','Black',500);
INSERT INTO bag values(2,'hp','Blue',600);
INSERT INTO bag values(1,'Lenovo','Green',700);
INSERT INTO bag values(1,'hp','Green',700);
