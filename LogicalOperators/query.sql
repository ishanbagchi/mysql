-- !=

SELECT title, released_year
FROM books WHERE released_year != 2017;

SELECT title, author_lname
FROM books WHERE author_lname != 'Harris';

-- NOT LIKE

SELECT title FROM books WHERE title NOT LIKE 'W%';

-- > / >=

SELECT title, released_year FROM books
WHERE released_year > 2000;

SELECT title, released_year FROM books
WHERE released_year >= 2000;

SELECT title, stock_quantity FROM books
WHERE stock_quantity >= 100;

SELECT 99 > 1; -- TRUE => 1

SELECT
    100 > 5    AS  '1', -- 1
    -15 > 15   AS  '2', -- 0
    9   > -10  AS  '3', -- 1
    1   > 1    AS  '4', -- 0
    'a' > 'b'  AS  '5', -- 0
    'A' > 'a'  AS  '6'; -- 0

SELECT title, author_fname, author_lname
FROM books WHERE author_lname > 'Eggers'
GROUP BY author_lname, author_fname;

-- < / <=

SELECT title, released_year FROM books
WHERE released_year < 2000;

SELECT title, released_year FROM books
WHERE released_year <= 2000;

SELECT
    3   <  -10  AS  '1', -- 0
    -10 <  9    AS  '2', -- 1
    42  <  42   AS  '3', -- 0
    'h' <  'p'  AS  '4', -- 1
    'Q' <= 'q'  AS  '5'; -- 1

SELECT title, author_fname, author_lname
FROM books WHERE author_lname < 'Eggers'
GROUP BY author_lname, author_fname;

--- && / AND

SELECT title, author_lname, released_year
FROM books
WHERE author_lname = 'Eggers' AND
      released_year > 2010;

SELECT * FROM products 
WHERE brand='lego' AND instock='true';

SELECT  1 < 5 AND 'a' <= 'A'  AS '1', -- 1
        1 < 5 && 7 = 9        AS '2', -- 0
        -10 <= -20 && 0 <= 0  AS '3', -- 0
        -40 <= 0 AND 10 > 40  AS '4', -- 0
        54 <= 54 && 'a' = 'A' AS '5'; -- 1

SELECT * FROM books
WHERE
    author_lname='Eggers' AND
    released_year > 2010 AND
    title LIKE '%novel%';

-- OR / ||

SELECT
    title,
    CONCAT(author_fname, ' ', author_lname) AS author,
    released_year AS year 
FROM books WHERE
    author_lname='Eggers' OR
    released_year > 2010;

SELECT
    40 <= 100 OR -2 > 0    AS '1', -- 1
    10 > 5 OR 5 = 5        AS '2', -- 1
    'a' = 5 || 3000 > 2000 AS '3'; -- 1

SELECT
    title,
    CONCAT(author_fname, ' ', author_lname) AS author,
    released_year AS year,
    stock_quantity AS 'qty.'
FROM books WHERE
    author_lname='Eggers' OR
    released_year > 2010 OR
    stock_quantity > 100;

-- BETWEEN

SELECT title, released_year FROM books
WHERE
    released_year >= 2004 AND
    released_year <= 2015;

SELECT title, released_year FROM books
WHERE released_year BETWEEN 2004 AND 2015;

SELECT title, pages FROM books
WHERE pages NOT BETWEEN 100 AND 500;

-- CAST()

SELECT CAST('2017-05-02' AS DATETIME);

SELECT name, birthdt FROM people
WHERE birthdt BETWEEN
    CAST('1980-01-01' AS DATETIME) AND 
    CAST('2000-01-01' AS DATETIME);

-- IN & NOT IN

SELECT
    title,
    CONCAT(author_fname, ' ', author_lname) AS author
FROM books WHERE
    author_lname='Carver' OR
    author_lname='Lahiri' OR
    author_lname='Smith';

SELECT
    title,
    CONCAT(author_fname, ' ', author_lname) AS author
FROM books
WHERE author_lname IN ('Carver', 'Lahiri', 'Smith');

SELECT title, released_year FROM books
WHERE released_year IN (2017, 1985, 2003);

SELECT title, released_year FROM books
WHERE
    released_year != 2000 AND
    released_year != 2002 AND
    released_year != 2004 AND
    released_year != 2006 AND
    released_year != 2008 AND
    released_year != 2010 AND
    released_year != 2012 AND
    released_year != 2014 AND
    released_year != 2016;

SELECT title, released_year FROM books
WHERE released_year NOT IN(
    2000, 2002, 2004, 2006,
    2008, 2010, 2012, 2014, 2016
);

SELECT title, released_year
FROM books WHERE 
    released_year >= 2000 AND
    released_year NOT IN(
        2000, 2002, 2004, 2006,
        2008, 2010, 2012, 2014, 2016
    );

-- %

SELECT book_id, title, released_year
FROM books WHERE
    released_year >= 2000 AND
    released_year % 2 != 0
ORDER BY released_year;

-- CASE

SELECT
    title, released_year,
    CASE
        WHEN released_year >= 2000 THEN 'Modern Lit'
        ELSE '20th Century Lit'
    END AS GENRE
FROM books;

SELECT
    title, stock_quantity,
    CASE
        WHEN stock_quantity BETWEEN 0 AND 50 THEN '*'
        WHEN stock_quantity BETWEEN 51 AND 100 THEN '**'
        WHEN stock_quantity BETWEEN 101 AND 500 THEN '***'
        ELSE '****'
    END AS STOCK
FROM books;

SELECT
    title, stock_quantity,
    CASE
        WHEN stock_quantity <= 50 THEN '*'
        WHEN stock_quantity <= 100 THEN '**'
        WHEN stock_quantity <= 500 THEN '***'
        ELSE '****'
    END AS STOCK
FROM books;