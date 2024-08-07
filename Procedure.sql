-- Procedure (Saklı Yordam) Nedir?
-- Saklı yordamlar, veritabanı üzerinde belirli işlemleri gerçekleştiren ve veritabanında saklanan kod bloklarıdır.
-- Diğer programlama dillerinde fonksiyonlara benzerler,
-- ancak veritabanı seviyesinde çalışırlar ve doğrudan SQL ifadelerini kullanırlar.

--------------------------------------------------------------------------------
--                                Veri Ekleme
CREATE PROCEDURE add_employee(first_name TEXT, last_name TEXT, birth_date DATE)
LANGUAGE plpgsql
AS $$
BEGIN
    INSERT INTO employees (first_name, last_name, birth_date)
    VALUES (first_name, last_name, birth_date);
END;
$$;

CALL add_employee('Jane', 'Doe', '1990-02-02');

--------------------------------------------------------------------------------
--								Is Kurallari Uygulama
CREATE PROCEDURE update_salary(employee_id INT, new_salary NUMERIC)
LANGUAGE plpgsql
AS $$
BEGIN
    IF new_salary < 0 THEN
        RAISE EXCEPTION 'Salary cannot be negative';
    END IF;
    UPDATE employees
    SET salary = new_salary
    WHERE id = employee_id;
END;
$$;

CALL update_salary(1, 50000);

--------------------------------------------------------------------------------
--								Raporlama
CREATE PROCEDURE generate_sales_report(start_date DATE, end_date DATE)
LANGUAGE plpgsql
AS $$
BEGIN
    -- Örnek bir rapor sorgusu
    SELECT * FROM sales
    WHERE sale_date BETWEEN start_date AND end_date;
END;
$$;

CALL generate_sales_report('2023-01-01', '2023-12-31');

--------------------------------------------------------------------------------
-- 									GERCEK ÖRNEK
-- Saklı yordam oluşturma
CREATE PROCEDURE fakulte_ekle(p1 INTEGER, p2 TEXT)
LANGUAGE plpgsql
AS $$
BEGIN
    -- Fakülte tablosuna yeni kayıt ekleme
    INSERT INTO fakulte (id, ad) VALUES (p1, p2);
END;
$$;

-- Saklı yordamı çağırma
CALL fakulte_ekle(4, 'Mimarlik');
SELECT*From fakulte
