-- find the title and count of the top 10 most rented films
-- use COUNT to count each row
-- GROUP BY the film_id
-- ORDER in descending order
-- LIMIT 10
SELECT 
	film.title,
    count(*)
FROM
	film
    LEFT JOIN inventory on inventory.film_id = film.film_id
    LEFT JOIN rental on rental.inventory_id = inventory.inventory_id
GROUP BY
	film.film_id
ORDER BY
	count desc
LIMIT
	10