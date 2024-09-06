SELECT *,
CASE
    WHEN age > 17 THEN 'Es mayor de edad'
    ELSE 'Es menor de Edad'
END AS agetext
FROM users;

SELECT *,
CASE
    WHEN age > 17 THEN TRUE
    ELSE FALSE
END AS "Es mayor de edad?"
FROM users;

SELECT *,
CASE
    WHEN age > 18 THEN 'Es mayor de edad'
    WHEN age = 18 THEN 'Acaba de cumplir la mayoria de edad'
    ELSE 'Es menor de Edad'
END AS "Es mayor de edad?"
FROM users;