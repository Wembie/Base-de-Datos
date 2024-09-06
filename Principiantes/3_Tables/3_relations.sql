CREATE TABLE dni (
    dni_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    dni_number INT NOT NULL,
    user_id INT,
    UNIQUE (dni_number),
    FOREIGN KEY (user_id) REFERENCES users(user_id)
); -- 1:1

ALTER TABLE users
ADD CONSTRAINT fk_companies
FOREIGN KEY(company_id) REFERENCES companies(company_id); --1:N

CREATE TABLE users_languages (
    users_language_id INT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    user_id int,
    language_id int,
    FOREIGN KEY (user_id) REFERENCES users(user_id),
    FOREIGN KEY (language_id) REFERENCES languages(language_id),
    UNIQUE(user_id,language_id)
); --N:M