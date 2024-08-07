DO $$
DECLARE 
    x int := 20;         -- İlk sayı
    y int := 5;          -- İkinci sayı
    toplam int;          -- İki sayının toplamı
    fark int;            -- İki sayının farkı
    carpim int;          -- İki sayının çarpımı
    bolum numeric;       -- İki sayının bölümü (ondalıklı sonuç için numeric kullanıyoruz)
BEGIN
    -- Matematiksel işlemler
    toplam := x + y;
    fark := x - y;
    carpim := x * y;
    bolum := x / y;      -- Bölüm işlemi için numeric veri tipi kullanıyoruz

    -- Sonuçları ekrana yazdırma
    RAISE NOTICE 'Sayi 1: %', x;
    RAISE NOTICE 'Sayi 2: %', y;
    RAISE NOTICE 'Toplam: %', toplam;
    RAISE NOTICE 'Fark: %', fark;
    RAISE NOTICE 'Carpim: %', carpim;
    RAISE NOTICE 'Bolum: %', bolum;
END $$;
