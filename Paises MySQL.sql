USE world;
SELECT c.name AS 'País', l.language AS 'Idioma', l.percentage AS 'Porcentaje de Habla'
FROM countries c
JOIN languages l ON c.code = l.country_code
WHERE l.language = 'Slovene'
ORDER BY l.percentage DESC;
SELECT c.name AS 'País', c.language AS 'Idioma', COUNT(*) AS 'Número de Ciudades'
FROM countries c
JOIN cities ci ON c.code = ci.country_code
GROUP BY c.code
ORDER BY COUNT(*) DESC;
SELECT ci.name AS 'Ciudad', ci.population AS 'Población'
FROM cities ci
JOIN countries c ON ci.country_code = c.code
WHERE c.name = 'Mexico' AND ci.population > 500000
ORDER BY ci.population DESC;
SELECT c.name AS 'País', l.language AS 'Idioma', l.percentage AS 'Porcentaje de Habla'
FROM countries c
JOIN languages l ON c.code = l.country_code
WHERE l.percentage > 89
ORDER BY l.percentage DESC;
SELECT name AS 'País', surface_area AS 'Área de Superficie', population AS 'Población'
FROM countries
WHERE surface_area < 501 AND population > 100000;
SELECT name AS 'País', government_form AS 'Forma de Gobierno', capital AS 'Capital', life_expectancy AS 'Esperanza de Vida'
FROM countries
WHERE government_form = 'Constitutional Monarchy' AND capital > 200 AND life_expectancy > 75;
SELECT co.name AS 'País', ci.name AS 'Ciudad', ci.district AS 'Distrito', ci.population AS 'Población'
FROM countries co
JOIN cities ci ON co.code = ci.country_code
WHERE co.name = 'Argentina' AND ci.district = 'Buenos Aires' AND ci.population > 500000;
SELECT region AS 'Región', COUNT(*) AS 'Número de Países'
FROM countries
GROUP BY region
ORDER BY COUNT(*) DESC;


