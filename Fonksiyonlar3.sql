-- Fonksiyonun adı 'kitapgetir' ve bir parametre alıyor.
CREATE FUNCTION kitapgetir(prmt VARCHAR)
RETURNS TABLE
(
    -- Dönüş tablosunun sütunları: idsutun, kitapsutun, kitapyazarsutun
    idsutun int,
    kitapsutun VARCHAR,
    kitapyazarsutun VARCHAR
)
AS
$$
BEGIN
    -- Fonksiyonun döndüreceği sorgu
    RETURN QUERY
    SELECT
        id,       -- kitaplar tablosundaki id sütunu
        ad,       -- kitaplar tablosundaki ad (kitap adı) sütunu
        yazar     -- kitaplar tablosundaki yazar sütunu
    FROM kitaplar
    WHERE ad LIKE prmt;  -- 'prmt' parametresiyle eşleşen kitap adlarını getir
END;
$$
LANGUAGE plpgsql;

SELECT * FROM kitapgetir('%e%');
