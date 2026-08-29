-- Active: 1787999216968@@127.0.0.1@3306@coachingmanagement
SHOW DATABASE

CREATE TABLE school (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
);

ALTER TABLE school
ADD email VARCHAR(100);

ALTER Table school
MODIFY age INT NOT NULL;

ALTER Table school
DROP COLUMN email;

TRUNCATE TABLE school;

INSERT INTO school
(id)
VALUES
(1)

DROP Table school;

SELECT DATABASE