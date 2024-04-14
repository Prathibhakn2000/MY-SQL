CREATE TABLE Attendance(id int auto_increment primary key, s_name varchar(20), a_date timestamp);

SELECT * FROM Attendance;

INSERT INTO Attendance(s_name, a_date) values('ABC', now());
INSERT INTO Attendance(s_name, a_date) values('CDE', now());

INSERT INTO Attendance values(6,'def',now());
INSERT INTO Attendance(s_name, a_date) values('sdsfsd', now());
INSERT INTO Attendance(s_name, a_date)  values('nhd', now());
