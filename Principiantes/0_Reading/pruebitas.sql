-- Mayor de 18
SELECT name FROM users WHERE age >= 18;

--deseo saber el name de todo lo que sea mayor de edad, que no sea null en el birth, ordenado de mayor a menor por la edad

SELECT name FROM users WHERE age >= 18 AND birth IS NOT NULL ORDER BY age ASC;

--deseo saber el name de todo lo que sea mayor de edad, que no sea null en el birth y que no se repitan

SELECT DISTINCT name FROM users WHERE age >= 18 AND birth IS NOT NULL;