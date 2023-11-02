CREATE DATABASE Market;

USE Market;

CREATE TABLE Product (
    Id INT PRIMARY KEY, 
	Name VARCHAR(50) NOT NULL,
	Price DECIMAL(10,2) NOT NULL
);

ALTER TABLE Product ADD Brand VARCHAR(50);

 INSERT INTO Product (Id, Name, Price, Brand) VALUES 
    (1, 'ASUS TUF ', 2000, 'ASUS'),
    (2, 'Galaxy A73', 1200, 'Samsung'),
    (3, 'Playstation 5',900, 'Sony'),
    (4, 'Nintendo SW', 500, 'Nintendo'),
    (5, 'Iphone X', 599, 'Apple'),
    (6, 'JBL Flip 5', 140, 'JBL'),
    (7, 'One Plus 9 PRO', 600, 'One plus'),
    (8, 'Samsung Buds', 110, 'Samsung '),
    (9, 'MacBook', 699, 'Apple'),
    (10, 'RTX 4060', 400, 'Nvidia');

SELECT * FROM Product WHERE Price < (SELECT AVG(Price) FROM Product);

SELECT * FROM Product WHERE Price> 500;

SELECT CONCAT(Name,' - ', Brand) AS ProductInfo FROM Product WHERE LEN(Brand) > 5;