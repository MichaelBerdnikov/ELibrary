SELECT * FROM reader WHERE reader_password = '3';

SELECT * FROM person WHERE person_birthdate > '1990-12-31';

SELECT * FROM 
	person p JOIN author a ON p.person_id = a.author_id 
		 JOIN reader r ON p.person_id = r.reader_id
	WHERE p.person_middle_name IS NOT NULL OR p.person_birthdate >= '1991-01-01';

SELECT * FROM publisher WHERE publusher_country = 'Russia';

SELECT * FROM
        book b JOIN author_book au ON b.book_ISBN = au.book_ISBN  
               JOIN author a ON au.author_id = a.author_id
               JOIN person p ON a.author_id = p.person_id                  
        WHERE p.person_id = 2 OR p.person_id = 4;  

SELECT * FROM 
        person p JOIN author a ON p.person_id = a.author_id
                 JOIN author_book ab ON a.author_id = ab.author_id
                 JOIN reader_book rb ON ab.book_ISBN = rb.book_ISBN
                 JOIN reader r ON rb.reader_id = r.reader_id
                 JOIN person pe ON r.reader_id = pe.person_id                 		 
	WHERE pe.person_first_name = 'Elena';

SELECT * FROM
        author a JOIN author_book ab ON a.author_id = ab.author_id
                 JOIN book b ON ab.book_ISBN = b.book_ISBN
                 JOIN theme t ON b.theme_name = t.theme_name
                 JOIN person p ON a.author_id = p.person_id 
        WHERE t.theme_name = 'Наука';

SELECT * FROM 
        person p JOIN reader r ON p.person_id = r.reader_id
                 JOIN commen c ON r.reader_id = c.reader_id
        WHERE c.comment_date >= '2016-01-01' AND c.comment_date < '2017-01-01';
       

                 
 