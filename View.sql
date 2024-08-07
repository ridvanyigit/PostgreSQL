-- 							View Olusturma
-- bolum ve fakulte tablolarını birleştirir
CREATE VIEW view1 AS
SELECT bolum.bolumid, bolum.bolumad, fakulte.ad
FROM bolum
LEFT JOIN fakulte ON bolum.bolumf = fakulte.id;

-- Oluşturulan view'i görüntüleme
SELECT * FROM view1;



--                          View Silme
--dersler tablosunun tamamını içerir
CREATE VIEW view2 AS
SELECT * FROM dersler;

-- Oluşturulan view'i görüntüleme
SELECT * FROM view2;

-- View silme: view2'yi veritabanından kaldırır
DROP VIEW view2;
