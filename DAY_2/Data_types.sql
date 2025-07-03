CREATE DATABASE IF NOT EXISTS Dbms_course;
USE Dbms_course;
DROP TABLE IF EXISTS Employees;
CREATE TABLE Employees(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    salary DECIMAL (10,2),
    join_date DATE,
    is_active BOOLEAN

);
INSERT INTO Employees(name,salary,join_date,is_active) VALUES
('ARJUN SHARMA',120000.00,'2026-04-01',true),
('BROCK LESNAR',10000.00,'2022-01-09',false),
('ROMAN REINGS',78000.00,'2021-08-07',false),
('VIRAT KOHLI',20000.00,'2020-09-01',true);

SELECT name,salary FROM employees
WHERE  salary BETWEEN 10000 AND 200000;

SELECT*FROM employees
ORDER BY salary ASC , join_date DESC
LIMIT 2;

SELECT*FROM employees
WHERE is_active = false AND join_date < '2022-01-01';

SELECT*FROM employees
WHERE name IN ('ARJUN SHARMA','VIRAT KOHLI');
