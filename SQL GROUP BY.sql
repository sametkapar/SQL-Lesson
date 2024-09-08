--GROUP BY

--deniz ürünleri kategorisinde kaç ürün var

SELECT COUNT(*) FROM Products WHERE CategoryID = 8

--Kategorilerimde kaçar tane ürün var
SELECT CategoryID, COUNT(*) FROM Products GROUP BY CategoryID

SELECT C.CategoryName AS [Kategori] , COUNT(*) AS [Ürün Sayý] 
FROM Products AS P
LEFT JOIN Categories AS C ON C.CategoryID = P.CategoryID --LEFT JOIN soldaki tabloyu baz alarak
GROUP BY C.CategoryName


--Personellerin satýþ adetleri

SELECT E.FirstName + ' ' + E.LastName, COUNT(*)
FROM Orders AS O
JOIN Employees AS E ON O.EmployeeID = E.EmployeeID
GROUP BY E.FirstName + ' ' + E.LastName

--En çok satýlan ürünler
--Hangi üründeki kategoriden ne kadarlýk satýþ yapýlmýþ
--Hangi müþteri en fazla ne kadarlýk ürün almýþ
--Müþterilerin aldýklarý ürün tutarlarý
--Personellerimin kazandýrdýklarý satýþ tutarlarý

SELECT OD.OrderID, C.CompanyName, E.FirstName + ' ' + E.LastName,P.ProductName, OD.Quantity, OD.UnitPrice, P.UnitPrice
FROM [Order Details] AS OD
JOIN Orders AS O ON OD.OrderID = O.OrderID
JOIN Customers AS C ON O.CustomerID = C.CustomerID
JOIN Employees AS E ON O.EmployeeID = E.EmployeeID
JOIN Products AS P ON OD.ProductID = P.ProductID
