/*
 * Use a JOIN to count the number films in each category in the specified language.
 * Use table category, film_category, film, and language.
 */

CREATE OR REPLACE FUNCTION category_counts_by_language(text_param TEXT) RETURNS TABLE(name TEXT, count BIGINT) AS
$$
SELECT
category.name AS name,
count(film.film_id) AS count
FROM film
LEFT JOIN film_category ON film.film_id = film_category.film_id
LEFT JOIN category ON film_category.category_id = category.category_id
LEFT JOIN language ON film.language_id = language.language_id
WHERE language.name = text_param
GROUP BY category.name
ORDER BY category.name
$$
LANGUAGE SQL
IMMUTABLE
RETURNS NULL ON NULL INPUT;

SELECT * FROM category_counts_by_language('English');
SELECT * FROM category_counts_by_language('Italian');
SELECT * FROM category_counts_by_language('Japanese');
SELECT * FROM category_counts_by_language('Mandarin');
SELECT * FROM category_counts_by_language('French');
SELECT * FROM category_counts_by_language('German');
SELECT * FROM category_counts_by_language('Latin');
