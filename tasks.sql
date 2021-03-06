-- tasks
USE hospital_mgmt;

SET SQL_mode='';

-- TASK 1 - 7
-- Using any type of the joins create a view that combines multiple tables in a logical way

   -- Checking which doctors are working on which ward in case you need to contact them by ward phone

CREATE VIEW dr_ward AS
SELECT DISTINCT
		dr.doctor_id, 
		dr.doctor_name, 
        dr.doctor_special AS speciality,
		w.ward_name
FROM DOCTOR dr
JOIN INPATIENT i ON dr.doctor_id = i.doctor_id
JOIN WARDS w ON i.bed_no = w.bed_no;


SELECT * 
FROM dr_ward 
ORDER BY ward_name;

   -- Finding the which nurses are working with surgical patients and if they have a 
   -- student nurse working with them so student nurse can watch a surgery happen
   
CREATE VIEW sur_stu AS
SELECT 
		i.disease, 
        n.nurse_name,
        n.is_student_trainee_involved AS student,
        w.bed_no,
        w.ward_name,
        i.admission_date
FROM NURSE n
LEFT JOIN INPATIENT i ON i.nurse_id = n.nurse_id
LEFT JOIN WARDS w ON i.bed_no = w.bed_no;

SELECT * 
FROM sur_stu
WHERE student = TRUE
		AND ward_name LIKE 'N%' 
			AND admission_date = CURRENT_DATE();

DROP VIEW sur_stu;

   -- Showing the patients within specified weight range and ward

CREATE VIEW illnesses AS
SELECT 
	i.patient_name,
    i.patient_id,
    i.disease,
    l.weight,
    w.bed_no,
    w.ward_name
FROM LAB l
LEFT JOIN INPATIENT i ON l.patient_id = i.patient_id
LEFT JOIN WARDS w ON w.bed_no = i.bed_no;

SELECT *
FROM illnesses
WHERE weight >= 70 AND weight < 90 AND ward_name LIKE 'N%'
ORDER BY weight;



-- TASK 2
-- In your database, create a stored function that can be applied to a query in your DB

  -- Checking which patients have been discharged so bed availability can be checked

DELIMITER //
CREATE FUNCTION discharged(discharge_date DATE)
RETURNS VARCHAR(50)
DETERMINISTIC 
BEGIN
	DECLARE dis_today VARCHAR(50);
    IF discharge_date = CURRENT_DATE() THEN SET dis_today = CONCAT('Patient discharged today', ', ', CURRENT_DATE);
    END IF;
    RETURN (dis_today);
END//
DELIMITER ;

SELECT patient_id, bed_no, discharged(discharge_date) FROM INPATIENT;

-- if a patient is recieving health benefits, they will recieve a 50% discount on the total bill price 
DELIMITER //
CREATE FUNCTION discount(bill DECIMAL(6,2))
RETURNS DECIMAL(6,2)
DETERMINISTIC 
BEGIN
	Declare output_amount DECIMAL(6,2);
    SET output_amount = bill - 50 / 100 * bill;
	RETURN output_amount;
END//
DELIMITER ;

SELECT bill_no, patient_id,bill, discount(bill)
FROM bill;



-- TASK 3
-- Prepare an example query with a subquery to demonstrate how to extract data from your DB for analysis
  
  -- Checking which patients have Outpatient appointments on a specific date 
  
SELECT patient_id, patient_name, doctor_id
FROM INPATIENT 
WHERE lab_no IN 
	(SELECT lab_no 
	FROM OUTPATIENTS 
	WHERE appointment_id IN 
		(SELECT appointment_id
		FROM APPOINTMENTS
        WHERE appointment_date LIKE '%28')
);


-- TASK 4
-- In your database, create a stored procedure and demonstrate how it runs

  -- Checking how many patients have been admitted on the current date
  
DELIMITER //
CREATE PROCEDURE pt_add(today_date DATE)
BEGIN
	SELECT 
		i.patient_name,
        i.patient_id, 
        i.bed_no, 
        i.lab_no, 
        i.disease
    FROM
		INPATIENT i
    WHERE 
		i.admission_date = today_date;
END//
DELIMITER ;

CALL pt_add(CURRENT_DATE());

-- Procedure which calculates the sum of the bill and outputs the total
DELIMITER //
CREATE PROCEDURE total_bill(no_bill INT)
BEGIN
	SELECT DISTINCT
		bill_no,
        doctor_charge, 
        medicine_charge, 
        room_charge, 
        operation_charge, 
        nursing_charge, 
        lab_charge,
        COALESCE(doctor_charge,0) + COALESCE(medicine_charge,0) + COALESCE(room_charge,0) + COALESCE(operation_charge,0) + 
        COALESCE(nursing_charge,0) + COALESCE(lab_charge,0) AS "Total"
	FROM Bill
	WHERE bill_no = no_bill;
END//
DELIMITER ;

CALL total_bill(202259);

INSERT INTO WARDS(bed_no, room_type, ward_name, ward_type)
VALUES ('S-23', 'bed', 'asdfg', 'asdfg');

INSERT INTO INPATIENT(patient_id, patient_name, gender, address, bed_no, admission_date, discharge_date, disease) 
VALUES (12356, '2345', 'M', 'sgd ef', 'S-23', '2022-06-10', '2022-06-13', 'sdfgh');

INSERT INTO BILL(
		bill_no, 
		patient_id, 
		doctor_charge, 
        medicine_charge, 
        room_charge, 
        operation_charge, 
        nursing_charge, 
        lab_charge)
VALUES (202259, 12356, 30, 100, 50, 100, 27, 30);


-- TASK 5
-- In your database, create a trigger and demonstrate how it runs
alter table inpatient
add column length_of_stay int;

DELIMITER //
CREATE TRIGGER number_of_days
BEFORE INSERT ON INPATIENT
FOR EACH ROW 
BEGIN
	SET new.length_of_stay = DATEDIFF(new.discharge_date, new.admission_date);
END//
DELIMITER ;

DROP TRIGGER number_of_days;

INSERT INTO WARDS(bed_no, room_type, ward_name, ward_type)
VALUES ('S-25', 'bed', 'asdfg', 'asdfg');

INSERT INTO INPATIENT(patient_id, patient_name, gender, address, bed_no, admission_date, discharge_date, disease) 
VALUES (12353, '2325', 'M', 'sgd ef', 'S-25', '2022-06-16', '2022-06-19', 'sdfgh');





-- TASK 6
-- In your database, create an event and demonstrate how it runs
DELIMITER //
CREATE EVENT del_old
ON SCHEDULE 
EVERY 1 DAY
DO BEGIN
	DELETE FROM INPATIENT 
    WHERE discharge_date = (CURRENT_DATE() - 3);
END//
DELIMITER ;

DROP EVENT del_old;

SELECT patient_id, discharge_date
FROM INPATIENT
WHERE discharge_date = (CURRENT_DATE() - 3);

INSERT INTO WARDS(bed_no, room_type, ward_name, ward_type)
VALUES ('S-23', 'bed', 'asdfg', 'asdfg');

INSERT INTO INPATIENT(patient_id, patient_name, gender, address, bed_no, admission_date, discharge_date, disease) 
VALUES (12356, '2345', 'M', 'sgd ef', 'S-23', '2022-06-10', '2022-06-13', 'sdfgh');

 
 
-- TASK 8
-- Prepare an example query with group by and having to demonstrate how to extract data 
-- from your DB for analysis
  
  -- Which speciality has 4 or more doctors
  
SELECT COUNT(doctor_id), doctor_special
FROM DOCTOR
GROUP BY doctor_special
HAVING COUNT(doctor_id) >= 4
ORDER BY COUNT(doctor_id);

  -- How many nurses in the hospital at different levels
SELECT COUNT(nurse_id), nurse_level
FROM NURSE
GROUP BY nurse_level
ORDER BY COUNT(nurse_id);

-- How many patients weight the same

SELECT COUNT(patient_id), weight
FROM LAB
GROUP BY weight
HAVING COUNT(patient_id) >= 4;
 
 
 
 
-- Inserting number_of_days value using inpatient table data
-- create a trigger for this, so when you insert dischared date into inpatient table, it will calculate length of stay
INSERT INTO INPATIENT(patient_id, patient_name, gender, address, bed_no, admission_date, discharge_date, disease) 
VALUES (12356, '2345', 'M', 'sgd ef', 'S-23', '2022-06-10', '2022-06-13', 'sdfgh');

INSERT INTO BILL(bill_no, patient_id, DOCTOR_CHARGE, MEDICINE_CHARGE, ROOM_CHARGE)
VALUES (202259, 12356, 30, 100, 50);


INSERT INTO BILL(bill_no, number_of_days)
SELECT DATEDIFF(discharge_date, admission_date)
FROM INPATIENT
WHERE patient_id = 12356;












