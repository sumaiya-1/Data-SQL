CREATE TABLE HOSPITAL_MGMT.PATIENT(
    PATIENT_NAME VARCHAR(100) NOT NULL, 
    AGE INT NOT NULL, 
    PATIENT_ID NUMERIC NOT NULL, 
    NURSE_ID INT, -- ID's will be an INT
    DOCTOR_ID INT, -- ID's will be an INT
    WARD_NAME VARCHAR(100),
    BED_NUMBER INT, -- bed and cubicle id are same thing, so will just keep bed id in here
    MED_ID INT,
    AMOUNT_OF_MED_REQUIRED NUMERIC,
    PRIMARY KEY (PATIENT_ID)
    );
