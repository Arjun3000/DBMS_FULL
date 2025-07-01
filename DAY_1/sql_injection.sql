CREATE DATABASE IF NOT EXISTS Dbms_course;
USE Dbms_course;
DROP TABLE IF EXISTS Students;
CREATE TABLE Students
(id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100) NOT NULL,
email VARCHAR(100) UNIQUE,
created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP);

INSERT INTO Students(name,email) VALUES
('ARJUN','sharmaarjun@gmail.com'),
('BHARAT','bharatsharma@gmail.com'),
('RAMAN','ramansharma@gmail.com');

SELECT* FROM Students;

