USE EmployeeExamDB;

SELECT name
FROM employee
WHERE leave > 5 AND department = 'sales';

SELECT COUNT(*) AS operations_count
FROM employee
WHERE department = 'operations';

SELECT department, COUNT(*) AS employee_count
FROM employee
GROUP BY department;

SELECT department
FROM employee
GROUP BY department
HAVING SUM(leave) > 10;

SELECT e.name
FROM employee e
JOIN exam ex ON e.id = ex.employee_id
WHERE ex.exam_status = 'pass';

SELECT name
FROM employee
WHERE id NOT IN (SELECT employee_id FROM exam);

SELECT 
    department,
    SUM(leave) AS total_leave
FROM employee
GROUP BY department
HAVING SUM(leave) > 10;



