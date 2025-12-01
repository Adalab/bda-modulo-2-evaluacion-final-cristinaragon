-- EVALUACIÓN FINAL MÓDULO 2 CRISTINA ARAGÓN DE LA CRUZ

-- EJERCICIO 2. Base de datos Sakila
USE sakila; 

-- 1. Selecciona todos los nombres de las películas sin que aparezcan duplicados
SELECT DISTINCT title -- distinct para evitar duplicados
FROM film;

-- 2. Muestra los nombres de todas las películas que tengan una clasificación de "PG-13"
SELECT title
FROM film
WHERE rating = "PG-13";

-- 3. Encuentra el título y la descripción de todas las películas que contentan la palabra "Amazing" en su descripción
SELECT title, description
FROM film 
WHERE description LIKE '%amazing%';

-- Otra forma de hacerlo
SELECT title, description
FROM film 
WHERE description regexp 'amazing'; -- permite usar expresiones regulares

-- 4. Encuentra el título de todas las películas que tengan una duración mayor a 120 minutos 
SELECT title, length -- hacemos que aparezca también la duración en la tabla de resultados para verificar la respuesta 
FROM film
WHERE length>120
ORDER BY length; -- Los ordenamos para ver que efectivamente no hay ninguno de menos de 120

-- 5. Recupera los nombres de todos los actores 
SELECT first_name, last_name
FROM actor
ORDER BY first_name;

-- 6. Encuentra el nombre y apellido de los actores que contengan "Gibson" en su apellido
SELECT first_name, last_name
FROM actor
WHERE last_name LIKE '%Gibson%';

-- Otras formas de hacerlo
SELECT first_name, last_name
FROM actor
WHERE last_name REGEXP  'Gibson';

-- No se puede hacer:
SELECT first_name, last_name
FROM actor
WHERE last_name =  'Gibson'; -- En este caso coincide pero no haría lo que el enunciado pide
-- Ya que nos estaría devolviendo que el apellido sea Gibson pero no que contenga Gibson
-- Por lo que excluiría por ejemplo "McGibson"

-- 7. Encuentra los nombres de los actores que tengan un actor_id entre 10 y 20
SELECT first_name, last_name, actor_id
FROM actor
WHERE actor_id BETWEEN 10 and 20; 

-- Otra forma de hacerlo
 SELECT first_name, last_name, actor_id
FROM actor
WHERE actor_id>= 10 AND actor_id <=20; 

-- 8. Encuentra el título de las películas que no sean ni "R" ni "PG-13" en cuanto a su clasificación
SELECT title, rating
FROM film 
WHERE rating NOT IN ('R', 'PG-13');

-- Otra forma de hacerlo
SELECT title, rating
FROM film 
WHERE rating != 'R'	AND rating != 'PG-13';

-- 9. Encuentra la cantidad total de películas en cada clasificación y muestra la calificación junto con el recuento
SELECT rating, COUNT(film_id) AS total_peliculas
FROM film
GROUP BY rating;
-- 10. Encuentra la cantidad total de películas alquiladas por cada cliente y muestra el ID del cliente, su nombre y apellido
-- junto con la cantidad de películas alquiladas
SELECT c.customer_id, c.first_name as nombre, c.last_name as apellido, 
COUNT(r.rental_id) AS total_alquileres
FROM customer c
INNER JOIN rental r on c.customer_id = r.customer_id -- la clave foránea es customer_id
GROUP BY c.customer_id, c.first_name, c.last_name 
ORDER BY total_alquileres DESC;

-- 11. Encuentra la cantidad total de películas alquiladas por categoría y muestra el nombre de la categoría junto con el recuento de alquileres
-- Debemos unir cuatro tablas: rental, inventory, film_category y category, ya que no hay una relación
-- directa entre las tablas categoría de películas y películas alquiladas 
SELECT c.name AS nombre_categoria,
COUNT(r.rental_id) AS total_alquileres
FROM rental r
INNER JOIN inventory i ON r.inventory_id = i.inventory_id
INNER JOIN film_category fc ON i.film_id = fc.film_id
INNER JOIN category c ON fc.category_id = c.category_id
GROUP BY c.name
ORDER BY total_alquileres DESC;

-- 12. Encuentra el promedio de duración de las películas para cada clasificación junto con el promedio de duración 
SELECT  rating as clasificación, AVG (length) AS duracion_promedio
FROM film
GROUP BY rating;

-- 13. Encuentra el nombre y apellido de los actores que aparecen en la película con título "Indian Love"
SELECT a.first_name, a.last_name
FROM actor a
INNER JOIN film_actor fa ON a.actor_id = fa.actor_id
INNER JOIN film f ON fa.film_id = f.film_id
WHERE f.title = 'INDIAN LOVE';

-- 14. Muestra el título de todas las películas que contengan la palabra "dog" o "cat" en su descripción
SELECT title, description
FROM film
WHERE description LIKE '%dog%' or description LIKE '%cat%';

-- Otra forma de hacerlo
SELECT title, description
FROM film
WHERE description REGEXP 'dog|cat';

-- 15. Encuentra el título de todas las películas que fueron lanzadas entre el año 2005 y 2010
SELECT title, release_year
FROM film
WHERE release_year BETWEEN 2005 AND 2010;
 
-- Otra forma de hacerlo
SELECT title
FROM film
WHERE release_year >= 2005 AND release_year <= 2010;


