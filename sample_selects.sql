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
SELECT person_last_name FROM person WHERE MOD ((EXTRACT(YEAR FROM person_birthdate) - 1988), 4) = 0; 

/*Вывести название самой читаемой книги(тут потребуется конструкции GROUP BY, MAX, MIN, COUNT - поищите в интернете)*/
SELECT b.book_name FROM 
        book b JOIN reader_book r ON b.book_ISBN = r.book_ISBN                                               		 
	WHERE b.book_ISBN = max(count);


	(title, cost) in (SELECT title, max(cost) from friuits group by title);        

	SELECT
 customer_id,
 COUNT (customer_id)
FROM
 payment
GROUP BY
 customer_id;
                 
 