-- **Tablodaki tüm kayıtları listeleme**
SELECT * FROM musteri;

-- **ID'si 10 olan kaydı silme**
DELETE FROM musteri WHERE id = 10;

-- **ID'si 1 olan müşterinin bakiyesini 5750 olarak güncelleme**
UPDATE musteri
SET bakiye = 5750
WHERE id = 1;

-- **Tüm kayıtları ID'ye göre sıralı listeleme**
SELECT * FROM musteri
ORDER BY id;

-- **Şehri 'Izmir' olan tüm müşterilerin şehir bilgisini 'Ankara' olarak güncelleme**
UPDATE musteri
SET sehir = 'Ankara'
WHERE sehir = 'Izmir';

-- **Tüm kayıtları ID'ye göre sıralı listeleme (şehir güncellemeleri sonrası)**
SELECT * FROM musteri
ORDER BY id;

-- **'Ankara' şehrindeki müşterilerin bakiyelerinin sayısını hesaplama**
SELECT COUNT(*) FROM musteri
WHERE sehir = 'Ankara' AND bakiye > 5000;

-- **'Ankara' dışında kalan şehirlerdeki müşterilerin toplam bakiyesini hesaplama**
SELECT SUM(bakiye) FROM musteri
WHERE sehir != 'Ankara';

-- **'Ankara' şehrindeki müşterilerin bakiyelerinin ortalamasını hesaplama**
SELECT AVG(bakiye) FROM musteri
WHERE sehir = 'Ankara';

-- **'Ankara' şehrindeki müşterilerin bakiyelerinin minimum ve maksimum değerlerini hesaplama**
SELECT MIN(bakiye), MAX(bakiye) FROM musteri
WHERE sehir = 'Ankara';
