/*
 * Use a JOIN to order the countries by most profitable,
 * where the profit is the total amount that all customers from that country have payed.
 * Use tables payment, rental, customer, address, city, and country.
 * Order by country alphabetically.
 */

SELECT 
country.country AS country,
sum(payment.amount) AS profit
FROM payment
LEFT JOIN rental r ON payment.rental_id = r.rental_id
LEFT JOIN customer c ON r.customer_id = c.customer_id 
LEFT JOIN address a ON c.address_id = a.address_id
LEFT JOIN city ON a.city_id = city.city_id
LEFT JOIN country ON city.country_id = country.country_id
GROUP BY country.country
ORDER BY country.country;
