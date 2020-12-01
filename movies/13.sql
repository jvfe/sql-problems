-- Write a SQL query to list the names of all people who starred in a movie in which Kevin Bacon also starred.
-- I like using subqueries, I believe they're easier to follow though not always as performant as JOINs.
SELECT name
FROM people
WHERE id IN (
	SELECT person_id
	FROM stars
	WHERE movie_id IN (
	SELECT id
	FROM movies
	WHERE id IN (
	SELECT movie_id
	FROM stars
	WHERE person_id IN (
	SELECT id
	FROM people
	WHERE name = "Kevin Bacon" AND birth = 1958
)
)
)
)
AND name != "Kevin Bacon";
