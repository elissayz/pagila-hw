/*
 * The music of Queen and Kris Kristofferson have seen an unlikely resurgence.
 * As an unintended consequence, films starting with the letters K and Q have also soared in popularity.
 * Use a JOIN to display the titles of movies starting with the letters K and Q whose language is English.
 * Use tables film and language, and order the results alphabetically by film title.
 */

# language id in common

SELECT film_id, title, language_id, language.name FROM film JOIN language USING (language_id) WHERE language_id =1 AND title LIKE 'k%' OR 'q%' ORDER BY title;
