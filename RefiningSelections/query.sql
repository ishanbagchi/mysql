SELECT DISTINCT author_lname FROM books; -- VARCHAR

SELECT DISTINCT released_year FROM books; -- INT

SELECT DISTINCT
    CONCAT(author_fname, ' ', author_lname) AS 'FULL NAMES'
FROM books;

SELECT DISTINCT author_fname, author_lname FROM books;

---

SELECT author_lname FROM books ORDER BY author_lname; -- VARCHAR

SELECT released_year FROM books ORDER BY released_year; -- INT

SELECT title FROM books ORDER BY title DESC; -- DESCENDING

SELECT title FROM books ORDER BY title ASC; -- ASCENDING

SELECT title, released_year AS year, pages
FROM books ORDER BY released_year;

SELECT title, author_fname, author_lname
FROM books ORDER BY 2 DESC; -- 2 : 2nd select column

SELECT author_fname, author_lname FROM books
ORDER BY author_lname, author_fname;

---

SELECT * FROM books LIMIT 5;

SELECT title, released_year FROM books
ORDER BY released_year DESC LIMIT 5;

SELECT title, released_year FROM books
ORDER BY released_year DESC LIMIT 5, 5;

SELECT title FROM books LIMIT 5,18446744073709551615;

---

SELECT title, author_fname
FROM books WHERE author_fname LIKE '%da%'; -- % : wildcards

SELECT book_id AS id, title, author_fname
FROM books WHERE author_fname LIKE 'da%'
ORDER BY title;

SELECT book_id AS id, title FROM books
WHERE title LIKE '%\%%';

SELECT book_id AS id, title FROM books
WHERE title LIKE '%\_%';

SELECT title, stock_quantity FROM books
WHERE stock_quantity LIKE '____';

SELECT book_id AS id,title, stock_quantity 
FROM books WHERE stock_quantity LIKE '___'
ORDER BY stock_quantity DESC;
