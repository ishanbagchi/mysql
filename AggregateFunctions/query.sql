SELECT COUNT(*) FROM books;

SELECT COUNT(DISTINCT author_fname) FROM books;

SELECT COUNT(DISTINCT author_fname, author_lname)
FROM books;

SELECT COUNT(*) FROM books
WHERE title LIKE '%the%';

---

SELECT title, author_fname, author_lname
FROM books GROUP BY author_lname;

SELECT author_fname, author_lname, COUNT(*)
FROM books GROUP BY author_lname;

SELECT author_fname, author_lname, COUNT(*)
FROM books GROUP BY author_lname, author_fname;

SELECT released_year, COUNT(*)
FROM books GROUP BY released_year;

SELECT CONCAT 
    (
        'In ',
        released_year,
        ', ',
        COUNT(*),
        ' book(s) released'
    ) AS year
FROM books GROUP BY released_year;

---

SELECT MIN(released_year) FROM books;

SELECT MAX(pages) FROM books;

SELECT title, MAX(pages) FROM books;

SELECT title, pages FROM books
WHERE pages = (SELECT MIN(pages) FROM books);

SELECT title, pages FROM books
ORDER BY pages ASC LIMIT 1;

---

SELECT  author_fname,
        author_lname,
        MIN(released_year)
FROM    books
GROUP BY author_lname, author_fname;

SELECT  author_fname,
        author_lname,
        MAX(pages)
FROM    books
GROUP BY author_lname, author_fname
ORDER BY MAX(pages) DESC;

SELECT
    CONCAT(author_fname, ' ', author_lname) AS author,
    MAX(pages) AS 'longest book'
FROM books
GROUP BY author_lname, author_fname
ORDER BY MAX(pages) DESC;

---

SELECT SUM(pages) FROM books;

SELECT
    CONCAT(author_fname, ' ', author_lname) AS author,
    SUM(pages) AS 'total pages'
FROM books
GROUP BY author_lname, author_fname
ORDER BY SUM(pages) DESC;

---

SELECT AVG(pages) FROM books;

SELECT released_year, AVG(stock_quantity)
FROM books GROUP BY released_year;

SELECT author_fname, author_lname, AVG(pages)
FROM books GROUP BY author_lname, author_fname;