
DROP TABLE IF EXISTS test_table CASCADE;
DROP TABLE IF EXISTS publisher CASCADE;
DROP TABLE IF EXISTS theme CASCADE;
DROP TABLE IF EXISTS book CASCADE;
DROP TABLE IF EXISTS reader_book CASCADE;
DROP TABLE IF EXISTS author_book CASCADE;
DROP TABLE IF EXISTS person CASCADE;
DROP TABLE IF EXISTS author CASCADE;
DROP TABLE IF EXISTS reader CASCADE;
DROP TABLE IF EXISTS commen CASCADE;


CREATE TABLE test_table (
	test_table_id BIGINT NOT NULL,
	test_table_value TEXT DEFAULT 'ABC',

	CONSTRAINT test_table_pk PRIMARY KEY (test_table_id),
	CONSTRAINT test_table_value_unique UNIQUE (test_table_value)
	/*
	CONSTRAINT ref_table_fk FOREIGN KEY (test_table_id) REFERENCES ref_table (ref_table_id)
	*/
);

CREATE TABLE publisher (
	publisher_id INT,
	publisher_name TEXT NOT NULL,
	publusher_country TEXT,
	publisher_city TEXT,
	publisher_street TEXT,
	publisher_house TEXT,

	CONSTRAINT publisher_pk PRIMARY KEY (publisher_id) 
);

CREATE TABLE theme (
	theme_name TEXT,

	CONSTRAINT theme_pk PRIMARY KEY (theme_name)
);

CREATE TABLE book (
	book_ISBN TEXT,
	book_name TEXT NOT NULL,
	book_path TEXT,
	theme_name TEXT,
	publisher_id INT,

	CONSTRAINT book_pk PRIMARY KEY (book_ISBN),
	CONSTRAINT theme_fk FOREIGN KEY (theme_name) REFERENCES theme (theme_name),
	CONSTRAINT publisher_fk FOREIGN KEY (publisher_id) REFERENCES publisher (publisher_id)
);

CREATE TABLE reader_book (
        reader_book_book_ISBN TEXT,
        reader_book_reader_ID BIGINT,

        CONSTRAINT reader_book_pk PRIMARY KEY (reader_book_book_ISBN, reader_book_reader_ID)        
);

CREATE TABLE author_book (
        author_book_book_ISBN TEXT,
        author_book_reader_ID BIGINT,

        CONSTRAINT author_book_pk PRIMARY KEY (author_book_book_ISBN, author_book_reader_ID)        
);

CREATE TABLE person (
        person_ID BIGINT,
        person_last_name TEXT,
        person_first_name TEXT,
        person_middle_name TEXT,
        person_birthdate DATE,

        CONSTRAINT person_pk PRIMARY KEY (person_ID)

);

CREATE TABLE author (
        author_ID BIGINT,
                
        CONSTRAINT author_pk PRIMARY KEY (author_ID),
        CONSTRAINT person_fk FOREIGN KEY (author_ID) REFERENCES person (person_ID)
);

CREATE TABLE reader (
        reader_ID BIGINT,
        reader_login TEXT UNIQUE NOT NULL,
        reader_password TEXT NOT NULL,

        CONSTRAINT reader_pk PRIMARY KEY (reader_ID),
        CONSTRAINT person_fk FOREIGN KEY (reader_ID) REFERENCES person (person_ID)     

);

CREATE TABLE commen (
        comment_ID BIGINT,
        comment_content_path TEXT NOT NULL,
        comment_date DATE NOT NULL,
        book_ISBN TEXT,
        reader_ID BIGINT,    

        CONSTRAINT commen_pk PRIMARY KEY (comment_ID),
        CONSTRAINT book_fk FOREIGN KEY (book_ISBN) REFERENCES book (book_ISBN),
        CONSTRAINT reader_fk FOREIGN KEY (reader_ID) REFERENCES reader (reader_ID)         

);
