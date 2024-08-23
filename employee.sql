CREATE DATABASE employee;
USE employee;

CREATE TABLE Employees_details (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    emp_age INT,
    address VARCHAR(50),
    income INT
);
INSERT INTO Employees_details (emp_id, emp_name, emp_age, address, income) VALUES
(101, 'Peter', 20, 'Newyork', 200000),
(102, 'Mark', 32, 'California', 300000),
(103, 'Donald', 40, 'Arizona', 1000000),
(104, 'Obama', 35, 'Florida', 5000000),
(105, 'Linkoln', 38, 'Georgia', 250000),
(106, 'Kane', 45, 'Alaska', 450000),
(107, 'Adam', 52, 'California', 5000000),
(108, 'Mac', 33, 'Florida', 350000);

CREATE TABLE working_hours (
    emp_id INT,
    emp_name VARCHAR(50),
    working_date DATE,
    working_hours INT,
    entry_id INT AUTO_INCREMENT PRIMARY KEY,
    FOREIGN KEY (emp_id) REFERENCES Employees_details(emp_id)
);
INSERT INTO working_hours (emp_id, emp_name, working_date, working_hours) VALUES
(101, 'Ajeet','2015-01-24',12),
(102, 'Ayan','2015-01-24',10),
(103, 'Milan','2015-01-24',9),
(104, 'Ruchi','2015-01-24',6),
(101, 'Ajeet','2015-01-25',12),
(102, 'Ayan','2015-01-25',10),
(104, 'Ruchi','2015-01-25',6),
(103, 'Milan','2015-01-25',9),
(101, 'Ajeet','2015-01-26',12),
(103, 'Milan','2015-01-26',9);



SELECT emp_name FROM working_hours WHERE working_date='2015-01-25' AND working_hours>8;
SELECT emp_name FROM working_hours WHERE working_date='2015-01-25' OR working_hours<10;
SELECT emp_name FROM working_hours WHERE (working_date='2015-01-25' OR working_hours<10) AND emp_id=101; 
SELECT DISTINCT(emp_name) FROM working_hours WHERE working_date='2015-01-25';
SELECT * FROM working_hours ORDER BY working_hours ASC;
SELECT * FROM working_hours ORDER BY working_date ;
SELECT emp_name, SUM(working_hours) AS total_hours FROM working_hours GROUP BY emp_name ORDER BY total_hours DESC;
SELECT emp_name, COUNT(working_date) AS work_days FROM working_hours GROUP BY emp_name ORDER BY work_days ASC;
SELECT emp_name, MIN(working_hours) AS min_hours FROM working_hours GROUP BY emp_name ORDER BY min_hours ASC;
SELECT emp_name, MAX(working_hours) AS max_hours FROM working_hours GROUP BY emp_name ORDER BY max_hours DESC;
SELECT emp_name, AVG(working_hours) AS avg_hours FROM working_hours GROUP BY emp_name ORDER BY avg_hours ASC;



SELECT * FROM Employees_details ;
SELECT * FROM Employees_details WHERE emp_id = 1;
SELECT * FROM working_hours;