-- CHAR

CREATE TABLE dogs (name CHAR(5), breed VARCHAR(10));

INSERT INTO dogs (name, breed)
VALUES  ('bob', 'beagle'),
        ('robby', 'corgi'),
        ('princess jane', 'retriever');

--- DECIMAL

CREATE TABLE items (price DECIMAL(5,2));

INSERT INTO items(price) VALUES(7);

INSERT INTO items(price) VALUES(34.88);

INSERT INTO items(price) VALUES(298.5);

--- FLOAT & DOUBLE

CREATE TABLE thingies (price FLOAT);

INSERT INTO thingies(price) VALUES (88.45);

INSERT INTO thingies(price) VALUES (8877.45);

INSERT INTO thingies(price) VALUES (8877665544.45);

--- DATES & TIMES & DATETIME

CREATE TABLE people
(
    name VARCHAR(50),
    birthdate DATE,
    birthtime TIME,
    birthdt DATETIME
);

INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES 
('Ron', '1983-11-11', '10:07:35', '1983-11-11 10:07:35'),
('Harry', '1943-12-25', '04:10:42', '1943-12-25 04:10:42');

SELECT CURDATE();

INSERT INTO people (name, birthdate, birthtime, birthdt)
VALUES ('Microwave', CURDATE(), CURTIME(), NOW());

---

SELECT name, birthdate, DAY(birthdate) FROM people;

SELECT name, birthdate, DAYNAME(birthdate) FROM people;

SELECT name, birthdate, DAYOFWEEK(birthdate) FROM people;

SELECT name, birthdate, DAYOFYEAR(birthdate) FROM people;

---

SELECT name, birthdt, DAY(birthdt) FROM people;

SELECT name, birthdt, DAYNAME(birthdt) FROM people;

SELECT name, birthdt, DAYOFWEEK(birthdt) FROM people;

SELECT name, birthdt, DAYOFYEAR(birthdt) FROM people;

SELECT
    CONCAT
    (
        MONTHNAME(birthdate),
        ' ',
        DAY(birthdate),
        ' ',
        YEAR(birthdate)
    ) AS 'BIRTHDAY'
FROM people;

SELECT DATE_FORMAT(birthdt, '%W %M %Y') FROM people;

SELECT DATE_FORMAT(birthdt, '%W %m %Y') FROM people;

SELECT CONCAT
    (
        name,
        DATE_FORMAT(birthdt, ' was born on %W at %h:%i.')
    ) AS "B'DAY"
FROM people;

SELECT DATE_FORMAT(birthdt, '%m/%d/%y') FROM people;

SELECT DATE_FORMAT(birthdt, '%m/%d/%Y') FROM people;

SELECT DATE_FORMAT(birthdt, '%m/%d/%Y at %h:%i') FROM people;

---

SELECT name, birthdate, DATEDIFF(NOW(), birthdate) FROM people;

SELECT
    name,
    birthdt,
    DATE_ADD(birthdt, INTERVAL 1 MONTH)
FROM people;

SELECT
    name,
    birthdt,
    DATE_SUB(birthdt, INTERVAL 1 MONTH)
FROM people;

SELECT
    name,
    birthdt,
    birthdt + INTERVAL 1 MONTH
FROM people;

SELECT
    name,
    birthdt,
    birthdt - INTERVAL 13 MONTH
FROM people;

SELECT
    name,
    birthdt,
    birthdt + INTERVAL 15 MONTH + INTERVAL 10 HOUR AS '+/-'
FROM people;

---

CREATE TABLE comments (
    content VARCHAR(100),
    created_at TIMESTAMP DEFAULT NOW()
);

INSERT INTO comments (content)
VALUES  ('lol what a funny article!');
        

INSERT INTO comments (content)
VALUES  ('I found this offensive.');

INSERT INTO comments (content)
VALUES  ('This is so uncool Dattebyo!');

SELECT * FROM comments ORDER BY created_at DESC;

CREATE TABLE comments2 (
    content VARCHAR(100),
    changed_at TIMESTAMP DEFAULT NOW() ON UPDATE CURRENT_TIMESTAMP
);

INSERT INTO comments2 (content)
VALUES  ('lol what a funny article!');
        

INSERT INTO comments2 (content)
VALUES  ('I found this offensive.');

INSERT INTO comments2 (content)
VALUES  ('This is so uncool Dattebyo!');

UPDATE comments2 SET content='this is not cool'
WHERE content='lol what a funny article!';

SELECT * FROM comments2 ORDER BY changed_at;