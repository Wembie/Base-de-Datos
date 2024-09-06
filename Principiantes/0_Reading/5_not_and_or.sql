SELECT name FROM users WHERE NOT surname = 'Giraldo';

SELECT name FROM users WHERE NOT email LIKE '%hotmail.com';

SELECT name FROM users WHERE NOT surname = 'Giraldo' AND age = 22;

SELECT name FROM users WHERE NOT surname = 'Giraldo' AND NOT age = 22;

SELECT name FROM users WHERE NOT surname = 'Giraldo' OR age = 22;