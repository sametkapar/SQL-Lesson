--GROUP BY

--deniz �r�nleri kategorisinde ka� �r�n var

SELECT COUNT(*) FROM Products WHERE CategoryID = 8

--Kategorilerimde ka�ar tane �r�n var
SELECT CategoryID, COUNT(*) FROM Products GROUP BY CategoryID

SELECT C.CategoryName AS [Kategori] , COUNT(*) AS [�r�n Say�] 
FROM Products AS P
LEFT JOIN Categories AS C ON C.CategoryID = P.CategoryID --LEFT JOIN soldaki tabloyu baz alarak
GROUP BY C.CategoryName


--Personellerin sat�� adetleri

SELECT E.FirstName + ' ' + E.LastName, COUNT(*)
FROM Orders AS O
JOIN Employees AS E ON O.EmployeeID = E.EmployeeID
GROUP BY E.FirstName + ' ' + E.LastName

--En �ok sat�lan �r�nler
--Hangi �r�ndeki kategoriden ne kadarl�k sat�� yap�lm��
--Hangi m��teri en fazla ne kadarl�k �r�n alm��
--M��terilerin ald�klar� �r�n tutarlar�
--Personellerimin kazand�rd�klar� sat�� tutarlar�

SELECT OD.OrderID, C.CompanyName, E.FirstName + ' ' + E.LastName,P.ProductName, OD.Quantity, OD.UnitPrice, P.UnitPrice
FROM [Order Details] AS OD
JOIN Orders AS O ON OD.OrderID = O.OrderID
JOIN Customers AS C ON O.CustomerID = C.CustomerID
JOIN Employees AS E ON O.EmployeeID = E.EmployeeID
JOIN Products AS P ON OD.ProductID = P.ProductID
