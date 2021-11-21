## CRUD - Create, Read, Update, Delete

### CREATE

```sql
CREATE DATABASE name_of_db;

CREATE TABLE table_name
(
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(50) DEFAULT 'no name',
    age INT
);

INSERT INTO table_name (name, age)
VALUES ('Ishan', 21),
       ('Iman', 17);
```

### READ

```sql
SELECT * FROM table_name;

SELECT name, age FROM table_name WHERE age=17;
```

### UPDATE

```sql
UPDATE table_name SET age='22' WHERE name='Ishan';
```

### DELETE

```sql
DELETE FROM table_name WHERE name='Ishan';

DROP TABLE table_name;

DROP DATABASE name_of_db;
```
