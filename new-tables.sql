CREATE DATABASE HOSPITAL_MGMT;

USE HOSPITAL_MGMT;

CREATE TABLE INPATIENT(
	patient_name VARCHAR(50) NOT NULL,
	patient_id INT NOT NULL PRIMARY KEY,
	gender VARCHAR(20) NOT NULL,
	address VARCHAR(50) NOT NULL,
	bed_no VARCHAR(20) NOT NULL,
	admission_date DATE NOT NULL,
	discharge_date DATE,
	lab_no INT, -- add foreign key
	doctor_id INT, -- add foreign key
	disease VARCHAR(50) NOT NULL
);

CREATE TABLE ROOM (
	bed_no VARCHAR(20) NOT NULL PRIMARY KEY,
	room_type VARCHAR(20) NOT NULL,
	ward_name VARCHAR(20) NOT NULL,
    ward_type VARCHAR(20) NOT NULL, 
	patient_id INT, 
	FOREIGN KEY (patient_id) REFERENCES INPATIENT(patient_id)
);

CREATE TABLE APPOINTMENTS (
	appointment_id INT NOT NULL PRIMARY KEY,
    appointment_type VARCHAR(50) NOT NULL,
    appointment_date DATE NOT NULL,
    appointment_time TIME NOT NULL,
    appointment_duration VARCHAR(50),
    doctor_id INT NOT NULL, -- add foreign key 
);

DROP DATABASE HOSPITAL_MGMT

CREATE TABLE BILL(
BILL_NO INT(50) NOT NULL,
PATIENT_ID INT(5), 
PATIENT_TYPE VARCHAR(10),
DOCTOR_CHARGE INT NOT NULL,
MEDICINE_CHARGE INT NOT NULL,
ROOM_CHARGE INT NOT NULL,
OPERATION_CHARGE INT,
NUMBER_OF_DAYS INT,
NURSING_CHARGE INT,
ADVANCE INT,
HEALTH_CARD VARCHAR(50),
LAB_CHARGE INT,
BILL INT,
PRIMARY KEY (BILL_NO),
FOREIGN KEY (PATIENT_ID) REFERENCES INPATIENT(PATIENT_ID)
);

CREATE TABLE ADMINISTRATOR(
A_ID INT(5),
A_NAME VARCHAR(20) NOT NULL,
GENDER VARCHAR(10) NOT NULL,
PRIMARY KEY (A_ID)
);

-- added appoinment id to this table - you can use the appointment id to find the patients which will have outpatients appointments
CREATE TABLE OUTPATIENTS(
PATIENT_ID INT(5),
appointment_id INT NOT NULL,
LAB_NO INT(5), -- add foreign key
PRIMARY KEY (PATIENT_ID),
FOREIGN KEY (appointment_id) REFERENCES APPOINTMENTS(appointment_id)
);