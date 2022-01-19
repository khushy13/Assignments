
JOINS For three tables

******************************************************************************

CREATE TABLE Employee (
	eid int primary key,
	ename varchar(20));

INSERT INTO Employee VALUES
(1, 'Khushi'),
(2, 'Neha'),
(3, 'Nency'),
(4, 'Geeta'),
(5, 'Mona'),
(6, 'Pooja');

SELECT * FROM Employee;

CREATE TABLE Company (
	cmpid int primary key, 
	eid int, 
    score int, 
	status varchar(20));

INSERT INTO Company VALUES
(011, 1, 44, 'PASS'),
(012, 2, 67, 'PASS'),
(013, 3, 87, 'PASS'),
(014, 4, 22, 'FAIL'),
(015, 5, 89, 'PASS'),
(016, 6, 90, 'PASS'),
(017, 7, 31, 'PASS'),
(018, 8, 12, 'FAIL'),
(019, 9, 45, 'PASS'),
(020, 10, 67, 'PASS');

SELECT * FROM Company;

CREATE TABLE Details (
	city varchar(20), 
	emailid varchar(20), 
    cmpid int, 
	profile varchar(50));

INSERT INTO Details VALUES 
('Jaipur', 'nency@gmail.com', 013, 'JavaScript Developer'),
('Ahemdabad', 'neha@gmail.com', 012, 'HR'),
('Bhavnagar', 'khushi@gmail.com', 011, 'Java Developer'),
('Mumbai', 'geeta@gmail.com', 014, 'Graphics Designer');

SELECT * FROM Details;

SELECT ename, score, status, city, emailid,
profile from Employee e INNER JOIN Company c on
e.eid = c.eid INNER JOIN Details d on 
d.cmpid = c.cmpid;

SELECT ename, score, status, city, emailid,
profile from Employee e FULL OUTER JOIN Company c on
e.eid = c.eid FULL OUTER JOIN Details d on 
d.cmpid = c.cmpid;

SELECT ename, score, status, city, emailid,
profile from Employee e LEFT JOIN Company c on
e.eid = c.eid LEFT JOIN Details d on 
d.cmpid = c.cmpid;

SELECT ename, score, status, city, emailid,
profile from Employee e RIGHT JOIN Company c on
e.eid = c.eid RIGHT JOIN Details d on 
d.cmpid = c.cmpid;

*************************************************************************

Stored Procedure

*************************************************************************

CREATE PROCEDURE EmpProcedure 
AS 
SELECT * FROM Details
GO;

EXEC EmpProcedure;


CREATE PROCEDURE SinglePara @score int
AS 
SELECT * FROM Company WHERE score = @score;

EXEC SinglePara @score = 44;


CREATE PROCEDURE MultiPara @city varchar(20), @profile varchar(20)
AS 
SELECT * FROM Details WHERE city = @city AND profile = @profile;

EXEC MultiPara @city = 'Bhavnagar', @profile = 'Java Developer';