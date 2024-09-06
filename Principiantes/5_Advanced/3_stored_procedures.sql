CREATE PROCEDURE p_all_users()
BEGIN
    SELECT * FROM users;
END; --MySQL

CREATE OR REPLACE PROCEDURE p_all_users()
LANGUAGE plpgsql
AS $$
BEGIN
    PERFORM * FROM users;
END;
$$; --PostgreSQL

CALL p_all_users();

DROP PROCEDURE p_all_users;

CREATE OR REPLACE PROCEDURE p_age_users(age_param INT)
LANGUAGE plpgsql
AS $$
BEGIN
    PERFORM * FROM users WHERE age = age_param;
END;
$$;

CALL p_age_users(22);