USE MyDatabase


CREATE TABLE Students (
    Std_id INT NOT NULL,
    Department VARCHAR(20),
    Contact_no INT,
    Age INT,
    Balance INT,
    CONSTRAINT primary_key_students PRIMARY KEY (Std_id)
)

/*Q1.Create a new table called Courses with columns: Course_id (integer, cannot be empty),
Course_name (text, up to 50 characters), and Credit_hours (integer). Make Course_id the primary key.*/

CREATE TABLE Courses(
    Course_id INT NOT NULL,
    Course_name VARCHAR(50),
    Credit_hours INT,
    CONSTRAINT pk_courses PRIMARY KEY (Course_id)
)

--Q2.You realize the Students table needs to track each student's email address. Add a new column for it — text, up to 100 characters.--

ALTER TABLE Students
ADD email_address VARCHAR(100) UNIQUE

--Q3.Turns out Contact_no was set up as INT, but phone numbers with leading zeros are getting cut off. Change that column's data type to VARCHAR(15) instead.--

ALTER TABLE Students 
ALTER COLUMN Contact_no VARCHAR(15)

---Q4.The Balance column is no longer needed at all. Remove it from the Students table entirely.----

ALTER TABLE Students
DROP COLUMN Balance


SELECT * FROM Students
--Q5.You want every new student added from now on to automatically have a Balance of 0 unless told otherwise. Add a rule that gives the column a starting value automatically.--

ALTER TABLE Students
ADD Balance INT DEFAULT(0)

--Q6.A new semester begins and you want to wipe out all rows from a temporary Attendance table (but keep the table structure intact for reuse next semester).

CREATE TABLE ATTENDENCE(
    kbd varchar(50),
    leaves int
)

TRUNCATE TABLE ATTENDENCE

---Q7.The Courses table (from Q1) needs a rule ensuring Credit_hours can never be negative or zero.---

ALTER TABLE Courses
ADD CONSTRAINT
CK_CREDIT_HOURS CHECK( Credit_hours>0)


SELECT * FROM courses
INSERT INTO Courses 
VALUES
    (2, 'expository writing', 0)

---Q8.You accidentally named a table Studnets (typo). Fix the name to Students without dropping and recreating it.

EXEC sp_rename 'Students', 'STUDENT';


----Q9.You're permanently done with a table called TempImportData used only for a one-time data load. Get rid of it completely, structure and all.-------

CREATE TABLE tempimportdata(
    kbd varchar(10)
    )

DROP TABLE tempimportdata


--Q10.The Age column should never be left empty when adding a new student. Enforce that rule on an existing table (without recreating it).--


ALTER TABLE Student
ALTER COLUMN Age INT NOT NULL