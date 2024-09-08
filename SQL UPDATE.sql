--Veri Güncelleme
--UPDATE
--Produce

UPDATE Categories SET CategoryName = 'Murtaza', Description = 'Murtaza iþte ne diyim' WHERE CategoryID=7
select * from Categories

--Tablo Düzenleme

ALTER TABLE Categories
ALTER COLUMN CategoryName nvarchar(150)

