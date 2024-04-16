 -- S - structured
 -- Q - query
 -- L - language

 -- ## Relational database
 -- tables - related
 -- ## Types of relations
 -- # 1:1 -> one to one
 -- # 1:N -> one to many
 -- one doctor work in one hospital -> belongs_to hospital - hospital_id
 -- hospital has many doctors
 -- # N:N -> many to many
 -- consultation = join table -> doctor_id , patient_id

-- # CRUD
-- Create
INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);
-- INSERT INTO doctors (first_name, last_name)
-- VALUES ("John", "Doe")

-- # Read
SELECT * FROM table_name
SELECT column_name1, column_name2 FROM table_name
-- SELECT * FROM doctors
-- SELECT first_name, last_name FROM doctors

-- # filtering
SELECT * FROM table_name
WHERE condition
-- SELECT * FROM doctors WHERE first_name = 'John' AND first_name = 'Something'

-- # Update
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;
-- UPDATE doctors SET first_name = "Jane" WHERE id = 1 ;

-- #Delete
DELETE FROM table_name WHERE condition;
-- DELETE FROM doctors WHERE id = 1
