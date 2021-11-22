SELECT
  CONCAT(author_fname, ' ', author_lname)
FROM books;

SELECT 
    author_fname AS first,
    author_lname AS last,
    CONCAT(author_fname, ' ', author_lname) AS full
FROM books;

SELECT
    CONCAT_WS(' - ', title, author_fname, author_lname)
FROM books;

SELECT
    CONCAT_WS
    (
        ' - ',
        title,
        CONCAT
        (
            author_fname,
            ' ',
            author_lname
        )
    ) AS 'Book Name - Author Name'
FROM books;

---

SELECT SUBSTRING('Hello World', 1, 4);

SELECT SUBSTR('Hello World', 1, 4);

SELECT SUBSTRING('Hello World', 7);

SELECT 
    CONCAT
    (
        SUBSTRING(author_fname, 1, 1),
        SUBSTRING(author_lname, 1, 1)
    ) AS initials
FROM books;

SELECT SUBSTRING('Hello World', -5);

SELECT
    CONCAT
    (
        SUBSTRING(title, 1, 10),
        '...'
    ) AS 'short title'
FROM books;

SELECT SUBSTRING(title, 1, 10) AS 'short title' FROM books;

---

SELECT REPLACE('Hello World', 'Hello', 'Hi');

SELECT REPLACE('Hello World', 'l', '1');

SELECT REPLACE(title, 'e', '3') FROM books;

SELECT
    CONCAT
    (
        SUBSTRING(
            REPLACE (title, 'e', '3'), 1, 10
        ), '...'
    ) AS 'e -> 3'
FROM books;

---

SELECT REVERSE('meow meow');

SELECT
    REVERSE(author_fname)
FROM books;

SELECT
    CONCAT
    (
        author_fname,
        REVERSE(author_fname)
    ) AS 'palindrome fname'
FROM books;

---

SELECT CHAR_LENGTH('Hello World');

SELECT
    author_lname,
    CHAR_LENGTH (author_lname) AS 'length'
FROM books;

SELECT
    CONCAT
    (
        author_lname, 
        ' is ',
        CHAR_LENGTH (author_lname),
        ' characters long'
    ) AS 'lengths'
FROM books;

---

SELECT UPPER ('Hello World');

SELECT UPPER (title) FROM books;

---

SELECT LOWER ('Hello World');

SELECT LOWER (title) FROM books;
