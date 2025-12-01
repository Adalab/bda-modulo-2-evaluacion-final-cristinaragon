-- Ejercicio 1
USE adalab_pelis;
-- Fase 4: Obtener informaciñon con consultas SQL

-- 1. ¿Cuántas películas tienen una duración superior a 120 minutos?
SELECT COUNT(*) AS total_peliculas
FROM peliculas
WHERE duracion_minutos >120;

-- 2. ¿Cuántas películas tienen contenido adulto?
SELECT COUNT(*) AS total_peliculas_adulto
FROM peliculas 
WHERE contenido_adulto =1;

-- 3. ¿Cuál es la película más antigua registrada en la base de datos?
SELECT titulo, ano_lanzamiento
FROM peliculas
ORDER BY ano_lanzamiento ASC -- si no especifico es ASC
LIMIT 1;

-- 4. Muestra el promedio de duración de las películas agrupado por género
SELECT AVG(duracion_minutos) AS promedio_duracion, genero
FROM peliculas
GROUP BY genero
ORDER BY promedio_duracion;

-- 5. ¿Cuántas películas por año se han registrado en la base de datos?
SELECT ano_lanzamiento, COUNT(*) AS peliculas_por_año
FROM peliculas
GROUP BY ano_lanzamiento
ORDER BY peliculas_por_año DESC;

-- 6. ¿Cuál es el año con más películas en la base de datos?
SELECT ano_lanzamiento
FROM peliculas
GROUP BY ano_lanzamiento
ORDER BY COUNT(*) DESC
LIMIT 1;

-- 7. Obtén un listado de todos los géneros y cuántas películas corresponden a cada uno
SELECT genero, COUNT(*) AS total_peliculas
FROM peliculas
GROUP BY genero;

-- 8. Muestra todas las películas cuyo título contenga la palabra "Godfather"
SELECT titulo
FROM peliculas
WHERE titulo REGEXP 'Godfather';

-- Otra forma de hacerlo 
SELECT titulo
FROM peliculas
WHERE titulo LIKE '%Godfather%';









