SELECT first_name,last_name,email FROM customer;
SELECT first_name,last_name FROM actor ORDER BY first_name DESC,last_name;
SELECT * FROM payment ORDER BY customer_id, amount DESC;
SELECT first_name,last_name,email FROM customer ORDER BY last_name DESC,first_name DESC;
SELECT DISTINCT amount FROM payment ORDER BY amount DESC;
SELECT * FROM address;
SELECT DISTINCT district FROM address;
SELECT * FROM rental;
SELECT rental_date FROM rental ORDER BY rental_date DESC LIMIT 1;
SELECT COUNT(title) FROM film;
SELECT COUNT(DISTINCT last_name) FROM customer;
SELECT * FROM customer;
SELECT COUNT(customer_id) FROM payment WHERE customer_id = 100;
SELECT last_name FROM customer WHERE first_name = 'ERICA';
SELECT COUNT(*) FROM rental WHERE return_date is null;
SELECT payment_id,amount FROM payment WHERE amount <= 2;
SELECT * FROM payment WHERE (customer_id = 322 or customer_id = 346 or customer_id = 354) AND (amount < 2 or amount > 10) ORDER BY customer_id , amount DESC;
 