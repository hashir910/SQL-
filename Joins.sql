------------(Joins)-------------------------
------------(INNER JOIN= Only the matching Data between two tables)-------------------------
SELECT * FROM customers
SELECT * FROM orders

SELECT 
	A.first_name,
	country,
	score,
	order_date,
	B.sales
FROM customers AS A
INNER JOIN orders AS B
ON A.id=B.customer_id
ORDER BY MONTH(order_date) DESC

------------(LEFT JOIN= ONLY THE DATA MATCHING WITH THE LEFT TABLE AND LEFT TABLE WITH IT)-------------------------

SELECT 
	A.first_name,
	A.country,
	A.score,
	B.order_date,
	B.sales
FROM customers as A
LEFT JOIN orders AS B
ON B.customer_id = A.id
------------(RIGHT JOIN= ONLY THE DATA MATCHING WITH THE RIGHT TABLE AND RIGHT TABLE WITH IT)-------------------------
SELECT 
	A.first_name,
	A.country,
	A.score,
	B.order_date,
	B.sales
FROM customers as A
RIGHT JOIN orders AS B
ON B.customer_id = A.id

------------(FULL JOIN= IT COUMBINES THE DATA OF BOTH THE TABLES)-------------------------

SELECT 
	A.first_name,
	A.country,
	A.score,
	B.order_date,
	B.sales
FROM customers as A
FULL JOIN orders AS B
ON B.customer_id = A.id

------------(LEFT ANTI JOIN= Only the unmatching data of left table)-------------------------


SELECT 
	A.first_name,
	A.country,
	A.score,
	B.order_date,
	B.sales
FROM customers as A
LEFT JOIN orders AS B
ON A.id=B.customer_id
WHERE B.customer_id IS NULL
------------(RIGHT ANTI JOIN= Only the unmatching data of Right table)-------------------------
SELECT *
FROM customers as A
RIGHT JOIN orders AS B
ON A.id=B.customer_id
WHERE A.id is NULL

------------(FULL ANTI JOIN= Only the unmatching data of both tables)-------------------------

SELECT *
FROM customers as A
FULL JOIN orders AS B
ON A.id=B.customer_id
WHERE 
B.customer_id is null OR
A.id is null

-------------------------------------------------------------------
USE SalesDB


SELECT * FROM Sales.Customers
SELECT * FROM Sales.Employees
SELECT * FROM Sales.Orders
SELECT * FROM Sales.Products



Select * from sys.tables

SELECT 
	C.FirstName,
	C.LastName,
	O.OrderDate,
	O.ShipDate
FROM Sales.Customers AS C
INNER JOIN Sales.Employees as E
ON C.CustomerID=E.EmployeeID
INNER JOIN Sales.Orders as O
ON C.CustomerID=O.OrderID
INNER JOIN Sales.Products AS P
ON P.ProductID=O.ProductID