
-- 				METINSEL FONKSIYONLAR
SELECT bolumid,REPLACE(bolumad,'i','$') FROM bolum 		--> karakter degistirme
SELECT REVERSE(bolumad) FROM bolum  			--> verileri tersten yazdirma
SELECT SUBSTRING('Ridvan YIGIT', 4,3) 		--> 4. indeksten sonraki 3 karakter
SELECT lower(bolumad) from bolum  			--> verileri kücük harfle yazdirma
SELECT upper(bolumad) from bolum  			--> verileri büyük harfle yazdirma

-- 				ARITMETIK FONKSIYONLAR
SELECT ABS(-5) 								---> MUTLAK DEGER
SELECT CEIL(4.85)  							--> YUVARLAMA
SELECT FLOOR(4.85) 							--> ASAGI YUVARLAMA
SELECT POWER(2,4)  							--> ÜS ALMA 
SELECT RANDOM()  								--> 0-1 ARASINDA SAYI ÜRETIR
SELECT ROUND(18.12345, 2) 					--> ONDALIKLI KISMI BELIRLER
SELECT SIGN() 								--> SAYININ ISARETINI BELIRLER
SELECT LOG(14)  								--> LOGARITMA HESAPLAR
SELECT SQRT(625)                             --> KAREKÖK HESAPLAR

-- 			TARIH/ZAMAN FONKSIYONLARI
SELECT CURRENT_DATE                          --> bugünün tarihi
SELECT CURRENT_TIME                          --> simdiki zaman bilgisi
SELECT NOW()                                 --> yerel saat ve detayli zaman
SELECT age(TIMESTAMP '09.07.1987')           --> bugün ile diger tarih farki
SELECT age(now() ,'09.07.1987')              --> bugün ile diger tarih farki
SELECT ad,tarih,age(now(),tarih) FROM kitaplar  --> örnek