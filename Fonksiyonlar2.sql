-- 1. KDV'li fiyat hesaplayan fonksiyonu oluşturun
CREATE FUNCTION kdvli(fiyat FLOAT)
RETURNS FLOAT
LANGUAGE plpgsql
AS
$$
BEGIN
    fiyat := fiyat * 1.08 + fiyat; -- Fiyata %8 KDV ekler
    RETURN fiyat; -- KDV'li fiyatı döndürür
END;
$$;

-- 2. Kitaplar tablosundaki fiyatları KDV ile hesaplayan sorguyu çalıştırın
-- Not: Burada 'fiyat_sutunu' yerine tablonuzdaki gerçek sütun adını kullanın
SELECT ad, yazar, fiyat AS fiyat, kdvli(fiyat) AS kdvli_fiyat
FROM kitaplar;


SELECT*from kitaplar




