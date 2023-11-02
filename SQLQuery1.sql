Create Database SOCAR

USE SOCAR

CREATE TABLE Employee (
  Id INT PRIMARY KEY,
  Name VARCHAR(50),
  SurName VARCHAR(50),
  Position VARCHAR(50),
  Salary INT
);


INSERT INTO Employee VALUES
(1, 'Elcan', 'Shalanov', 'IT Manager', 5000),
(2, 'Nicat', 'Azizov', 'Tor Hacker', 6000),
(3, 'Elnur', 'Gafarzada', 'Beatmaker', 3000),
(4, 'Elnur', 'Baghisov', 'Game Developer', 4500),
(5, 'Elnur', 'Rzayev', 'Designer', 3500);


Select  AVG(Salary) FROM Employee
SELECT MAX(Salary) - MIN(Salary) AS Maas 
FROM Employee;
