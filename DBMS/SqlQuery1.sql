CREATE DATABASE DB;

CREATE TABLE student(
id int PRIMARY KEY,
name varchar(20),
gender varchar(10)
);

INSERT INTO student (id, name, gender)
VALUES (1, 'Gita', 'Female'),
(2, 'Sita', 'Female'),
(3, 'Ramesh', 'Male'),
(4, 'Suresh', 'Male');

SELECT * FROM student;

SELECT * FROM student
WHERE gender = 'Female';

SELECT * FROM student
ORDER BY name;

ALTER TABLE student
ADD age int;

SELECT COUNT(*) FROM student 
GROUP BY gender;

UPDATE student
SET age = 15 WHERE id = 1;
UPDATE student
SET age = 16 WHERE id = 2;
UPDATE student
SET age = 13 WHERE id = 3;
UPDATE student
SET age = 15 WHERE id = 4;

SELECT DISTINCT(age) FROM student;

SELECT * FROM student 
WHERE name LIKE 'S%';

ALTER TABLE student
DROP COLUMN age;

SELECT * FROM student;

DELETE FROM student;

DROP TABLE student;