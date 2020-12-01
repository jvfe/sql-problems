-- Write a SQL query to list the titles of all movies in which both Johnny Depp and Helena Bonham Carter starred.
SELECT title
FROM movies
INNER JOIN stars ON movies.id = stars.movie_id
INNER JOIN people ON people.id = stars.person_id
WHERE people.name IN ('Helena Bonham Carter', 'Johnny Depp')
GROUP BY title
HAVING COUNT(DISTINCT people.name) = 2;
