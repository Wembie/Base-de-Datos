SELECT name, surname, IFNULL( age, 0 ) AS age FROM users; --MySQL

SELECT name, surname, NULLIF( age, 0 ) AS age FROM users; --PostgreSQL

SELECT name, surname, NULLIF( email, 'No tiene' ) AS email FROM users; --PostgreSQL