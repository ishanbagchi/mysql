CREATE TABLE students (
    student_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(20) NOT NULL,
    gender CHAR(1),
    PRIMARY KEY(student_id)
);

---

CREATE TABLE inventory (
    item_name VARCHAR(20) NOT NULL,
    price DECIMAL(8,2),
    quantity INT
);

---

SELECT CURTIME();

---

SELECT CURDATE();

---

SELECT DATE_FORMAT(NOW(), '%w') AS 'DAY';

SELECT DAYOFWEEK(CURDATE());

---

SELECT DATE_FORMAT(NOW(), '%W') AS 'DAY';

SELECT DAYNAME(CURDATE());

---

SELECT DATE_FORMAT(NOW(), '%m/%d/%Y') AS 'TODAY';

---

SELECT DATE_FORMAT(NOW(), '%M %D at %h:%i') AS 'NOW';

---

CREATE TABLE tweets (
    content VARCHAR(140) NOT NULL,
    username VARCHAR(20) NOT NULL,
    created_at TIMESTAMP DEFAULT NOW() NOT NULL
);

INSERT INTO tweets (content, username)
VALUES('this is my first tweet.', 'ishanbagchi');

INSERT INTO tweets (content, username)
VALUES('buy tesla with 2 bitcoin.', 'elonmusk');