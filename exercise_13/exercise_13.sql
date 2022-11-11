-- the average rental amount by country
-- include the country name and avg amount
-- use AVG to average the amount
SELECT 
country.country, AVG(payment.amount)
FROM
country
LEFT JOIN city on city.country_id = country.country_id
LEFT JOIN address on address.city_id = city.city_id
LEFT JOIN customer on customer.address_id = address.address_id
INNER JOIN payment on payment.customer_id = customer.customer_id

GROUP BY 
country.country

ORDER BY 
AVG desc

LIMIT
10