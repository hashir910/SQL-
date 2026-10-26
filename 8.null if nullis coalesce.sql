SELECT *
FROM Sales.Orders

SELECT *
FROM Sales.Orders 

SELECT 
	ISNULL(ShipAddress,'unknown') as nulledval
FROM Sales.Orders

SELECT 
	NULLIF(ShipAddress,'unknown') as val
FROM Sales.Orders

SELECT
	Coalesce(ShipAddress,'unknown') as kbd1,
	LEN(ShipAddress) as len,
	COALESCE(NULLIF(TRIM(BillAddress),''),'kbd') as kbd2,
	LEN(BillAddress) as len
FROM Sales.Orders

