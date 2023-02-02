SHOW TABLES;

USE groceries_saga;

ALTER TABLE products MODIFY price decimal(7,2);

DESCRIBE products;
SELECT * FROM products;

-- INSERTING INTO TABLES

INSERT INTO products (name, price, brand) 
VALUES ('Secador de Cabelos', 29.99, 'Wahl'),('Limpador de Orelha', 10.99, 'Multilaser'),('Sabonete',3.66,'Natura'),('Gel Corporal',9.66,'Natura');

SET SQL_SAFE_UPDATES = 0;

-- UPDATING TABLES

UPDATE products
SET brand = 'Natura', price=5.99
WHERE name = 'Sabonete';

UPDATE products
SET price = 9.99
WHERE brand = 'Natura';

-- DELETING FROM TABLES

DELETE FROM products
WHERE name = 'Gel Corporal';

DELETE FROM produts
WHERE brand = 'Natura';