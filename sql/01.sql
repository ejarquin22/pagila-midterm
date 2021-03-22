/*
 * Write a SQL query SELECT query that:
 * computes the number of customers who live outside of the US.
 */
SELECT count(country) AS "customers outside the US"
FROM country
INNER JOIN city USING (country_id)
INNER JOIN address USING (city_id)
INNER JOIN customer USING (address_id)
WHERE country != 'United States';
