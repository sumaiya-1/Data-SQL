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
    patient_id INT NOT NULL,
    FOREIGN KEY (patient_id) REFERENCES INPATIENT(patient_id)
);

DROP DATABASE HOSPITAL_MGMT