CREATE DATABASE student1;
USE student1;
CREATE TABLE student1 ( StudentID INT PRIMARY KEY IDENTITY(1,1),     
StudentName NVARCHAR(50), City NVARCHAR(50), PostalCode VARCHAR(10), 
Country VARCHAR(15) );
INSERT INTO student1 VALUES ('William','Tokyo','4006','Japan');