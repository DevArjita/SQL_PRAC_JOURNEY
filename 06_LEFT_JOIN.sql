-- List all patients and their anemia levels (if available). --
SELECT *
FROM Patients AS P
LEFT JOIN Anemia_Levels AS A 
ON P.Patient_id = A.Patient_id

-- Show the names of patients who do not have any anemia data. (Hint: WHERE anemia_level IS NULL)--
SELECT *
FROM Patients AS P
LEFT JOIN Anemia_Levels AS A
ON P.Patient_id = A.Patient_id 
WHERE Anemia_level IS NULL

-- Display name, age, and iron supplement status for all patients, including those without anemia--
SELECT 
	Name,
	Age,
	Iron_supplement
FROM Patients AS P
LEFT JOIN Anemia_Levels AS A
ON P.Patient_id = A.Patient_id

-- List patients whose hemoglobin is below 11, even if they are not in the Anemia_Levels table.--
SELECT *
FROM Patients AS P
LEFT JOIN Anemia_Levels AS A
ON P.Patient_id = A.Patient_id 
WHERE Hemoglobin < 11

--  Show all patients and use 'No Data' when anemia level is missing. (Hint: use COALESCE())--
SELECT *,
COALESCE(Anemia_level, 'No Data') AS Anemia_status
FROM Patients AS P
LEFT JOIN Anemia_Levels AS A
ON P.Patient_id = A.Patient_id

--  Find all male patients and show whether they have been given iron supplements. --
SELECT *
FROM Patients AS P
LEFT JOIN Anemia_Levels AS A
ON P.Patient_id = A.Patient_id 
WHERE Gender = 'Male'

-- Display the patient name, anemia level, and iron supplement info for all patients above 40.--
SELECT 
	Name, 
	Anemia_level,
	Iron_supplement,
	Age 
FROM Patients AS P
LEFT JOIN Anemia_Levels AS A
ON P.Patient_id = A.Patient_id
WHERE Age > 40

-- Show patients along with anemia level, only for those with hemoglobin greater than 9.--
SELECT *
FROM Patients AS P
LEFT JOIN Anemia_Levels AS A
ON P.Patient_id = A.Patient_id
WHERE Hemoglobin > 9

-- Find out which patients are missing from the Anemia_Levels table and have a hemoglobin < 12--
SELECT *
FROM Patients AS P
LEFT JOIN Anemia_Levels AS A
ON P.Patient_id = A.Patient_id 
WHERE Hemoglobin < 12

--  Show names of all patients and display "Recorded" if anemia level exists, otherwise "Missing".--
ALTER TABLE Anemia_Levels
ADD Anemia_status VARCHAR(15);
SELECT *
FROM Patients 
SELECT *
FROM Anemia_Levels 

-- Show the names of all patients along with their anemia level (if any).-- 
SELECT *
FROM Patients AS P
LEFT JOIN Anemia_Levels AS A
ON P.Patient_id = A.Patient_id 

--List all patients and their iron supplement status, even if no anemia record is available.--
SELECT 
	Name, 
	Iron_supplement 
FROM Patients AS P
LEFT JOIN Anemia_Levels AS A 
ON P.Patient_id = A.Patient_id 

-- show names and ages of all patients along with anemia level, if they have one.--
SELECT 
	Name,
	Age,
	Anemia_level 
FROM Patients AS P
LEFT JOIN Anemia_Levels AS A
ON P.Patient_id = A.Patient_id 

--  Display the names of patients older than 40 and their anemia level (if present).--
SELECT *
FROM Patients AS P
LEFT JOIN Anemia_Levels AS A
ON P.Patient_id = A.Patient_id
WHERE Age > 40

-- List all patients and their hemoglobin levels, with anemia level if it exists.--
SELECT 
	Name, 
	Hemoglobin,
	Anemia_level
FROM Patients AS P
LEFT JOIN Anemia_Levels AS A 
ON P.Patient_id = A.Patient_id

--  Show the patient ID and name from the Patients table, and iron_supplement from the Anemia_Levels table.--
SELECT 
	Name, 
	Iron_supplement 
FROM Patients AS P
LEFT JOIN Anemia_Levels AS A
ON P.Patient_id = A.Patient_id 

-- Display names of all patients, including those who are not in the Anemia_Levels table.--
SELECT *
FROM Patients AS P
LEFT JOIN Anemia_Levels AS A 
ON P.Patient_id = A.Patient_id 

-- Show names of patients who have no matching anemia data (Hint: WHERE anemia_level IS NULL).--
SELECT *
FROM Patients AS P
LEFT JOIN Anemia_Levels AS A
ON P.Patient_id = A.Patient_id 
WHERE Anemia_level IS NULL

-- Display the patient name, hemoglobin, and anemia level only for patients whose hemoglobin is below 12.--
SELECT 
	Name, 
	Hemoglobin, 
	Anemia_level
FROM Patients AS P
LEFT JOIN Anemia_Levels AS A
ON P.Patient_id = A.Patient_id
WHERE Hemoglobin < 12

-- List all patients and anemia level, and order the result by age in descending order-- 
SELECT 
	Name, 
	Anemia_level,
	Age
FROM Patients AS P
LEFT JOIN Anemia_Levels AS A
ON P.Patient_id = A.Patient_id 
ORDER BY Age DESC