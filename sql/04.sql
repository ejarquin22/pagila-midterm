/*
 * You love the acting in the movie 'AMERICAN CIRCUS' and want to watch other movies with the same actors.
 *
 * Write a SQL query SELECT query that:
 * Lists the title of all movies where at least 2 actors were also in 'AMERICAN CIRCUS'.
 * (You may choose to either include or exclude the movie 'AMERICAN CIRCUS' in the results.)
 */
SELECT title
FROM film
INNER JOIN film_actor USING (film_id)
INNER JOIN actor USING (actor_id)
WHERE actor_id IN (
    SELECT actor_id 
    FROM actor
    INNER JOIN film_actor USING (actor_id)
    INNER JOIN film USING (film_id)
    WHERE title = 'AMERICAN CIRCUS'
)
GROUP BY title
HAVING count(title) >= 2
ORDER BY title;
