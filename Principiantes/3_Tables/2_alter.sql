ALTER TABLE persons6
ADD surname varchar(150);

ALTER TABLE persons6
RENAME COLUMN surname TO last_name;

ALTER TABLE persons6
MODIFY COLUMN last_name varchar(100);

ALTER TABLE persons6
DROP COLUMN last_name;

ALTER TABLE users
ADD company_id INT;

ALTER TABLE public.users_languages ALTER COLUMN user_id SET NOT NULL;
ALTER TABLE public.users_languages ALTER COLUMN language_id SET NOT NULL;
