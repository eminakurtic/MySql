/* Spajanje četiri tabele, sa korištenjem filtracije sa WHERE, sortiranjem rezultata sa ORDER BY i limitranjem rezultata sa LIMIT */
use sakila;
SELECT customer.first_name, customer.last_name, address.address, address.district, city.city, country.country
FROM customer
JOIN address ON address.address_id = customer.address_id
JOIN city ON city.city_id = address.city_id
JOIN country ON country.country_id = city.country_id
WHERE customer.customer_id < 75 
ORDER BY customer.first_name DESC 
LIMIT 10, 3;


/* Brisanje postojećeg unosa, insert novog, dobavaljanje svega iz tabele country i dobavljanje posljednjeg unešenog id-ja za tu konekciju */
DELETE FROM country WHERE country_id = 110;
INSERT INTO country (country) VALUES ('Bosnia and Herzegovina');
SELECT * FROM sakila.country;
select last_insert_id();


INSERT INTO address 
(address, district, city_id, postal_code, phone)
VALUES
('Maršala Tita 54/2', 'Federacija BiH', 601, '71000', 'xxx xxx xxx');