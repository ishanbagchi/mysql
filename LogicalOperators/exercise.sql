SELECT 10 != 10; -- 0
SELECT 15 > 14 && 99 - 5 <= 94; -- 1
SELECT 1 IN (5, 3) OR 9 BETWEEN 8 AND 10; -- 1

--

SELECT book_id AS id, title, released_year AS year
FROM books WHERE released_year < 1980;

--

SELECT
    book_id AS id,
    title,
    CONCAT(author_fname, ' ', author_lname) AS author
FROM books WHERE author_lname IN ('Eggers', 'Chabon');

--

SELECT
    book_id AS id,
    title,
    CONCAT(author_fname, ' ', author_lname) AS author,
    released_year
FROM books WHERE
    author_lname = 'Lahiri' AND
    released_year > 2000;

--

SELECT book_id AS id, title, pages
FROM books WHERE pages BETWEEN 100 AND 200;

--

SELECT
    book_id AS id,
    title,
    CONCAT(author_fname, ' ', author_lname) AS author
FROM books WHERE
    author_lname LIKE 'C%' OR
    author_lname LIKE 'S%';

SELECT
    book_id AS id, title,
    CONCAT(author_fname, ' ', author_lname) AS author
FROM books WHERE SUBSTRING(author_lname, 1, 1) IN ('C', 'S');

--

SELECT
    book_id AS id,
    title,
    CONCAT(author_fname, ' ', author_lname) AS author,
    CASE
        WHEN title LIKE '%stories' THEN 'Short Stories'
        WHEN 
            title LIKE '%just kids%' OR
            title LIKE '%a heartbreaking work%'
            THEN 'Memoir'
        ELSE 'Novel'
    END AS TYPE
FROM books;

--

SELECT
    title, author_lname,
    CASE
        WHEN COUNT(*) = 1 THEN '1 book'
        ELSE CONCAT(COUNT(*), ' books')
    END AS COUNT
FROM books GROUP BY author_lname, author_fname;