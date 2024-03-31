CREATE TABLE metro(Id int,m_name varchar(20),timings timestamp ,source varchar(20),destination varchar(20));
SELECT * FROM metro;

INSERT  INTO metro values(1001,'greenMetro',now(),'malleswaram','majestic');
INSERT  INTO metro values(1002,'purpleMetro',now(),'hoskote','blore');
INSERT  INTO metro values(1003,'yellowMetro',now(),'vidyaranyapura','majestic');
INSERT  INTO metro values(1004,'blackMetro',now(),'krcircle','corporation');
INSERT  INTO metro values(1005,'greenMetro',now(),'BTM','majestic');

//OR Operator
SELECT * FROM metro where id=1001 or m_name='greenMetro';

SELECT * FROM metro where id=1003 or destination='majestic';

DELETE FROM metro where id=1004 or source='krcircle';

//IN Operator
SELECT * FROM metro where id IN(1001,1002,1003);

SELECT * FROM metro where m_name IN('greenMetro','purpleMetro');

//NOTIN Operator
SELECT Id,timings FROM metro where m_name NOT IN('greenMetro','purpleMetro');

//BETWEEN
SELECT * FROM metro where Id BETWEEN 1001 and 1004;

//NOT BETWEEN
SELECT * FROM metro where Id  NOT BETWEEN 1002 and 1003;

//ORDER BY
SELECT * FROM metro ORDER BY Id;

SELECT * FROM metro ORDER BY Id desc;

SELECT * FROM metro ORDER BY destination asc;


///SELECT DISTINCT FROM WHERE GROUP BY HAVING ORDER BY;

//DISTINCT

SELECT DISTINCT (m_name) FROM  metro ;

CREATE TABLE metro1 as select * FROM metro;

SELECT* FROM metro1;



