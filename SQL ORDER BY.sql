--S�ralama Yapma
--ORDER BY
--DESC metinsel ise terseten s�ralama yapar z-a ve ya b�y�kten k����e
SELECT * FROM Products ORDER BY ProductName
SELECT * FROM Products ORDER BY UnitPrice
SELECT * FROM Products ORDER BY UnitPrice DESC

--En pahal� 5 �r�n

SELECT TOP(5) * FROM Products ORDER BY UnitPrice DESC

