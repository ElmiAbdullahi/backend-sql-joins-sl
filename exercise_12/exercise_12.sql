-- the top 10 cities with the most total rental payment amount
-- include the city name and sum
-- use SUM to sum up the amounts
SELECT
	city.city, COALESCE(SUM(payment.amount),0) as SUM
FROM
	city
    LEFT JOIN address on address.city_id = city.city_id
    LEFT JOIN customer on customer.address_id = address.address_id
    LEFT JOIN payment on payment.customer_id = customer.customer_id
    
GROUP BY
 	city.city
ORDER BY 
	SUM desc
LIMIT
10


