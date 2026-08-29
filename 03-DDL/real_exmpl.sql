
CREATE TABLE subjects (
    id int PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    code VARCHAR(20) NOT NULL,
    credit INT
)

ALTER TABLE subjects
ADD description TEXT;

ALTER TABLE subjects
DROP COLUMN credit;