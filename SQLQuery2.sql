USE student1;
  INSERT INTO student1 (StudentName, City, PostalCode, Country)
  VALUES ('Ali','Dubai','58063','UAE'),
         ('Akshay','Kochi','695311','India'),
         ('Chan','Xining','S-896 23','China');
  INSERT INTO student1 (StudentName, City, PostalCode, Country)
  VALUES ('Alfred','Berlin','12209','Germany'),
  ('Kiran','Delhi','05021','India'),
  ('Chong','Wuhan','S-958 22','China'),
  ('Suresh','Mumbai','05023','India'),
  ('Anna','London','WA1 1DP','UK'),
  ('Ching','Beijing','S-958 22','China'),
  ('Aneesh','Delhi','05021','India');
SELECT * FROM student1;
SELECT StudentName, City FROM student1;
SELECT * FROM student1 WHERE Country = 'China';

