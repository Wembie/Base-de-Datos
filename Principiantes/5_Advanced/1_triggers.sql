CREATE TABLE public.email_history (
	email_history_id int GENERATED ALWAYS AS IDENTITY NOT NULL,
	user_id int NOT NULL,
	email varchar(100) NULL,
	CONSTRAINT email_history_pk PRIMARY KEY (email_history_id)
);

CREATE TRIGGER tg_email
AFTER UPDATE ON users
FOR EACH ROW
BEGIN
    IF OLD.email <> NEW.email THEN
        INSERT INTO email_history( user_id, email )
        VALUES ( OLD.user_id, OLD.email );
    END IF;
END; --MySQL

-- CREAR FUNCION PostgreSQL

CREATE OR REPLACE FUNCTION log_email_history()
RETURNS TRIGGER AS $$
BEGIN
    IF OLD.email IS DISTINCT FROM NEW.email THEN
        INSERT INTO email_history (user_id, email)
        VALUES (OLD.user_id, OLD.email);
    END IF;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- CREAR TRIGGER PostgreSQL

CREATE TRIGGER tg_email
AFTER UPDATE ON users
FOR EACH ROW
EXECUTE FUNCTION log_email_history();

DROP TRIGGER IF EXISTS tg_email ON users;

UPDATE users SET email = 'wembie@hotmail.com' WHERE user_id = 1;
UPDATE users SET email = 'wumpux@wembinxus.co' WHERE user_id = 1;