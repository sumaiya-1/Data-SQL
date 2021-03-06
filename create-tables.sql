CREATE DATABASE HOSPITAL_MGMT;

CREATE TABLE HOSPITAL_MGMT.DEPARTMENTS(
	DEPARTMENT_ID VARCHAR(50) NOT NULL,
    DEPARTMENT_NAME VARCHAR(100) NOT NULL,
    BED_CAPACITY INT,
    AVAILABLE_BEDS INT,
    VISITORS_ALLOWED VARCHAR(20),
    PRIMARY KEY (DEPARTMENT_ID)
);

CREATE TABLE HOSPITAL_MGMT.MEDICATIONS(
    MED_ID INT,
    MED_TYPE VARCHAR(100) NOT NULL, 
    MED_PRICE DECIMAL NOT NULL,
    AMOUNT_AVAILABLE INT NOT NULL,
    AMOUNT_TO_ORDER INT,
    PRIMARY KEY(MED_ID)
);

CREATE TABLE HOSPITAL_MGMT.PROCEDURES(
    PROCEDURE_ID INT,
    PROCDEURE_NAME VARCHAR(50) NOT NULL,
    PROCEDURE_PRICE DECIMAL,
    PRIMARY KEY (PROCEDURE_ID)
);

CREATE TABLE HOSPITAL_MGMT.NURSE(
    NURSE_NAME VARCHAR(100),
    NURSE_ID INT, -- ID will be an INT
    NURSE_LEVEL NUMERIC,
    IS_STUDENT_TRAINEE_INVOLVED BOOLEAN,
    DEPARTMENT_ID VARCHAR(50) NOT NULL,
    NURSE_SPECIALITY VARCHAR(100),
    PRIMARY KEY (NURSE_ID),
    FOREIGN KEY (DEPARTMENT_ID) REFERENCES HOSPITAL_MGMT.DEPARTMENTS(DEPARTMENT_ID)
    );

CREATE TABLE HOSPITAL_MGMT.PATIENT(
    PATIENT_NAME VARCHAR(100) NOT NULL, 
    PATIENT_ID NUMERIC NOT NULL, 
    DEPARTMENT_ID VARCHAR(50) NOT NULL,
    NURSE_ID INT NOT NULL,
    BED_NUMBER INT, -- bed and cubicle id are same thing, so will just keep bed id in here
    ILLNESS VARCHAR(100) NOT NULL,
    MED_ID INT,
    PROCEDURE_ID INT,
    NURSE_ID INT NOT NULL,
    MEDICAL_INSURANCE VARCHAR(50) NOT NULL, -- Yes or NO
    PRIMARY KEY (PATIENT_ID),
    FOREIGN KEY(PROCEDURE_ID) REFERENCES HOSPITAL_MGMT.PROCEDURES(PROCEDURE_ID),
	FOREIGN KEY(MED_ID) REFERENCES HOSPITAL_MGMT.MEDICATIONS(MED_ID),
    FOREIGN KEY(NURSE_ID) REFERENCES HOSPITAL_MGMT.NURSE(NURSE_ID)
);
    

CREATE TABLE HOSPITAL_MGMT.DOCTOR(
    DOCTOR_NAME VARCHAR(100),
    DOCTOR_ID INT,
    DOCTOR_SPECIAL VARCHAR(255),
    DEPARTMENT_ID VARCHAR(50) NOT NULL,
    DOCTOR_RANK VARCHAR(50) NOT NULL,
    PRIMARY KEY (DOCTOR_ID),
    FOREIGN KEY (DEPARTMENT_ID) REFERENCES HOSPITAL_MGMT.DEPARTMENTS(DEPARTMENT_ID)
);



DROP DATABASE HOSPITAL_MGMT
