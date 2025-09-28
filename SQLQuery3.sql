USE student1;
SELECT DISTINCT Country FROM student1;
SELECT COUNT(DISTINCT Country) AS UniqueCountries FROM student1;
SELECT * FROM student1 WHERE Country='India' AND City='Delhi';
SELECT * FROM student1 WHERE City='Mumbai' OR City='Delhi';
SELECT * FROM student1 WHERE NOT Country='China';
SELECT * FROM student1 WHERE Country='India' AND (City='Delhi' OR City='Mumbai');
SELECT * FROM student1 WHERE NOT Country='UK' AND NOT Country='China';
SELECT * FROM student1 ORDER BY StudentName ASC;
SELECT * FROM student1 ORDER BY City DESC;
SELECT * FROM student1 ORDER BY Country ASC, City ASC;
SELECT * FROM student1 ORDER BY Country, City;
SELECT * FROM student1 ORDER BY Country DESC, City ASC;
SELECT * FROM student1 WHERE Country = 'India' ORDER BY StudentName ASC;
UPDATE student1 SET StudentName = 'Alan', City= 'Munich' WHERE StudentID = 1;
UPDATE student1 SET City='Beijing' WHERE Country='China';
SELECT * from student1;
DELETE FROM student1 WHERE StudentID = 10;
DELETE FROM student1 WHERE StudentName = 'Aneesh';

 CREATE TABLE Employees (
      emp_id INT PRIMARY KEY,
      emp_name VARCHAR(50),
      salary DECIMAL(10, 2)
  );

  INSERT INTO Employees (emp_id, emp_name, salary) VALUES
  (1, 'Alice', 25000.00),
  (2, 'Bob', 18000.00),
  (3, 'Charlie', 30000.00),
  (4, 'David', 22000.00),
  (5, 'Eve', 28000.00),
  (6, 'Frank', 19000.00),
  (7, 'Grace', 26000.00),
  (8, 'Helen', 32000.00);

  SELECT * from Employees;

  DELETE TOP (2)
  FROM Employees
  WHERE salary >= 20000;

  DELETE TOP (25) PERCENT
  FROM Employees
  WHERE salary > 20000;