CREATE DATABASE IF NOT EXISTS Dbms_course;
USE Dbms_course;
DROP TABLE IF EXISTS students;
CREATE TABLE students
(id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100) NOT NULL,
email VARCHAR(100) UNIQUE,
passwords VARCHAR(100),
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP);

INSERT INTO students(name,email,passwords) VALUES
('admin','sharmaarjun@gmail.com','admin123'),
('BHARAT','bharatsharma@gmail.com','bharat'),
('RAMAN','ramansharma@gmail.com','hello');

SELECT* FROM students
WHERE name = 'admin' AND passwords = 'admin123';

SELECT*FROM students
WHERE name = '' OR 1 = 1 -- AND password = nnvjnv;

