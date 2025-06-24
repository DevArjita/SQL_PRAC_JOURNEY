/*| EmployeeID | FirstName | LastName | Department | Salary   | JoiningDate |
| ---------- | --------- | -------- | ---------- | -------- | ----------- |
| 101        | Ankit     | Sharma   | IT         | 55000.00 | 2018-06-15  |
| 102        | Priya     | Verma    | HR         | 45000.00 | 2014-09-10  |
| 103        | Rahul     | Mehra    | Finance    | 60000.00 | 2016-03-12  |
| 104        | Neha      | Singh    | IT         | 52000.00 | 2020-01-25  |
| 105        | Amit      | Joshi    | HR         | 47000.00 | 2013-11-05  |*/

SELECT *
FROM Employees

/*ALTER table - ADD COLUMN QUESTIONS */
/* 1)  Add a new column Email to store employee email addresses. */
ALTER TABLE Employees
ADD Email VARCHAR(50) NOT NULL 

/* 2) Add a new column named PhoneNumber to the Employees table to store the employee's contact number (use datatype VARCHAR(15)).*/
ALTER TABLE Employees
ADD PhoneNumber VARCHAR(15) NOT NULL DEFAULT 'UNKNOWN';

/* 3) Add a column named Gender to store the gender of the employee (VARCHAR(10)). */
ALTER TABLE Employees 
ADD Gender VARCHAR(15) NOT NULL DEFAULT 'UNKNOWN'

/*Add a column named DateOfBirth to the Employees table to store the date of birth of employees (use datatype DATE).*/
ALTER TABLE Employees
ADD DateOfBirth DATE;

/*Add a column named IsActive to indicate if the employee is currently working in the company (BIT type with a default value of 1).*/
ALTER TABLE Employees 
ADD IsActive BIT NOT NULL DEFAULT 1;

/*Add a column named Designation to store the designation/title of the employee (VARCHAR(50)).*/
ALTER TABLE Employees 
ADD Designation VARCHAR(50);

/*Add a column named Bonus to store the yearly bonus amount (use datatype FLOAT).*/
ALTER TABLE Employees 
ADD Bonus FLOAT 

/* Add a column named Address to store the residential address of the employee (VARCHAR(200)).*/
ALTER TABLE Employees
ADD Address VARCHAR(200) NOT NULL DEFAULT 'UNKNOWN';

/*Add a column named MaritalStatus to indicate the marital status of employees (VARCHAR(15)).*/
ALTER TABLE Employees
ADD MaritalStatus VARCHAR(15) NOT NULL DEFAULT 'UNKNOWN';

/*Add a column named LastPromotionDate to record the date of the employee's last promotion (DATE type).*/
ALTER TABLE Employees
ADD LastPromotionDate DATE 

/*ALTER table - MODIFY COLUMN QUESTIONS */
/*Q.1) Change the data type of the Salary column to FLOAT.*/
ALTER TABLE Employees
ALTER COLUMN Salary FLOAT NOT NULL;

SELECT COLUMN_NAME, DATA_TYPE, CHARACTER_MAXIMUM_LENGTH, IS_NULLABLE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'Employees';

/*Q.2) Change the PhoneNumber column to allow NULL values. */
ALTER TABLE Employees 
ALTER COLUMN PhoneNumber VARCHAR(15) NULL;

/*Q.3) Modify the FirstName column to increase its size to VARCHAR(100).*/
ALTER TABLE Employees 
ALTER COLUMN FirstName VARCHAR(100) NOT NULL;

/*Q4: Modify the Department column to be NOT NULL */
ALTER TABLE Employees
ALTER COLUMN Department VARCHAR(50)NOT NULL;

/*Q5:Change the data type of the DateOfBirth column to DATETIME.*/
ALTER TABLE Employees
ALTER COLUMN DateOfBirth DATETIME NULL;

/*Q6:Reduce the size of the LastName column to VARCHAR(30).*/
ALTER TABLE Employees
ALTER COLUMN LastName VARCHAR(30)NOT NULL;

/*Change the Bonus column (assume you added it earlier) from FLOAT to DECIMAL(10,2).*/
ALTER TABLE Employees
ALTER COLUMN Bonus DEC(10,2) NULL;

/* Modify the IsActive column (assume it's BIT) to be NOT NULL. */
ALTER TABLE Employees
ALTER COLUMN IsActive BIT NOT NULL;

/*ALTER table - DROP COLUMN QUESTIONS */
/*Q1: Drop the PhoneNumber column from the Employees table.*/

sp_help Employees;

ALTER TABLE Employees
DROP CONSTRAINT DF__Employees__Phone__47FBA9D6  

ALTER TABLE Employees
DROP COLUMN PhoneNumber;

/* Q2:Drop the Bonus column (assume you added this column earlier).*/
ALTER TABLE Employees
DROP COLUMN Bonus;

/*Q3:
Drop the IsActive column (assume you added this BIT column earlier to check if the employee is active).*/
sp_help Employees

ALTER TABLE Employees
DROP CONSTRAINT DF__Employees__IsAct__4EA8A765

ALTER TABLE Employees
DROP COLUMN IsActive 

/* Q4:Drop the DateOfBirth column from the Employees table.*/
ALTER TABLE Employees
DROP COLUMN DateOfBirth

/*Q5:You mistakenly added a column called Address. Now, drop this column from the Employees table.*/
sp_help Employees 
ALTER TABLE Employees
DROP CONSTRAINT DF__Employees__Addre__4F9CCB9E 

ALTER TABLE Employees
DROP COLUMN Address

/*Q6: Drop the LastPromotionDate column (assume this was added to store promotion dates).*/
ALTER TABLE Employees 
DROP COLUMN LastPromotionDate

/*Q7:
Drop two columns MaritalStatus (assume these were added for storing personal info).*/
ALTER TABLE Employees 
DROP CONSTRAINT DF__Employees__Marit__5090EFD7 

ALTER TABLE Employees
DROP COLUMN MaritalStatus

