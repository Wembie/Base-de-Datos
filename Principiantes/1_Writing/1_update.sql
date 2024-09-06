UPDATE users SET age = 21; --NOOO xD, le pone a todos 21, mueres

UPDATE users SET age = 24 WHERE user_id = 5;

UPDATE users SET company_id = 1 WHERE user_id = 1;
UPDATE users SET company_id = 2 WHERE user_id = 5;
UPDATE users SET company_id = 3 WHERE user_id = 9;
UPDATE users SET company_id = 1 WHERE user_id = 7;
UPDATE users SET company_id = 1 WHERE user_id = 6;

