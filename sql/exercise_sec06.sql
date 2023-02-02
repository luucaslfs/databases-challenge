USE groceries_saga;

DESCRIBE customers;

-- From the customers table, select the first name and phone number of all the females who have a last name of Bluth

SELECT first_name, phone_number FROM customers
WHERE last_name = 'Bluth'
AND gender - 'F';

-- From the products table, select the name for all products that have a price greater than 3.00 or from the Natura brand

SELECT name FROM products
WHERE price > 3.00
OR brand = 'Natura';

-- How many customers dont have a phone number registered?

SELECT * FROM customers
WHERE phone_number IS NULL;

-- From the products table, select the name and price of all products with a brand equal to Natura ou Multilaser. Ordered by name from a-z.

SELECT name, price FROM products
WHERE brand IN ('Natura','Multilaser')
ORDER BY name;

-- From the orders table, select all the orders from Feb 2017 for customers wit ids 2, 4, 6 or 8.

SELECT * FROM orders
WHERE order_time BETWEEN '2017-02-01' AND '2017-02-28'
AND customer_id IN (2,4,6,8);

-- From the customers table, select the first name and phone number of all customers whos last name contains the pattern 'ar'.

SELECT first_name, phone_number FROM customers
WHERE last_name LIKE '%ar%';


-- From the customers table, select distinct last names and order alphabetically from A-Z.

SELECT DISTINCT last_name FROM customers
ORDER BY last_name;

-- From the orders table, select the first 3 orders placed by customer with id 1, in FEB 2017.

SELECT * FROM orders
WHERE customer_id = 1
AND order_time BETWEEN '2017-02-01' AND '2017-02-28'
ORDER BY order_time ASC
LIMIT 3; 

-- From the products table, select name, price and brand but rename the price to 'retail_price' in results.

SELECT name, price AS retail_price, brand FROM products;








