-- Ürünlerin stok bilgilerini tutan tablo
CREATE TABLE inventory (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    stock_quantity INT
);

-- Siparişlerin bilgilerini tutan tablo
CREATE TABLE orders (
    order_id SERIAL PRIMARY KEY,
    product_id INT,
    quantity INT,
    FOREIGN KEY (product_id) REFERENCES inventory(product_id)
);
------------------------------------------------------------------------------
-- Stok miktarını güncelleyen fonksiyon
CREATE OR REPLACE FUNCTION update_stock()
RETURNS TRIGGER AS $$
BEGIN
    -- Ürün sipariş edildiğinde stok miktarını azalt
    UPDATE inventory
    SET stock_quantity = stock_quantity - NEW.quantity
    WHERE product_id = NEW.product_id;

    -- Eğer stok miktarı negatifse hata ver
    IF (SELECT stock_quantity FROM inventory WHERE product_id = NEW.product_id) < 0 THEN
        RAISE EXCEPTION 'Stock for product % is insufficient', NEW.product_id;
    END IF;

    RETURN NEW;
END;
$$ LANGUAGE plpgsql;
------------------------------------------------------------------------------
-- Sipariş eklendiğinde stok miktarını güncelleyen trigger
CREATE TRIGGER stock_update
AFTER INSERT ON orders
FOR EACH ROW
EXECUTE FUNCTION update_stock();
------------------------------------------------------------------------------

-- inventory tablosuna test verisi ekleyin
INSERT INTO inventory (product_id, product_name, stock_quantity)
VALUES (1, 'Product A', 100);

-- orders tablosuna test siparişi ekleyin
INSERT INTO orders (product_id, quantity)
VALUES (1, 10);

-- inventory tablosundaki stok miktarını kontrol edin
SELECT * FROM inventory;

-- Stok miktarını aşan bir sipariş verin
INSERT INTO orders (product_id, quantity)
VALUES (1, 200);  -- Mevcut stok miktarını aşan bir sipariş