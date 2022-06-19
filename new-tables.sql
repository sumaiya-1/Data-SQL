CREATE DATABASE HOSPITAL_MGMT;

USE HOSPITAL_MGMT;

CREATE TABLE NURSE
(
	NURSE_NAME VARCHAR(100),
	nurse_id INT PRIMARY KEY,
	NURSE_LEVEL NUMERIC,
	IS_STUDENT_TRAINEE_INVOLVED BOOLEAN
);

CREATE TABLE DOCTOR
(
	DOCTOR_NAME VARCHAR(100),
    DOCTOR_ID INT,
	DOCTOR_SPECIAL VARCHAR(255),
	PRIMARY KEY (DOCTOR_ID)
);

CREATE TABLE WARDS (
	bed_no VARCHAR(20) NOT NULL PRIMARY KEY,
	room_type VARCHAR(20) NOT NULL,
	ward_name VARCHAR(20) NOT NULL,
    ward_type VARCHAR(20) NOT NULL
);

CREATE TABLE INPATIENT(
	patient_name VARCHAR(50) NOT NULL,
	patient_id INT NOT NULL,
	gender VARCHAR(20) NOT NULL,
	address VARCHAR(50) NOT NULL,
	bed_no VARCHAR(20) NOT NULL,
	admission_date DATE NOT NULL,
	discharge_date DATE,
	lab_no INT,
	doctor_id INT,
    nurse_id INT,
	disease VARCHAR(50) NOT NULL,
    PRIMARY KEY (patient_id),
    FOREIGN KEY (nurse_id) REFERENCES NURSE(nurse_id),
    FOREIGN KEY (doctor_id) REFERENCES DOCTOR(doctor_id),
    FOREIGN KEY (bed_no) REFERENCES WARDS(bed_no)
);


CREATE TABLE BILL(
	BILL_NO INT NOT NULL,
	patient_id INT PRIMARY KEY, 
	PATIENT_TYPE VARCHAR(10),
	DOCTOR_CHARGE INT NOT NULL,
	MEDICINE_CHARGE INT NOT NULL,
	ROOM_CHARGE INT NOT NULL,
	OPERATION_CHARGE INT,
	NUMBER_OF_DAYS INT,
	NURSING_CHARGE INT,
	HEALTH_CARD VARCHAR(50),
	LAB_CHARGE INT,
	BILL INT,
	FOREIGN KEY (patient_id) REFERENCES INPATIENT(patient_id)
);


CREATE TABLE LAB
(
	LAB_NO INT NOT NULL,
	PATIENT_ID INT NOT NULL,
	WEIGHT INT NOT NULL,
	DOCTOR_ID INT,
	LAB_DATE DATETIME NOT NULL,
	CATEGORY VARCHAR(50) NOT NULL,
	PATIENT_TYPE VARCHAR(50) NOT NULL,
	AMOUNT INT NOT NULL,
	PRIMARY KEY (LAB_NO),
    FOREIGN KEY (PATIENT_ID) REFERENCES INPATIENT(PATIENT_ID)
);

CREATE TABLE APPOINTMENTS (
	appointment_id INT NOT NULL PRIMARY KEY,
    appointment_type VARCHAR(50) NOT NULL,
    appointment_date DATE NOT NULL,
    appointment_time TIME NOT NULL,
    appointment_duration VARCHAR(50),
    doctor_id INT,
    FOREIGN KEY (doctor_id) REFERENCES DOCTOR(doctor_id)
);

CREATE TABLE OUTPATIENTS(
	PATIENT_ID INT, 
	appointment_id INT NOT NULL,
	LAB_NO INT,
    FOREIGN KEY (appointment_id) REFERENCES APPOINTMENTS(appointment_id)
);

alter table lab drop column CATEGORY;
alter table lab drop column PATIENT_TYPE;
alter table lab drop column AMOUNT;


DROP DATABASE HOSPITAL_MGMT;


