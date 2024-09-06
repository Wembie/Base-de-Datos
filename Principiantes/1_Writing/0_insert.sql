INSERT INTO users ( name, surname, age ) VALUES ( 'Maria', 'Villaquiran', 19 );

INSERT INTO dni ( dni_number, user_id ) VALUES ( 123456789, 1 );
INSERT INTO dni ( dni_number, user_id ) VALUES ( 12345678, 5 );
INSERT INTO dni ( dni_number, user_id ) VALUES ( 1234567, 6 );
INSERT INTO dni ( dni_number, user_id ) VALUES ( 1234, 7 );
INSERT INTO dni ( dni_number ) VALUES ( 123 );

INSERT INTO companies ( name ) VALUES ( 'Wembie' );
INSERT INTO companies ( name ) VALUES ( 'Apple' );
INSERT INTO companies ( name ) VALUES ( 'Activision' );

INSERT INTO languages ( name ) VALUES ( 'Python' );
INSERT INTO languages ( name ) VALUES ( 'C' );
INSERT INTO languages ( name ) VALUES ( 'C++' );
INSERT INTO languages ( name ) VALUES ( 'JavaScript' );
INSERT INTO languages ( name ) VALUES ( 'Java' );
INSERT INTO languages ( name ) VALUES ( 'C#' );
INSERT INTO languages ( name ) VALUES ( 'Go' );

INSERT INTO users_languages ( user_id, language_id ) VALUES ( 1, 1 );
INSERT INTO users_languages ( user_id, language_id ) VALUES ( 1, 2 );
INSERT INTO users_languages ( user_id, language_id ) VALUES ( 1, 3 );
INSERT INTO users_languages ( user_id, language_id ) VALUES ( 1, 4 );
INSERT INTO users_languages ( user_id, language_id ) VALUES ( 1, 5 );
INSERT INTO users_languages ( user_id, language_id ) VALUES ( 1, 6 );

INSERT INTO users_languages ( user_id, language_id ) VALUES ( 5, 1 );
INSERT INTO users_languages ( user_id, language_id ) VALUES ( 5, 7 );
