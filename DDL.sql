USE MyDatabase

Select * From sys.tables;

--From the above query we can check how many tables do we have in the selected database

Select Top 10 *
From Employees


---------------------------------------DDL------------------------------
-----------------------------------------------------------------------
CREATE TABLE Students (
	Std_id INT NOT NULL,
	Department VARCHAR(20),
	Contact_no INT NOT NULL,
	Age INT NOT NULL,
	Balance INT NOT NULL
	CONSTRAINT primary_key_students PRIMARY KEY (Std_id)
)


Select * From Students
-----------------------------------------------------------------------

ALTER TABLE Students
ADD Joining_Date DATE NOT NULL

ALTER TABLE Students
Drop Column Joining_Date

ALTER TABLE Students
ADD Joining_Date DATE NOT NULL,
	email VARCHAR NOT NULL
-----------------------------------------------------------------------
DROP TABLE Students

Select * From Students