
DROP TABLE IF EXISTS test_table CASCADE;
DROP TABLE IF EXISTS publisher CASCADE;
DROP TABLE IF EXISTS theme CASCADE;

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
