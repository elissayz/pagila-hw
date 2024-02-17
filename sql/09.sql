/*
 * Use a JOIN to display the total amount rung up by each staff member in January of 2020.
 * Use tables staff and payment.
 */

SELECT first_name, last_name, sum(payment.amount) FROM staff JOIN payment USING (staff_id) WHERE EXTRACT(YEAR from payment_date) = 2020 AND EXTRACT(MONTH from payment_date) = 1 GROUP BY staff_id ORDER BY first_name;  
