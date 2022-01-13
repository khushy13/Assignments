
TCL Commands
*****************************************************

BEGIN TRANSACTION
INSERT INTO Employee (eid, ename)
VALUES (07, 'Raju');

ROLLBACK TRANSACTION

SELECT * FROM Employee;


BEGIN TRANSACTION
INSERT INTO Employee (eid, ename)
VALUES (08, 'Shyam');

INSERT INTO Employee (eid, ename)
VALUES (09, 'Ram');

COMMIT TRANSACTION

SELECT * FROM Employee;

*****************************************************
DCL Commands
*****************************************************

CREATE LOGIN khushi WITH PASSWORD = 'khushi123'
CREATE USER khushi FROM LOGIN khushi

GRANT insert, select ON Employee TO khushi;

REVOKE insert ON Employee TO khushi;


*****************************************************
AGGREGATE FUNCTIONS
*****************************************************

SELECT COUNT(*) FROM Employee;

SELECT MAX(eid) FROM Employee;

SELECT MIN(eid) FROM Employee;

SELECT SUM(eid) FROM Employee;

SELECT AVG(eid) FROM Employee;

*****************************************************
SCALAR FUNCTIONS
*****************************************************

SELECT LOWER(ename) FROM Employee WHERE eid = 1;

SELECT UPPER(ename) FROM Employee WHERE eid = 1;

SELECT LEN(ename) FROM Employee WHERE eid = 1;