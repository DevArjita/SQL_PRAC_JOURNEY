-- UPDATE – One Row Only: Practice Questions
/*EmployeeID	FirstName	LastName	Department	Salary	Hiredate
101	Ankit	Sharma	IT	55000.00	2018-06-15
102	Priya	Verma	HR	45000.00	2014-09-10
103	Rahul	Mehra	Finance	60000.00	2016-03-12
104	Neha	Singh	IT	52000.00	2020-01-25
105	Amit	Joshi	HR	47000.00	2013-11-05*/


/*Q1:
Update the Salary of the employee whose EmployeeID is 104 to ₹62000.*/
UPDATE Employees 
SET Salary = 62000
WHERE EmployeeID = 104

/*Q2: Change the Department of the employee named ‘Rahul Mehra’ to ‘Marketing’.*/
UPDATE Employees 
SET Department = 'Marketing' 
WHERE FirstName = 'Rahul' AND LastName = 'Mehra'

/*Q3: Set the Salary of the employee named ‘Amit Joshi’ to ₹50000.*/
UPDATE Employees 
SET Salary = 50000
WHERE EmployeeID = 105

SELECT *
FROM Employees

/*Q4: Update the FirstName of the employee whose EmployeeID is 101 to ‘Ankit Kumar’.*/
UPDATE Employees 
SET FirstName = 'Ankit' 
WHERE EmployeeID = 101
 
UPDATE Employees
SET LastName = 'Kumar'
WHERE EmployeeID = 101

/* Q5: Change the HireDate of ‘Priya Verma’ to ‘2015-05-20’. */
UPDATE Employees 
SET HireDate = '2015-05-20'
WHERE FirstName = 'Priya' AND EmployeeID = 102

-- UPDATE – Multiple rows: Practice Questions
/* Q1: Change the Department to 'Operations' and Salary to ₹58000 for the employee whose EmployeeID is 102.*/
UPDATE Employees 
SET Department = 'Operations', Salary = 58000
WHERE EmployeeID = 102

SELECT *
FROM Employees

/*Q2: Update the FirstName to 'Neha Kumari' and Salary to ₹63000 for the employee whose LastName is 'Singh'.*/
UPDATE Employees 
SET FirstName = 'Neha', LastName = 'Kumari', Salary = 63000
WHERE LastName = 'Singh'

/*Q3:
Change both Department to 'Business Development' and JoiningDate to '2019-12-01' for the employee named ‘Rahul Mehra’.*/
UPDATE Employees 
SET Department = 'Business Development', Hiredate = '2019-12-01'
WHERE EmployeeID = 103

SELECT *
FROM Employees 

/*Q4: Set Salary to ₹55000 and JoiningDate to '2017-03-15' for the employee with EmployeeID 105.*/
UPDATE Employees 
SET Salary = 55000, Hiredate = '2017-03-15'
WHERE EmployeeID = 105

/*Q5: Change FirstName to 'Priyanka' and Department to 'Training' for the employee whose current name is ‘Priya Verma’.*/
UPDATE Employees 
SET FirstName = 'Priyanka', Department = 'Training'
WHERE FirstName = 'Priya'

--UPDATE – Multiple Columns Practice Questions
/* Q1:
For the employee whose EmployeeID is 103, change:
Department to ‘Accounts’
Salary to ₹68000 */
UPDATE Employees 
SET Department = 'Accounts', Salary = 68000
WHERE EmployeeID = 103

/* Q2:
For ‘Neha Singh’, change:
FirstName to ‘Neha Kumari’
Salary to ₹64000 */ 

UPDATE Employees 
SET Salary = 64000
WHERE FirstName = 'Neha'

/*Q3:
For the employee whose EmployeeID is 105, update:
Department to ‘Finance’
JoiningDate to ‘2016-07-01’ */
UPDATE Employees 
SET Department = 'Finance', Hiredate = '2016-07-01'
WHERE EmployeeID = 105

/* Q4:
For the employee ‘Amit Joshi’, set:
Salary to ₹49000
Department to ‘Operations’*/
UPDATE Employees 
SET Salary = 49000, Department = 'Operations'
WHERE FirstName = 'Amit'

/* Q5:
For the employee with EmployeeID = 101, update:
FirstName to ‘Ankit Kumar’
Department to ‘HR’
Salary to ₹60000 */
UPDATE Employees
SET FirstName = 'Ankit', LastName = 'Kumar', Department = 'HR', Salary = 60000
WHERE EmployeeID = 101