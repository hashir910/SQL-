Use LIBRARY_MANAGEMENT_SYSTEM

-------------(String Functions)-----------------

-------------(concat)--------------------------

SELECT * FROM SYS.TABLES

SELECT 
	CONCAT(STUDENT_NAME, '-' ,GRADE) AS STD_GRADE
FROM STUDENTS

SELECT 
	CONCAT(BK.BOOK_TITLE, '-' , ATH.AUTHOR_NAME) AS BOOK_AUTHORS
FROM BOOK_AUTHORS AS BKA
INNER JOIN BOOKS AS BK
ON BK.BOOK_ID=BKA.BOOK_ID
INNER JOIN AUTHOR AS ATH
ON BKA.AUTHOR_ID=ATH.AUTHOR_ID

-----------(UPPER)------------------
SELECT 
	UPPER(STUDENT_NAME)
FROM STUDENTS


-----------(LOWER)------------------
SELECT 
	LOWER(STUDENT_NAME)
FROM STUDENTS
SELECT * FROM STUDENTS
-----------(TRIM)------------------
SELECT * 
FROM STUDENTS
WHERE STUDENT_NAME = TRIM(STUDENT_NAME)


--------------(LEFT)-------------------------------
UPDATE STUDENTS
SET STUDENT_NAME = LEFT(STUDENT_NAME,LEN(STUDENT_NAME)-LEN(GRADE))

---------------(REPLACE)---------------------------

SELECT 
	CONTACT_NO,
	REPLACE(CONTACT_NO,CONTACT_NO,LEFT(CONTACT_NO,5)) AS KBD
FROM STUDENTS


----------------------------(Right)--------------------------------------
SELECT 
	CONCAT(RIGHT(STUDENT_NAME,1),RIGHT(STUDENT_NAME,2),RIGHT(STUDENT_NAME,3))
FROM STUDENTS
-------------------------------(SUBSTRING)---------------------------------


SELECT 
	SUBSTRING(STUDENT_NAME,2,3)
FROM STUDENTS