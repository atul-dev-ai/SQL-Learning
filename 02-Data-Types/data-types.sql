USE coachingmanagement

CREATE TABLE datatype_practice (
    id INT,
    name VARCHAR(100),
    description TEXT,
    age INT,
    salar DECIMAL(10, 2),
    birth_date DATE,
    created_at DATETIME,
    is_active BOOLEAN
);

INSERT INTO datatype_practice
VALUES (1,
        'Atul',
        'Computing & Information System',
        21,
        900000.50,
        '2005-01-15',
        '2026-08-29 19:51:55',
        TRUE
);

SELECT * FROM datatype_practice;