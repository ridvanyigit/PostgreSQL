DO $$
DECLARE 
    toplam int;      -- Tüm derslerin sayısını saklayacak değişken
    toplam2 int;     -- Adı 10 karakterden uzun olan derslerin sayısını saklayacak değişken
BEGIN
    -- Toplam ders sayısını hesapla
    SELECT count(*) INTO toplam FROM dersler;

    -- Adı 10 karakterden uzun olan derslerin sayısını hesapla
    SELECT count(*) INTO toplam2 FROM dersler WHERE length(dersad) > 10;

    -- Sonuçları ekrana yazdır
    RAISE NOTICE 'Derslerin kayit sayisi: %', toplam;
    RAISE NOTICE 'Ders adi 10 karakterden uzun olan ders sayisi: %', toplam2;
END $$;