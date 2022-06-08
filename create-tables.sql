CREATE DATABASE HOSPITAL_MGMT;

CREATE TABLE HOSPITAL_MGMT.WARDS(
    WARD_NAME VARCHAR(100) NOT NULL PRIMARY KEY,
    DEPARTMENT_NAME VARCHAR(100) NOT NULL,
    BED_CAPACITY INT,
    AVAILABLE_BEDS INT,
    NURSE_CAPACITY INT
);

CREATE TABLE HOSPITAL_MGMT.PATIENT(
    PATIENT_NAME VARCHAR(100) NOT NULL, 
    AGE INT NOT NULL, 
    PATIENT_ID NUMERIC NOT NULL, 
    NURSE_ID INT, -- ID's will be an INT
    DOCTOR_ID INT, -- ID's will be an INT
    WARD_NAME VARCHAR(100) NOT NULL, FOREIGN KEY (WARD_NAME) REFERENCES HOSPITAL_MGMT.WARDS(WARD_NAME),
    BED_NUMBER INT, -- bed and cubicle id are same thing, so will just keep bed id in here
    AMOUNT_OF_MED_REQUIRED NUMERIC,
    PRIMARY KEY (PATIENT_ID)
);
    
CREATE TABLE HOSPITAL_MGMT.NURSE(
    NURSE_NAME VARCHAR(100),
    NURSE_ID INT, -- ID will be an INT
    NURSE_LEVEL NUMERIC,
    IS_STUDENT_TRAINEE_INVOLVED BOOLEAN,
    WARD_NAME VARCHAR(100) NOT NULL, FOREIGN KEY (WARD_NAME) REFERENCES HOSPITAL_MGMT.WARDS(WARD_NAME),
    NURSE_SPECIALITY VARCHAR(100),
    PATIENT_ID NUMERIC,
    PRIMARY KEY (NURSE_ID),
    FOREIGN KEY (PATIENT_ID)
    REFERENCES HOSPITAL_MGMT.PATIENT(PATIENT_ID)
);

CREATE TABLE HOSPITAL_MGMT.DOCTOR (
    DOCTOR_NAME VARCHAR(100),
    PATIENT_ID NUMERIC NOT NULL,
    DOCTOR_SPECIAL VARCHAR(255),
    DOCTOR_ID INT,
    WARD_NAME VARCHAR(100) NOT NULL, FOREIGN KEY (WARD_NAME) REFERENCES HOSPITAL_MGMT.WARDS(WARD_NAME),
    PRIMARY KEY (DOCTOR_ID),
    FOREIGN KEY (PATIENT_ID)
    REFERENCES HOSPITAL_MGMT.PATIENT(PATIENT_ID)
);


CREATE TABLE HOSPITAL_MGMT.MEDICATIONS(
	PATIENT_ID NUMERIC NOT NULL,
    MED_ID INT NOT NULL,
    MED_NAME VARCHAR(100) NOT NULL, 
    MED_AVAILABLE BOOLEAN,
    MED_AMOUNT INT,
    MED_EXPIRY DATE,
    MED_PRICE DECIMAL,
	FOREIGN KEY (PATIENT_ID) 
    REFERENCES HOSPITAL_MGMT.PATIENT(PATIENT_ID)
);

CREATE TABLE HOSPITAL_MGMT.PRICE(
    PROCEDURE_ID INT NOT NULL,
    PATIENT_ID NUMERIC NOT NULL,
    PROCDEURE_NAME VARCHAR(50) NOT NULL,
    PROCEDURE_PRICE DECIMAL,
    FOREIGN KEY (PATIENT_ID) 
    REFERENCES HOSPITAL_MGMT.PATIENT(PATIENT_ID)
);