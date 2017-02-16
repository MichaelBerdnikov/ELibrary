SELECT * FROM reader WHERE reader_password = '3';

SELECT * FROM person WHERE person_birthdate > '1990-12-31';

SELECT * FROM 
	person p JOIN author a ON p.person_id = a.author_id 
		 JOIN reader r ON p.person_id = r.reader_id
	WHERE p.person_middle_name IS NOT NULL OR p.person_birthdate >= '1991-01-01';

/*Все издатели из России*/
SELECT * FROM publisher WHERE publusher_country = 'Russia';

/*Книги, которые написаны авторами два или четыре*/
SELECT * FROM
        book JOIN author_book USING (book_ISBN)                            
        WHERE author_id IN (2, 4);

/*Имена и фамилии авторов тех книг, которые прочитал человек с именем Елена*/
SELECT p.person_first_name, p.person_last_name FROM 
        person p JOIN author_book ab ON p.person_id = ab.author_id -- JOIN author_book USING (author_id)
                 JOIN reader_book rb ON ab.book_ISBN = rb.book_ISBN
                 JOIN person pe ON rb.reader_id = pe.person_id                 		 
	WHERE pe.person_first_name = 'Elena';

/*Авторы научных книг*/
SELECT ab.author_id FROM
        author_book ab JOIN book b ON ab.book_ISBN = b.book_ISBN                 
        WHERE b.theme_name = 'Наука';

/*Имена людей, которые делали комментарии в прошлом году*/
SELECT DISTINCT p.person_first_name FROM 
        person p JOIN commen c ON p.person_id = c.reader_id
        WHERE c.comment_date >= date_trunc('year', current_date - INTERVAL '1 YEAR') AND c.comment_date < date_trunc('year', current_date);

SELECT person_first_name || ' ' || person_last_name AS "full name" FROM person;
       
/*Вывести текст и имя авторов комментариев к книгам научной тематики*/
SELECT c.comment_text, p.person_first_name FROM 
        person p JOIN commen c ON p.person_id = c.reader_id
                 JOIN book b ON c.book_ISBN = b.book_ISBN                                		 
	WHERE b.theme_name = 'Наука';

/*Найти людей у которых фамилия или имя начинается на букву ‘E’*/
SELECT * FROM person WHERE substring(person_first_name from 1 for 1) = 'E' OR substring(person_last_name from 1 for 1) = 'E';

/* Вывести адреса издательств, которые издавали книги авторов, родившихся в зимние месяцы года НЕ РЕШЕНО*/
SELECT p.publusher_country, p.publisher_city, p.publisher_street, p.publisher_house FROM 
        publisher p JOIN book b ON p.publisher_id = b.publisher_id
                    JOIN author_book a ON b.book_ISBN = a.book_ISBN
                    JOIN person pe ON a.author_id = pe.person_id                                		 
	WHERE EXTRACT(MONTH FROM pe.person_birthdate) IN (01, 02, 12);

/*Вывести фамилии людей, которые родились в високосные года*/
SELECT person_last_name FROM person WHERE 
	(MOD((EXTRACT(YEAR FROM person_birthdate))::integer, 4) = 0 
	AND MOD((EXTRACT(YEAR FROM person_birthdate))::integer, 100) != 0)
	OR MOD((EXTRACT(YEAR FROM person_birthdate))::integer, 400) = 0; 

/*Вывести название самой читаемой книги(тут потребуется конструкции GROUP BY, MAX, MIN, COUNT - поищите в интернете)*/
WITH top_book AS (SELECT book_isbn
FROM reader_book 
GROUP BY book_ISBN
ORDER BY COUNT(reader_id) DESC, book_isbn DESC
LIMIT 1)
SELECT book_name FROM book JOIN top_book USING (book_isbn);

/*Вывести имя и фамилию самого старого человека*/
WITH oldest_birthdate AS (SELECT person_birthdate 
       FROM person
       GROUP BY person_birthdate
       ORDER BY person_birthdate ASC
       LIMIT 1)
       SELECT person_first_name, person_last_name FROM 
              person JOIN oldest_birthdate USING (person_birthdate);  
       
/*Вывести название и имя автора наименее популярной книги*/
WITH last_book AS (SELECT book_isbn
FROM book JOIN reader_book USING (book_ISBN) 
GROUP BY book_ISBN
ORDER BY COUNT(reader_id), book_isbn ASC
LIMIT 1)
SELECT b.book_name, p.person_first_name, p.person_last_name FROM book b  
       JOIN last_book l ON b.book_ISBN = l.book_ISBN
       JOIN author_book a ON b.book_ISBN = a.book_ISBN
       JOIN person p ON a.author_id = p.person_id;

/*Вывести все информацию об издательстве с наибольшим количеством книг*/
WITH top_publisher AS (SELECT publisher_id
FROM book 
WHERE publisher_id IS NOT NULL
GROUP BY publisher_id
ORDER BY COUNT(book_ISBN) DESC
LIMIT 1)
SELECT * FROM publisher JOIN top_publisher USING (publisher_id); 





                 
 