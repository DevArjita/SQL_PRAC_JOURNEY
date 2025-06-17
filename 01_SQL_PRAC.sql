CREATE TABLE Hospital_appointment_system(
AppointmentID INT NOT NULL, 
PatientName VARCHAR(50) NOT NULL, 
DoctorName VARCHAR(50) NOT NULL, 
Department VARCHAR(15) NOT NULL, 
AppointmentDate DATE NOT NULL, 
CONSTRAINT Hospital_keys PRIMARY KEY(AppointmentID)
);

select *
from Hospital_appointment_system

INSERT INTO Hospital_appointment_system(AppointmentID, PatientName, DoctorName, Department, AppointmentDate)
VALUES 
	(1, 'Riya Sharma', 'Dr.Mehta', 'Cardiology', '2025-06-20'),
	(2, 'Amit Verma', 'Dr.kapoor', 'Neurology', '2025-06-21'),
	(3, 'Sneha Gupta', 'Dr.Iyer', 'Orthopedics', '2025-06-22'),
	(4, 'Rahul Joshi', 'Dr. Reddy', 'Dermatology', '2025-06-23'),
	(5, 'Pooja Singh', 'Dr.khan', 'Pediatrics', '2025-06-24')

SELECT *
FROM Hospital_appointment_system

-- Create Online Food Delivery orders table
--OrderID (integer), 
--CustomerName (varchar), 
--RestaurantName (varchar),
--FoodItem (varchar),
--Quantity (integer),
--Price (float),
--Delivered (True/False — use varchar or char like 'TRUE', 'FALSE')

Create table Online_Food_Delivery(
OrderID INT NOT NULL, 
CustomerName VARCHAR(50) NOT NULL, 
RestaurantName VARCHAR(50) NOT NULL, 
FoodItem VARCHAR(50) NOT NULL, 
Quantity INT NOT NULL, 
Price FLOAT NOT NULL,
Delivered BIT 
CONSTRAINT food_keys PRIMARY KEY(OrderID)
);

SELECT *
FROM Online_Food_Delivery

INSERT INTO Online_Food_Delivery(OrderID, CustomerName, RestaurantName, FoodItem, Quantity, Price, Delivered)
VALUES
	(1, 'Anjali Mehra', 'Dominos', 'Veg-Pizza', 2, 499.50, 'TRUE'),
	(2, 'Rahul Sharma', 'KFC', 'Chicken Bucket', 1, 699.00, 'FALSE'),
	(3, 'Priya Singh', 'McDonalds', 'McAloo Tikki', 3, 300.00, 'TRUE'),
	(4, 'Amit Joshi', 'Burger King', 'Whopper', 2, 450.75, 'TRUE'),
	(5, 'Neha Verma', 'Subway', 'Veggie_Delight', 1, 250.00, 'FALSE');

/* college Student Details
Question:
Create a table to store student details:
StudentID (integer)
FirstName (varchar)
LastName (varchar)
Age (integer)
Gender (varchar)
Course (varchar)*/
CREATE TABLE college_student_details(
StudentID INT NOT NULL, 
FirstName VARCHAR(50) NOT NULL, 
LastName VARCHAR(50) NOT NULL, 
Age INT NOT NULL, 
Gender VARCHAR(15) NOT NULL, 
Course VARCHAR(50) NOT NULL,
);
SELECT *
FROM college_student_details

INSERT INTO college_student_details(StudentID, FirstName, LastName, Age, Gender, Course)
VALUES 
	(1, 'Rohan', 'Verma', 20, 'Male', 'BSC_Computer_Science'),				
	(2, 'Sneha', 'Patil', 21, 'Female', 'B.com'),
	(3, 'Amit', 'Sharma', 22, 'Male', 'B.A English'),
	(4, 'Pooja', 'Singh', 19, 'Female', 'B.Sc Mathematics'),
	(5, 'Vikram', 'Joshi', 23, 'Male', 'B.Tech Mechanical')

