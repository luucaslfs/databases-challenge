USE groceries_saga;

SELECT * FROM customers;
SELECT last_name FROM customers;
SELECT last_name, phone_number FROM customers;

SELECT * FROM products
WHERE brand = 'Natura'
AND price = 5.99;

SELECT * FROM products
WHERE brand = 'Natura'
OR price = 5.99;

SELECT * FROM customers
WHERE phone_number IS NULL;