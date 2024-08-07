-- 1. Fakülte Tablosuna Yeni Kayıt Ekleme
-- Fakülte tablosuna yeni bir fakülte ekler. ID'si 3, adı ise 'IIBF' (İktisadi ve İdari Bilimler Fakültesi).
INSERT INTO fakulte (id, ad) 
VALUES (3, 'IIBF');

-- Fakülte Tablosundaki Verileri Görüntüleme
-- Fakülte tablosundaki tüm mevcut kayıtları listelemek için kullanılır.
SELECT * FROM fakulte;

-- 2. Bölüm Tablosuna Yeni Kayıt Ekleme
-- Bölüm tablosuna yeni bir bölüm ekler. Bölüm ID'si 4, adı 'YBS' (Yapay Zeka ve Bilgisayar Sistemleri), ve bağlı olduğu fakülte ID'si 3.
INSERT INTO bolum (bolumid, bolumad, bolumf) 
VALUES (4, 'YBS', 3);
