--Veri G�ncelleme
--UPDATE
--Produce

UPDATE Categories SET CategoryName = 'Murtaza', Description = 'Murtaza i�te ne diyim' WHERE CategoryID=7
select * from Categories

--Tablo D�zenleme

ALTER TABLE Categories
ALTER COLUMN CategoryName nvarchar(150)

