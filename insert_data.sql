INSERT INTO theme (theme_name) VALUES ('Детектив');
INSERT INTO theme (theme_name) VALUES ('Драма');
INSERT INTO theme (theme_name) VALUES ('Комедия');
INSERT INTO theme (theme_name) VALUES ('Наука');

INSERT INTO book (book_isbn, book_name, book_path, theme_name, publisher_id) VALUES ('abc', 'abc', NULL, 'Детектив', NULL);
INSERT INTO book (book_isbn, book_name, book_path, theme_name, publisher_id) VALUES ('abc2', 'abc2', NULL, 'Драма', NULL);
INSERT INTO book (book_isbn, book_name, book_path, theme_name, publisher_id) VALUES ('abc3', 'abc3', NULL, 'Комедия', NULL);
INSERT INTO book (book_isbn, book_name, book_path, theme_name, publisher_id) VALUES ('abc4', 'abc4', NULL, 'Наука', NULL);

INSERT INTO publisher (publisher_id, publisher_name, publusher_country, publisher_city, publisher_street, publisher_house) VALUES (1, 'Первое', 'Russia', 'Moscow', 'Tverskaya', '1');
INSERT INTO publisher (publisher_id, publisher_name, publusher_country, publisher_city, publisher_street, publisher_house) VALUES (2, 'Второе', 'Germany', 'Berlin', 'Unter der Linden', '5');
INSERT INTO publisher (publisher_id, publisher_name, publusher_country, publisher_city, publisher_street, publisher_house) VALUES (3, 'Третье', 'Russia', 'Samara', 'Lenina', '3');
INSERT INTO publisher (publisher_id, publisher_name, publusher_country, publisher_city, publisher_street, publisher_house) VALUES (4, 'Четвертое', 'Russia', 'Samara', 'Kirova', '33');

INSERT INTO reader_book (reader_book_book_ISBN, reader_book_reader_ID) VALUES ('abc', 3);
INSERT INTO reader_book (reader_book_book_ISBN, reader_book_reader_ID) VALUES ('abc2', 3);
INSERT INTO reader_book (reader_book_book_ISBN, reader_book_reader_ID) VALUES ('abc3', 5);
INSERT INTO reader_book (reader_book_book_ISBN, reader_book_reader_ID) VALUES ('abc4', 2);

INSERT INTO author_book (author_book_book_ISBN, author_book_reader_ID) VALUES ('abc', 1);
INSERT INTO author_book (author_book_book_ISBN, author_book_reader_ID) VALUES ('abc2', 3);
INSERT INTO author_book (author_book_book_ISBN, author_book_reader_ID) VALUES ('abc3', 4);
INSERT INTO author_book (author_book_book_ISBN, author_book_reader_ID) VALUES ('abc4', 5);

INSERT INTO person (person_ID, person_last_name, person_first_name, person_middle_name, person_birthdate) VALUES (1, 'Ivanov', 'Ivan', NULL, 2001-05-21); 
INSERT INTO person (person_ID, person_last_name, person_first_name, person_middle_name, person_birthdate) VALUES (2, 'Petrov', 'Petr', 'Ivanovich', 1969-03-06);
INSERT INTO person (person_ID, person_last_name, person_first_name, person_middle_name, person_birthdate) VALUES (3, 'Ivanova', 'Elena', NULL, 2000-11-29);
INSERT INTO person (person_ID, person_last_name, person_first_name, person_middle_name, person_birthdate) VALUES (4, 'Naumov', 'Petr', 'Ivanovich', 1993-06-15);

INSERT INTO author (author_ID) VALUES (1);
INSERT INTO author (author_ID) VALUES (2);
INSERT INTO author (author_ID) VALUES (3);
INSERT INTO author (author_ID) VALUES (4);

INSERT INTO reader (reader_ID, reader_login, reader_password) VALUES (1, '365', '3');
INSERT INTO reader (reader_ID, reader_login, reader_password) VALUES (2, '36', '3');
INSERT INTO reader (reader_ID, reader_login, reader_password) VALUES (3, '65', '8');
INSERT INTO reader (reader_ID, reader_login, reader_password) VALUES (4, '3658', '9');

INSERT INTO commen (commen_ID, commen_content_path, commen_date, book_ISBN, reader_ID) VALUES (1, 'path', 2014-03-21, 'abc', 3); 
INSERT INTO commen (commen_ID, commen_content_path, commen_date, book_ISBN, reader_ID) VALUES (2, 'path2', 2016-12-15, 'abc', 2); 
INSERT INTO commen (commen_ID, commen_content_path, commen_date, book_ISBN, reader_ID) VALUES (3, 'path3', 2013-07-13, 'abc3', 2); 
INSERT INTO commen (commen_ID, commen_content_path, commen_date, book_ISBN, reader_ID) VALUES (4, 'path4', 2016-08-02, 'abc3', 4); 

