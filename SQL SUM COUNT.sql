--SUM
SELECT * FROM Products
SELECT SUM(unitsInStock) AS TotalStock FROM Products 

--COUNT
SELECT COUNT(*) FROM Products

--Stoðunda toplam kaç dolarlýk ürün var

SELECT ProductName,UnitPrice, UnitsInStock, UnitsInStock * UnitPrice AS Total FROM Products

SELECT SUM(UnitsInstock * UnitPrice) FROM Products


--Kaç adet satýþ yapmýþým

SELECT COUNT(*) FROM Orders

--Kaç Kere Chai Satmýþým

SELECT * FROM Products

SELECT COUNT(*) FROM [Order Details] WHERE ProductID = 1

--Kaç Adet Chai Satmýþým

SELECT * FROM [Order Details]

SELECT SUM(Quantity) FROM [Order Details]

SELECT * FROM [Order Details] WHERE ProductID = 1 ORDER BY Quantity DESC


SELECT OD.OrderID, OD.Quantity, E.FirstName + ' ' + E.LastName AS Employee
FROM [Order Details] AS OD
JOIN Orders AS O ON OD.OrderID = O.OrderID
JOIN Employees AS E ON O.EmployeeID = E.EmployeeID
WHERE OD.ProductID = 1

ORDER BY OD.Quantity DESC



