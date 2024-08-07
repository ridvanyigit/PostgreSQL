DO $$
DECLARE 
    Sinav1 int := 75;
    Sinav2 int := 67;
    Sinav3 int := 60;
    ortalama numeric;  -- Tam sayı yerine numeric veri tipi kullanıyoruz.
BEGIN 
    -- Ortalama hesaplaması
    ortalama := (Sinav1 + Sinav2 + Sinav3) / 3.0;  -- Bölme işlemi sonucunda ondalıklı değer elde etmek için 3.0 kullanıyoruz.

    -- Ortalama bilgisini ekrana yazdırma
    RAISE NOTICE 'Ogrenci Sinav Ortalamasi : %', ortalama;

    -- Ortalamayı kontrol etme ve duruma göre mesaj yazdırma
    IF ortalama >= 50 THEN
        RAISE NOTICE 'Ogrenci Dersi Gecti';
    ELSE
        RAISE NOTICE 'Ogrenci Dersi Gecemedi';
    END IF;

END $$;