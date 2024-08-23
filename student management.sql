create database students;
use students;
show databases;
show tables;

CREATE TABLE student(
 id INT AUTO_INCREMENT PRIMARY KEY,
 name VARCHAR(250) NOT NULL,
 date_of_birth DATE NOT NULL,
 email VARCHAR(250) UNIQUE NOT NULL
);
CREATE TABLE course(
course_id INT AUTO_INCREMENT PRIMARY KEY,
course_name VARCHAR(250) NOT NULL,
credits INT NOT NULL
);

CREATE TABLE enrollment(
enroll_id INT AUTO_INCREMENT PRIMARY KEY,
enroll_date DATE NOT NULL,
FOREIGN KEY (id) REFERENCES student(id),
FOREIGN KEY (course_id) REFERENCES course(course_id)
);











