--SUM
SELECT * FROM Products
SELECT SUM(unitsInStock) AS TotalStock FROM Products 

--COUNT
SELECT COUNT(*) FROM Products

--Sto�unda toplam ka� dolarl�k �r�n var

SELECT ProductName,UnitPrice, UnitsInStock, UnitsInStock * UnitPrice AS Total FROM Products

SELECT SUM(UnitsInstock * UnitPrice) FROM Products


--Ka� adet sat�� yapm���m

SELECT COUNT(*) FROM Orders

--Ka� Kere Chai Satm���m

SELECT * FROM Products

SELECT COUNT(*) FROM [Order Details] WHERE ProductID = 1

--Ka� Adet Chai Satm���m

SELECT * FROM [Order Details]

SELECT SUM(Quantity) FROM [Order Details]

SELECT * FROM [Order Details] WHERE ProductID = 1 ORDER BY Quantity DESC


SELECT OD.OrderID, OD.Quantity, E.FirstName + ' ' + E.LastName AS Employee
FROM [Order Details] AS OD
JOIN Orders AS O ON OD.OrderID = O.OrderID
JOIN Employees AS E ON O.EmployeeID = E.EmployeeID
WHERE OD.ProductID = 1

ORDER BY OD.Quantity DESC



