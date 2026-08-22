Use MyDatabase

SELECT * FROM Employees

-------------------------Comparion Operators------------------------------------
--------------(=) is equal to --------------
SELECT * FROM Employees
Where Name = 'Ahmed' And City ='Karachi'

--------------(>) is greatar than--------------
SELECT *
FROM Employees
WHERE Name ='Ahmed' and Salary > 30000

--------------(>=) is greatar than equal to --------------
SELECT *
FROM Employees
WHERE Name ='Ahmed' and Salary >= 30000

--------------(<>) not equal to --------------

SELECT * 
FROM Employees
WHERE Name <> 'Ahmed' and Salary >=80000

--------------(>=) greathan equal to --------------
SELECT *
FROM Employees
WHERE YEAR(JoiningDate)>=2021

--------------(<) less than ----------------

SELECT *
FROM Employees
WHERE YEAR(JoiningDate)<2021



--------------(<=) less than equal to  ----------------
SELECT *
FROM Employees
WHERE YEAR(JoiningDate)<=2021



------------------------------------------(Range Operator)----------------------------------------

SELECT * FROM Employees 
WHERE Salary BETWEEN 20000 and 40000

--------------------------------------------(logical operator)---------------------------------------

SELECT * FROM Employees
WHERE Department='Sales' OR DEPARTMENT ='IT'


SELECT * FROM Employees
WHERE Department = 'IT' and City ='Islamabad'
ORDER BY ManagerID DESC


SELECT * FROM Employees
WHERE NOT Department='IT'
--------------------------------------------(Membership operator)---------------------------------------

SELECT * FROM Employees
WHERE Department IN ('Sales','IT','Operations')


SELECT * FROM Employees
WHERE Department NOT IN ('Sales','IT','Operations')

