SHOW DATABASES;

CREATE DATABASE test;

USE test;

CREATE TABLE addresses (
	
    id INT auto_increment PRIMARY KEY,
    house_number int,
    city VARCHAR(30),
    postcode VARCHAR(7)
);

CREATE TABLE people (
	
    id INT auto_increment PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    address_id INT
);

CREATE TABLE pets (
	
    id INT auto_increment PRIMARY KEY,
    name VARCHAR(20),
    species VARCHAR(20),
    owner_id INT,
    address_id INT
);

SHOW TABLES;

-- HOW TO MODIFY THE TABLES WE CREATED

ALTER TABLE people
ADD PRIMARY KEY (id);

ALTER TABLE people
ADD CONSTRAINT FK_PeopleAddress
FOREIGN KEY (address_id) REFERENCES addresses(id);

ALTER TABLE people
DROP PRIMARY KEY;

ALTER TABLE people
DROP FOREIGN KEY FK_PeopleAddress;

DESCRIBE addresses;
DESCRIBE people;

-- ADD AND DROP COLUMNS

SELECT * FROM products;

ALTER TABLE people
ADD COLUMN email VARCHAR(20);

ALTER TABLE products
DROP COLUMN brand;

-- ADD/REMOVE CONSTRAINT

ALTER TABLE pets
ADD CONSTRAINT u_species UNIQUE (species);

ALTER TABLE pets
DROP INDEX u_species;

SELECT * FROM pets;

-- RENAMING COLUMNS

ALTER TABLE pets CHANGE `animal_type` `species` VARCHAR(20);

-- CHANGE COLUMNS DATA TYPE

ALTER TABLE addresses MODIFY city VARCHAR(30);

DESCRIBE addresses;