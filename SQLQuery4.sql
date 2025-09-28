 CREATE TABLE Employee (
      emp_id INT PRIMARY KEY,
      emp_name VARCHAR(50),
      emp_dept VARCHAR(50),
      salary DECIMAL(10, 2)
  );

    INSERT INTO Employee (emp_id, emp_name, emp_dept, salary) VALUES
  (1, 'Alice', 'HR', 25000.00),
  (2, 'Bob','Accountant', 18000.00),
  (3, 'Charlie', 'Marketer', 30000.00),
  (4, 'David', 'Marketer', 22000.00),
  (5, 'Eve', 'Developer', 28000.00),
  (6, 'Frank', 'Clerk', 19000.00),
  (7, 'Grace', 'Accountant', 26000.00),
  (8, 'Helen', 'Developer', 32000.00);

  SELECT * FROM Employee;
  SELECT * FROM Employee WHERE salary > 20000 ;
  UPDATE Employee SET salary= 25000 WHERE emp_name='David';


