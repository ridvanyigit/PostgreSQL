-- 										LOOP

-- LOOP Döngüsü: 5 kez merhaba mesajı yazdırır
DO $$
DECLARE
    sayac INT := 0;  -- Sayac değişkenini 0 olarak başlatır
BEGIN
    -- Sonsuz döngü
    LOOP
        EXIT WHEN sayac = 5; -- Sayac 5 olunca döngüyü bitir
        RAISE NOTICE 'Merhaba PostgreSQL'; -- Mesajı ekrana yazdır
        sayac := sayac + 1;  -- Sayacı 1 artır
    END LOOP;
END $$;
