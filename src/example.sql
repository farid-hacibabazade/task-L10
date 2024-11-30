CREATE TABLE students
(
    id           SERIAL PRIMARY KEY,
    full_name    VARCHAR(256),
    created_at   TIMESTAMP,
    birth_date   DATE,
    email        VARCHAR(128),
    phone_number VARCHAR(24)
);

ALTER TABLE students
    RENAME COLUMN created_at TO enrollment_date;

ALTER TABLE students
    ADD COLUMN adress TEXT;

COMMENT ON TABLE students IS 'This table store information of student';

INSERT INTO students
VALUES (DEFAULT, 'Agshin Aliyev', '2024-06-05 10:32:25', '2004-12-24',
        'aliyev@mail.ru', '055-968-52-14', 'Mirze Agayev 41');

INSERT INTO students
VALUES (DEFAULT, 'Veli Memmedov', '2024-04-30 14:36:24', '2004-09-29',
        'veli.memmedov@gmail.com', '051-369-41-25', 'Huseyn Cavid Pr 23B');

INSERT INTO students
VALUES (DEFAULT, 'Elmar Rehimli', '2024-08-11', '2003-01-20',
        'elmar_rehim@gmail.com', '010-875-69-28', 'Ehmed Recebli 114');

INSERT INTO students
VALUES (DEFAULT, 'Leyla Agayeva', '2024-06-15 07:36', '2004-03-13',
        'leyla2004@mail.ru', '070-214-36-52', 'Dilara Eliyeva 11');

INSERT INTO students
VALUES (DEFAULT, 'Meryem Quliyeva', '2024-08-17 11:36:43', '2004-04-29',
        'mery_qlyv@gmail.com', '077-124-36-25', 'Resul Rza 68C');

INSERT INTO students
VALUES (DEFAULT, null, null, '2003-01-06', null,
        '012-365-42-15', 'Lev Tolstoy');

INSERT INTO students
VALUES (DEFAULT, 'Murad Eliyev', '2024-08-20 15:15:03', '2003-06-06',
        'ebulav_m@gmail.com', '051-985-33-48', 'Neriman Nerimanov 31');

DELETE
FROM students
WHERE id = 6;

UPDATE students
SET email = 'ebulov_m@gmail.com'
WHERE id = 7;

UPDATE students
SET birth_date = '2004-03-23'
WHERE full_name = 'Leyla Agayeva';

UPDATE students
SET full_name = 'Elmir Rahimli'
WHERE id = 3;

SELECT *
FROM students;

SELECT full_name, birth_date, email
FROM students;

SELECT id, full_name, email, phone_number
FROM students
WHERE birth_date < '2004-01-01';

SELECT *
FROM students
WHERE full_name LIKE '%v';

SELECT *
FROM students
WHERE full_name ILIKE '%m%';

SELECT *
FROM students
WHERE id = 1
   OR id = 3;

SELECT full_name, email, adress
FROM students
WHERE enrollment_date > '2024-06-01 08:00:00';

SELECT full_name AS name, phone_number
FROM students
WHERE id = 6
   OR full_name = 'Murad Eliyev';

SELECT *
FROM students
ORDER BY id DESC
    LIMIT 5;

SELECT full_name, birth_date, email, phone_number
FROM students
ORDER BY id
    LIMIT 3;