-- 									WHILE
-- 1'den 10'a kadar olan sayıları toplar ve her birini yazdırır
DO $$
DECLARE 
    sayac INT := 1;  -- Sayac değişkenini 1 olarak başlatır
    toplam INT := 0; -- Toplam değişkenini 0 olarak başlatır
BEGIN 
    -- Sayac 10'a kadar döngüyü sürdür
    WHILE sayac <= 10 LOOP
        RAISE NOTICE 'Sayac: %', sayac; -- Sayacın mevcut değerini ekrana yazdır
        toplam := toplam + sayac;       -- Sayacı toplama ekle
        sayac := sayac + 1;             -- Sayacı 1 artır
    END LOOP;
    RAISE NOTICE 'Sayilarin toplami : %', toplam; -- Toplam değeri ekrana yazdır
END $$;


