/*
 * Use a JOIN to order the films by most profitable,
 * where the profit is the total amount that customer have payer for the film.
 * Use tables payment, rental, inventory, and film. 
 */

SELECT f.title, sum(payment.amount) AS profit 
FROM payment 
LEFT JOIN rental ON payment.rental_id = rental.rental_id
LEFT JOIN inventory i ON rental.inventory_id = i.inventory_id
LEFT JOIN film f ON i.film_id= f.film_id 
GROUP BY f.title 
ORDER BY profit DESC;
