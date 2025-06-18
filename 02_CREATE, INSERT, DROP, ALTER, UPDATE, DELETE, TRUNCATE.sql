-- EXAMPLE 1
CREATE TABLE Books(
BookID INT NOT NULL, 
Title VARCHAR(50) NOT NULL, 
Author VARCHAR(50) NOT NULL, 
Price FLOAT NOT NULL, 
PublishedYear INT NOT NULL, 
CONSTRAINT b_keys PRIMARY KEY(BookID),
);

SELECT *
FROM Books 

INSERT INTO Books (BookID, Title, Author, Price, PublishedYear)
VALUES
	(1, 'The Alchemists', 'Paulo Coelho', 299.99, 1993),
	(2, 'Harry Potter and the sorcerer"s stone', 'J.K Rowling', 499.50, 1997),
	(3, 'Atomic Habits', 'James clear', 350.75, 2018),
	(4, 'The power of Habit', 'Charles Duhigg', 425.00, 2012),
	(5, 'Rich dad poor dad', 'Robert kiyosaki', 275.25, 1997);

/* ALTER TABLE
Change the table Books to:
a) Add a new column Publisher (varchar(50))
b) Modify the Price column to DECIMAL(6,2) instead of DECIMAL(5,2)
c) Drop the column PublishedYear */

ALTER TABLE Books 
ADD Publisher VARCHAR(50); 

ALTER TABLE Books
ALTER COLUMN Price DECIMAL(6,2); -- Modify is not used here, you can write alter and then modify column

ALTER TABLE Books
DROP COLUMN PublishedYear;

/* UPDATE
In the Books table:
Update the price of a book where BookID = 2 to 599.99.
Set the Publisher of all books written by 'J.K. Rowling' to 'Bloomsbury'.*/
UPDATE Books
SET Price = 599.99
WHERE BookID = 2

UPDATE Books 
SET Author = 'Bloomsbury'
WHERE BookID = 2

SELECT *
FROM Books 

/*DELETE
In the Books table:
Delete the book where the Price is less than 200.*/
DELETE FROM Books
WHERE Price < 200

SELECT *
FROM Books

/*TRUNCATE
Remove all records from the Books table but keep its structure intact using TRUNCATE.*/
TRUNCATE TABLE Books

SELECT * 
FROM Books 

/* DROP TABLE BOOKS */
DROP TABLE Books

--EXAMPLE 2
CREATE TABLE Employees(
EmpID INT NOT NULL, 
FirstName VARCHAR(50) NOT NULL, 
LastName VARCHAR(50) NOT NULL, 
Department VARCHAR(50) NOT NULL, 
Salary DECIMAL(8,2),
JoinDate DATE
CONSTRAINT e_keys PRIMARY KEY(EmpID)
);
SELECT *
FROM Employees

INSERT INTO Employees(EmpID, FirstName, LastName, Department, Salary, JoinDate)
VALUES
	(101, 'Ankit', 'Sharma', 'IT', 55000.00, '2018-06-15'),
	(102, 'Priya', 'Verma', 'HR', 45000.00, '2014-09-10'),
	(103, 'Rahul', 'Mehra', 'Finance', 60000.00, '2016-03-12'),
	(104, 'Neha', 'Singh', 'IT', 52000.00,   '2020-01-25'),
	(105, 'Amit', 'Joshi', 'HR', 47000.00, '2013-11-05')

SELECT *
FROM Employees

/*UPDATE Practice
Increase the Salary by 5000 for employees who work in the 'HR' department.*/
UPDATE 

