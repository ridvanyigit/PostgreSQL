-- Bu sorgu, 'dersler' tablosundan ders adını, bölüm ID'sini ve bölüm türünü seçer.
-- Bölüm ID'sine göre 'Yazilim', 'Mekatronik' veya 'Makine' olarak bölüm türü belirlenir.

SELECT 
    dersad,               -- Ders adı
    bolumid,              -- Bölüm ID'si
    CASE 
        WHEN bolumid = 1 THEN 'Yazilim'      -- Bölüm ID 1 ise 'Yazilim' olarak döner
        WHEN bolumid = 2 THEN 'Mekatronik'   -- Bölüm ID 2 ise 'Mekatronik' olarak döner
        ELSE 'Makine'                       -- Diğer durumlarda 'Makine' olarak döner
    END AS bolum_turu      -- Bölüm türü için alias
FROM 
    dersler;              -- Sorgulanan tablo
