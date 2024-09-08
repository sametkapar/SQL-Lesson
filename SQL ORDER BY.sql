--Sýralama Yapma
--ORDER BY
--DESC metinsel ise terseten sýralama yapar z-a ve ya büyükten küçüðe
SELECT * FROM Products ORDER BY ProductName
SELECT * FROM Products ORDER BY UnitPrice
SELECT * FROM Products ORDER BY UnitPrice DESC

--En pahalý 5 ürün

SELECT TOP(5) * FROM Products ORDER BY UnitPrice DESC

