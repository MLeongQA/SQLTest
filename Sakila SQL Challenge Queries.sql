use sakila;

-- 1. List all actors.
SELECT *
FROM actor;

-- 2. Find the surname of the actor with the forename 'John'.
SELECT last_name
FROM actor
WHERE first_name = "John";

-- 3. Find all actors with surname 'Neeson'.
SELECT *
FROM actor
WHERE last_name = "Neeson";

-- 4. Find all actors with ID numbers divisible by 10.
SELECT *
FROM actor
WHERE MOD(actor_id,10) = 0;

-- What is the description of the movie with an ID of 100?
SELECT description
FROM film
WHERE film_id = 100;

-- Find every R-rated movie.
SELECT * 
FROM film
WHERE rating = "R";

-- Find every non-R-rated movie
SELECT * 
FROM film
WHERE rating != "R";

-- Find the ten shortest movies.
SELECT * 
FROM film
ORDER BY length ASC
LIMIT 10;

-- Find the movies with the longest runtime, without using LIMIT.
SELECT *
FROM film
WHERE length =(
SELECT MAX(LENGTH)
FROM film
);

-- Find all movies that have deleted scenes.
SELECT * 
FROM film
WHERE special_features LIKE "%Deleted Scenes%";

-- Using HAVING, reverse-alphabetically list the last names that are not repeated.


