-- Bu fonksiyon iki tam sayıyı toplar ve sonucu döndürür.
CREATE FUNCTION toplam(s1 INT, s2 INT)
RETURNS INT
LANGUAGE plpgsql
AS
$$
DECLARE
    sonuc INTEGER; -- Sonucu saklamak için bir değişken tanımlanır
BEGIN
    sonuc := s1 + s2; -- İki sayıyı toplar ve sonucu 'sonuc' değişkenine atar
    RETURN sonuc; -- 'sonuc' değişkenini döndürür
END;
$$;

SELECT toplam(5, 10);


