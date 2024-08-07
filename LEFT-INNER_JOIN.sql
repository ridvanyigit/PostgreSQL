-- Müşteriler ve meslekler tablosunu birleştirerek müşteri bilgilerini ve meslek adını almak için kullanılan SQL sorgusu

SELECT
    musteri.ad,                -- Müşterinin adı
    musteri.soyad,             -- Müşterinin soyadı
    musteri.sehir,             -- Müşterinin yaşadığı şehir
    meslek.ad                  -- Müşterinin meslek adı
FROM
    musteri                     -- Müşteri tablosu
LEFT JOIN
    meslek                     -- Meslek tablosu
ON
    musteri.meslek = meslek.id -- Müşterinin meslek ID'sini meslek tablosundaki ID ile eşleştir
