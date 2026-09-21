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



