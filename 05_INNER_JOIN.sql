CREATE TABLE Patients(
Patient_id INT NOT NULL, 
Name VARCHAR(50) NOT NULL, 
Age INT,
Gender VARCHAR(15),
Hemoglobin FLOAT,
);

SELECT *
FROM Patients 

INSERT INTO Patients(Patient_id, Name, Age, Gender, Hemoglobin)
VALUES 
	(1, 'Aarti', 25, 'Female', 10.5),
	(2, 'Rahul', 42, 'Male', 13.2),
	(3, 'Meena', 33, 'Female', 9.8),
	(4, 'Sameer', 28, 'Male', 14.1),
	(5, 'Rani', 60, 'Female', 8.9)

CREATE TABLE Anemia_Levels (
Patient_id INT NOT NULL, 
Anemia_level VARCHAR(20),
Iron_supplement VARCHAR(5)
);

SELECT *
FROM Anemia_Levels 

INSERT INTO Anemia_levels (Patient_id, Anemia_level, Iron_supplement)
VALUES 
	(1, 'Mild', 'Yes'),
	(2, 'Moderate', 'Yes'),
	(3, 'Severe', 'Yes')

SELECT *
FROM Patients 

SELECT *
FROM Anemia_levels 

-- Show all patients with low hemoglobin--
SELECT *
FROM Patients 
WHERE Hemoglobin < 12

-- Show all patients in Anemia_Levels table--
SELECT *
FROM Anemia_levels 

-- List the names and hemoglobin levels of all female patients. --
SELECT 
	Name,
	Hemoglobin
FROM Patients 

--Show patients who have a hemoglobin level greater than 13.-- 
SELECT 
	Name,
	Hemoglobin
FROM Patients 
WHERE Hemoglobin > 13

--Display all records from the Anemia_Levels table where the anemia level is 'Severe'.--
SELECT *
FROM Anemia_Levels 

--List names and hemoglobin levels of all female patients.--
SELECT 
	Name,
	Hemoglobin,
	Gender
FROM Patients 
WHERE Gender = 'Female'

--Find patients whose hemoglobin is below 10.--
SELECT *
FROM Patients 
WHERE Hemoglobin < 10

--Show all patient names with age above 30.--
SELECT *
FROM Patients 
WHERE Age > 30

-- List all patient IDs from the Anemia_Levels table.--
-- Find all patients who are older than 40 and have a hemoglobin level above 12.--
SELECT *
FROM Patients 
WHERE Age > 40 AND Hemoglobin > 12

--INNER JOIN--
--List patient name, hemoglobin, and their anemia level.--
SELECT 
	Name,
	Hemoglobin,
	Anemia_Level
FROM Patients AS P
INNER JOIN Anemia_Levels AS A
ON P.Patient_id = A.Patient_id;


SELECT *
FROM Patients 

SELECT *
FROM Anemia_Levels 

-- Show names of patients with anemia and whether they are taking iron supplements.--
SELECT 
	Name,
	Anemia_level,
	Iron_supplement 
FROM Patients AS P
INNER JOIN Anemia_levels AS A
ON P.Patient_id = A.Patient_id

-- Find patients with anemia who are younger than 35.-- 
SELECT *
FROM Patients AS P
INNER JOIN Anemia_levels AS A
ON P.Patient_id = A.Patient_id
WHERE Age < 35

--Display patient names and anemia levels for those with hemoglobin below 11.--
SELECT *
FROM Patients AS P
INNER JOIN Anemia_levels AS A
ON P.Patient_id = A.Patient_id 
WHERE Hemoglobin < 11

--List all female patients who are in the Anemia_Levels table--
SELECT *
FROM Patients AS P
INNER JOIN Anemia_levels AS A
ON P.Patient_id = A.Patient_id
WHERE Gender = 'Female'

-- List patient ID, name, and iron supplement status for all patients who have anemia.--
SELECT 
	Name,
	Iron_supplement 
FROM Patients AS P
INNER JOIN Anemia_levels AS A
ON P.Patient_ID = A.Patient_ID;

--Show names and anemia levels of patients whose hemoglobin is below 11.--
SELECT *
FROM Patients AS P
INNER JOIN Anemia_levels AS A
ON P.Patient_id = A.Patient_id 
WHERE Hemoglobin < 11

--Find the names of all patients who are taking iron supplements.--
SELECT 
	Name
FROM Patients AS P
INNER JOIN Anemia_levels AS A
ON P.Patient_id = A.Patient_id 
WHERE Iron_supplement = 'Yes'

--List patient names, their age, anemia level, and hemoglobin — only if they have anemia.--
SELECT 
	Name, 
	Age, 
	Anemia_level, 
	Hemoglobin
FROM Patients AS P
INNER JOIN Anemia_levels AS A
ON P.Patient_id = A.Patient_id 

--Display all female patients who have an anemia level marked as 'Moderate' or 'Severe'.--
SELECT *
FROM Patients AS P
INNER JOIN Anemia_levels AS A
ON P.Patient_id = A.Patient_id 
WHERE Gender = 'Female'
 AND Anemia_level IN ('Moderate', 'Severe');

 -- Find patients aged between 25 and 40 who are diagnosed with any level of anemia.-- 
 SELECT *
 FROM Patients AS P
 INNER JOIN Anemia_levels AS A
 ON P.Patient_id = A.Patient_id 
 WHERE Age >= 25 AND Age <= 40
	  
/* Show the name, anemia level, and supplement status for patients who are older than
30 and have hemoglobin less than 11.*/
SELECT 
	Name, 
	Anemia_level, 
	Iron_supplement,
	Age,
	Hemoglobin
FROM Patients AS P
INNER JOIN Anemia_levels AS A 
ON P.Patient_id = A.Patient_id 
WHERE Age > 30 AND Hemoglobin < 11 

-- Find the average hemoglobin of patients who are on iron supplements--
SELECT 
	AVG(Hemoglobin) AS avg_hemo
FROM Patients AS P
INNER JOIN Anemia_levels AS A--
ON P.Patient_id = A.Patient_id 

-- Show patients who have ‘Mild’ anemia and are below the age of 35.-- 
SELECT *
FROM Patients AS P
INNER JOIN Anemia_levels AS A
ON P.Patient_id = A.Patient_id 
WHERE Anemia_level = 'Mild' AND Age < 35


