---------------------Date and Time functions----------------------------

USE SalesDB


SELECT TOP(5) 
	CreationTime,
	SYSDATETIME() as currenct_time
FROM Sales.Orders


-------------------(part extraction)--------------------------------------

select 
	Year(CreationTime)
From Sales.Orders


select 
	Month(CreationTime)
From Sales.Orders


select 
	Day(CreationTime)
From Sales.Orders
----------------------(DATE PART)---------------------------------------
---return data as integar----
SELECT 
	DATEPART(Hour,CreationTime)
FROM Sales.Orders

SELECT 
	DATEPART(MONTH,CreationTime)
FROM Sales.Orders

SELECT 
	DATEPART(DAY,CreationTime)
FROM Sales.Orders

SELECT 
	DATEPART(SECOND,CreationTime)
FROM Sales.Orders

SELECT 
	DATEPART(MILLISECOND,CreationTime)
FROM Sales.Orders

SELECT 
	DATEPART(QUARTER,CreationTime)
FROM Sales.Orders

SELECT 
	DATEPART(WEEK,CreationTime)
FROM Sales.Orders

-------------------------(dateName)------------------------------
----return data as string-----
SELECT TOP(5) *
FROM Sales.Orders

SELECT 
	CreationTime,
	DATENAME(WEEKDAY,CreationTime) as Day,
	DATENAME(Month,CreationTime) as Month
FROM Sales.Orders



-------------------------(DateTrunc)------------------------------

---Returns data as datetime---
---Trunc the date till the part and reset the data afterwards
Use SalesDB

SELECT TOP(5)
	CreationTime,
	DateTrunc(month,CreationTime)
FROM Sales.Orders

-----------------------------(EO-Month)-------------------------------

Use SalesDB
SELECT TOP(5)
	CreationTime,
	EOMONTH(CreationTime) as EndMonth
FROM Sales.Orders 


--------------------------------()-----------------------------------


USE SalesDB

SELECT *
FROM Sales.Orders

SELECT
	DATENAME(YEAR,OrderDate),
	COUNT(OrderDate) as TOTAlORDERS,
	SUM(Sales)
FROM Sales.Orders
Group by DATENAME(YEAR,OrderDate)


SELECT *
FROM Sales.Orders
WHERE DatePart(month,Orderdate)=2

---------------------------FORMAT----------------------------------

SELECT 
	FORMAT(Orderdate,'MM/dd/yyyy')
FROM Sales.Orders


SELECT 
	FORMAT(Orderdate,'MMM-ddd-yyyy')
FROM Sales.Orders


SELECT
	convert(DATE,OrderDate,103)
From Sales.Orders

SELECT
	CONVERT(varchar(20),OrderDate) as string,
FROM Sales.Orders

-------------------------(casting)----------------------

SELECT 
	CAST(OrderDate as varchar(20)),
	Cast('123' as varchar(5))
From Sales.Orders




----------------------Date calculation----------------------------
--------------------Date ADD---------------------------
SELECT *
FROM Sales.Orders

SELECT
	DATEADD(YEAR,3,Orderdate)
FROM Sales.Orders

SELECT 
	BirthDate,
	GETDATE(),
	Datediff(MONTH,BirthDate,GETDate())
FROM Sales.Employees




Select 
	ISDATE ('2025')	as Date1,
	ISDATE ('2025-09-07') as Date2,
	ISDATE ('03-08') as Date3

