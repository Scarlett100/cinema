DROP DATABASE if exists cinema;
CREATE DATABASE cinema;
USE cinema;

-- We need.to.create.our.tables
-- cinema_id
-- type
-- price
-- age restrics

-- customers
-- name
-- age 
-- loyalty number

-- orders
-- order_id
-- date_booking
-- cinema_id



CREATE TABLE film(
    film_id INT AUTO_INCREMENT,
    film_type VARCHAR(40) NOT NULL,
    price DECIMAL NOT NULL,
    Age_restricted BOOLEAN NOT NULL,
    PRIMARY KEY(film_id)
);

CREATE TABLE customer(
    customer_id INT AUTO_INCREMENT,
    customer_name VARCHAR(50) UNIQUE NOT NULL,
    age VARCHAR(70) UNIQUE NOT NULL,
    loyalty_member BOOLEAN NOT NULL,
	PRIMARY KEY(customer_id)
);

CREATE TABLE order(
    order_id INT AUTO_INCREMENT,
    fk_film_id INT,
	fk_customer_id INT,
    date_booking DATETIME NOT NULL,
    PRIMARY KEY(order_id),
    FOREIGN KEY(fk_film_id) REFERENCES film(film_id),
    FOREIGN KEY(fk_customer_id) REFERENCES customer(customer_id)
                
                 
);