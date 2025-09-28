CREATE DATABASE EmployeeExamDB;
USE EmployeeExamDB;

CREATE TABLE employee (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    department VARCHAR(50),
    leave INT
);


CREATE TABLE exam (
    id INT PRIMARY KEY,
    employee_id INT FOREIGN KEY REFERENCES employee(id),
    exam_status VARCHAR(10)
);

INSERT INTO employee (id, name, department, leave) VALUES
(1, 'raju', 'sales', 1),
(2, 'sangeetha', 'sales', 3),
(3, 'vinay', 'operations', 8),
(4, 'abey', 'packing', 2),
(5, 'thomas', 'packing', 1),
(6, 'muneer', 'operations', 7),
(7, 'aparna', 'sales', 3),
(8, 'abid', 'operations', 9),
(9, 'fathima', 'sales', 11),
(10, 'varghese', 'operations', 14);

INSERT INTO exam (id, employee_id, exam_status) VALUES
(1, 2, 'pass'),
(2, 5, 'fail'),
(3, 1, 'fail'),
(4, 8, 'pass'),
(5, 3, 'pass'),
(6, 1, 'pass'),
(7, 6, 'fail'),
(8, 9, 'pass'),
(9, 10, 'pass');

SELECT * FROM employee;

SELECT * FROM exam;

