CREATE DATABASE SCHOOL;
USE SCHOOL;
 CREATE TABLE Stud (
      stud_id INT PRIMARY KEY,
      reg_id INT,
      stud_name VARCHAR(50),
      course VARCHAR(50),
      place VARCHAR(50),
      phn_no INT
  );

ALTER TABLE Stud
ALTER COLUMN phn_no VARCHAR(15);


    INSERT INTO Stud (stud_id, reg_id, stud_name, course, place, phn_no) VALUES
  (1, 101,  'Alice', 'Java',  'Trivandrum', 7345678900),
  (2, 102,  'Bob','C++',  'Chennai', 8245678902),
  (3, 103,  'Charlie', 'C#',  'Mysore', 6789531674),
  (4, 104, 'Grace', 'Python',  'Kottayam', 9876543210),
  (5, 105, 'Helen', 'HTML',  'Hyderabad', 8796547901);

select * from Stud;

 CREATE TABLE Bday (
      sl_no INT PRIMARY KEY,
      per_id INT,
      per_name VARCHAR(50),
      dob VARCHAR(50)
  );

      INSERT INTO Bday(sl_no, per_id, per_name, dob) VALUES
  (1, 11,  'Alice', 1990-05-12),
  (2, 12,  'Bob', 1989-12-25),
  (3, 13,  'Mary', 1994-03-10),
  (4, 14, 'Grace', 2000-07-20),
  (5, 15, 'Steve', 1995-03-03);

  UPDATE Bday SET dob = '1990-05-12' WHERE sl_no = 1;
UPDATE Bday SET dob = '1989-12-25' WHERE sl_no = 2;
UPDATE Bday SET dob = '1994-03-10' WHERE sl_no = 3;
UPDATE Bday SET dob = '2000-07-20' WHERE sl_no = 4;
UPDATE Bday SET dob = '1995-03-03' WHERE sl_no = 5;

  select * from Bday;

  SELECT Stud.stud_name, Bday.dob
  FROM Stud
  INNER JOIN Bday
  ON Stud.stud_name = Bday.per_name;


  SELECT Stud.stud_name, Bday.dob
  FROM Stud
  LEFT JOIN Bday
  ON Stud.stud_name = Bday.per_name;


  SELECT Stud.stud_name, Bday.dob
  FROM Stud
  RIGHT JOIN Bday
  ON Stud.stud_name = Bday.per_name;

  USE SCHOOL;

  SELECT Stud.stud_name, Bday.dob
  FROM Stud
  FULL JOIN Bday
  ON Stud.stud_name = Bday.per_name;

  SELECT Stud.stud_name, Bday.dob
  FROM Stud
  CROSS JOIN Bday;