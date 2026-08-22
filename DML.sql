SELECT *
FROM Students
-------------------------Insert Into--------------
INSERT INTO Students (Std_id,Department,Contact_no,Age,Balance)
VALUES
		(101,'Data-Science',1,21,75000),
		(201,'Cyber-Security',2,21,55000)

ALTER TABLE Students
Add Name VARCHAR(20)

SELECT * FROM Students

Drop table students


-----------Using some tricks---------------


Select * From customers

INSERT INTO Students (Std_id,Department,Contact_no,Age,Balance,Name)
SELECT 
	id,
	Null,
	Null,
	Null,
	Null,
	first_name
From customers





-----------------Update----------------------

UPDATE Students
SET Name='Hashir',
	age=20
Where Std_id = 101

UPDATE Students
SET Name='Farhan'
Where Std_id = 201

SELECT * FROM Students





-------------Delete-------------------------------

DELETE FROM Students
Where Std_id<101


SELECT * FROM Students
-------------Truncate-------------------------------
TRUNCATE TABLE Students
SELECT * FROM Students
