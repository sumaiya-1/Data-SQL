-- INSERTING DATA

-- USE this otherwise database will throw errors
SET FOREIGN_KEY_CHECKS=0;

-- Inserting data into NURSE table
insert into NURSE(nurse_name,nurse_id,nurse_level)
VALUES 
('Phoebe Carroll',	334, 5),
('Kiera Clark',	335, 5),
('Amelia George',	336, 5),
('Ella Parry',	337, 5),
('Aaliyah Gardiner',	338, 5),
('Isaac Fowler',	339, 5),
('William Fletcher',	340, 5),
('Joel Nurmela',	341, 5),
('Auli Karhu',	342, 5),
('Paavo Larnia',	343, 5),
('Melissa Brownlock',	344, 5),
('Lily Bunce',	345, 5),
('Cinthia Garza',	346, 6),
('Nurit Casares',	347, 6),
('Iris Lundberg',	348, 6),
('Samira Andersson',	349, 6),
('Elis Lund',	350, 6),
('Christian Vance',	351, 6),
('Lara Coungeau',	352, 6),
('Milla Kwok',	353, 6),
('Kayla Langton',	354, 5),
('Isabel Steinfeld',	355, 5),
('Tyler Bayles',	356, 5);

 
 update NURSE set IS_STUDENT_TRAINEE_INVOLVED=false where nurse_id in (334, 335, 336, 337, 338, 339, 340, 341, 342, 343, 344);
 update nurse set is_student_trainee_involved=true where nurse_id in (345, 346, 347, 348, 349, 350, 351, 352, 353, 354, 355, 356);

-- Inserting data into OUTPATIENTS table

INSERT INTO OUTPATIENTS(PATIENT_ID,APPOINTMENT_ID,LAB_NO)
VALUES('124','1','02'),
('134','2','12'),
('147','3','25'),
('141','4','19'),
('132','5','10'),
('152','6','30'),
('130','7','08'),
('126','8','04'),
('171','9','49'),
('165','10','43'),
('155','11','33'),
('146','12','24'),
('162','13','40');

-- Inserting data into INPATIENTS table
INSERT INTO 
INPATIENT (patient_name, patient_id, gender, address, bed_no, admission_date, discharge_date, lab_no, doctor_id, nurse_id, disease)
VALUES
('Leo Higgins',	123,	'M',	'30 DoughtyStreet, Stamford',	'R-1',	'2022-06-18',	'2022-06-21',	01,	1264,	334,	'COPD'),
('Zak Pearson',	124,	'M',	'27 BakewellClose, Northampton',	'C-1',	'2022-06-21',	NULL,	02,	7463,	335,	'Acute coronary syndrome'),
('Corey Weston',	125,	'M',	'11 CanberraGardens, WestBridgford',	'G-1',	'2022-06-18',	'2022-06-20',	03,	4633,	336,	'Celiac disease'),
('Muhsin Aswad',	126,	'M',	'11 ChelwoodRoad, Cambridge',	'H-1',	'2022-06-17',	'2022-06-20',	04,	8548,	337,	'Sickle cell'),
('Eva Barnett',	127,	'F',	'22 TernGardens, Chatteris',	'R-2',	'2022-06-15',	'2022-06-21',	05,	7842,	338,	'Pneumonia'),
('Jade Shepherd',	128,	'F',	'32 AbingtonPark, GreatAbington',	'S-1',	'2022-06-20',	NULL,	06,	8574,	339,	'Appendectomy'),
('Poppy Curtis',	129,	'F',	'8 PadmoorLane, Upton',	'R-3',	'2022-06-16',	'2022-06-21',	07,	7038,	340,	'COPD'),
('Lucy Parkes',	130,	'F',	'8 PembrokeAvenue, Eynesbury',	'S-2',	'2022-06-10',	'2022-06-21',	08,	3664,	341,	'Esophageal Surgery'),
('Namir Kanaan',	131,	'M',	'2 AllenRoad, Northampton',	'R-4',	'2022-06-15',	'2022-06-19',	09,	1264,	342,	'Emphysema'),
('Jordan Rogers',	132,	'M',	'32 PodmoreWay, Broughton',	'S-3',	'2022-06-17',	'2022-06-20',	10,	7247,	343,	'Cholecystectomy'),
('Jacob Lawson',	133,	'M',	'7 PeregrineRoad, Hucknall',	'G-2',	'2022-06-20',	'2022-06-21',	11,	9486,	345,	'Chron disease'),
('Dominic Manning',	134,	'M',	'2 KilvingtonHouse, Kilvington',	'H-2',	'2022-06-17',	NULL,	12,	8548,	346,	'Sickle cell'),
('Finley George',	135,	'M',	'16 BlakeRoad, Corby',	'D-1',	'2022-06-16',	'2022-06-19',	13,	4326,	347,	'Psoriasis'),
('Noah Butler',	136,	'M',	'14 PrimroseAvenue, Farndon',	'R-5',	'2022-06-13',	'2022-06-20',	14,	6204,	348,	'Pneumonia'),
('Maddison Franklin',	137,	'F',	'27 WillowBarn, Caldecote',	'D-2',	'2022-06-12',	'2022-06-21',	15,	6643,	349,	'Severe Eczema'),
('Samantha Nash',	138,	'F',	'24 HopeStreet, Beeston',	'S-4',	'2022-06-13',	'2022-06-16',	16,	9968,	350,	'Cholecystectomy'),
('Freya Connor',	139,	'F',	'20 LinleyClose, Collingham',	'G-3',	'2022-06-12',	'2022-06-16',	17,	4633,	351,	'Celiac disease'),
('Sophia Knight',	140,	'F',	'29 RylandGardens, Welton',	'D-3',	'2022-06-19',	'2022-06-21',	18,	4326,	352,	'Cellulitis'),
('Muna Safar',	141,	'F',	'27 WashingtonDrive, Stapleford',	'R-6',	'2022-06-17',	NULL,	19,	6204,	353,	'COPD'),
('Shimah Antar',	142,	'F',	'7 BreachLane, Wilburton',	'D-4',	'2022-06-15',	'2022-06-18',	20,	4326,	354,	'Psoriasis'),
('Felicien Moquin',	143,	'F',	'3 RoseGrove, Keyworth',	'D-5',	'2022-06-13',	'2022-06-17',	21,	4326,	355,	'Psoriasis'),
('Nanna Larocque',	144,	'F',	'20 MossDrive, Bramcote',	'S-5',	'2022-06-21',	'2022-06-21',	22,	8837,	350,	'Tonsillectomy'),
('Clarice Marcil',	145,	'F',	'16 LeasAvenue, Pleasley',	'C-2',	'2022-06-16',	'2022-06-20',	23,	5376,	335,	'Acute coronary syndrome'),
('Orlene Poissonnier',	146,	'F',	'30 OldPostOffice, Twywel',	'D-6',	'2022-06-21',	NULL,	24,	6643,	355,	'Severe Eczema'),
('Gabriele Koehler',	147,	'F',	'5 WatersideDrive, Grantham',	'H-3',	'2022-06-08',	'2022-06-15',	25,	1930,	346,	'Lymphoma'),
('Felix Kuhn',	148,	'M',	'26 AshfieldAvenue, Beeston',	'R-7',	'2022-06-15',	'2022-06-19',	26,	7038,	353,	'Emphysema'),
('Christian Huber',	149,	'M',	'12 DucksNest, Lutton',	'G-4',	'2022-06-20',	'2022-06-21',	27,	9486,	351,	'Chron disease'),
('Alicia Reilly',	150,	'F',	'3 TheGranary, OldHurst',	'S-6',	'2022-06-20',	'2022-06-20',	28,	8837,	343,	'Tonsillectomy'),
('Lexi Milne',	151,	'F',	'2 SalamanderClose, Carlton',	'C-3',	'2022-06-17',	'2022-06-20',	29,	5376,	356,	'Acute coronary syndrome'),
('Violet Gordon',	152,	'F',	'20 HallClose, Bourn',	'D-7',	'2022-06-18',	NULL,	30,	4005,	347,	'Severe skin infection'),
('Allan Scott',	153,	'M',	'29 CransleyStreet, Broughton',	'D-8',	'2022-06-15',	'2022-06-19',	31,	4005,	354,	'Cellulitis'),
('Kyle Bruce',	154,	'M',	'11 WoodhallClose, Mansfield',	'H-4',	'2022-06-12',	'2022-06-18',	32,	3526,	337,	'Lymphoma'),
('Jorja Fraser',	155,	'F',	'15 ParkersLane, Mansfield',	'R-8',	'2022-06-14',	'2022-06-19',	33,	7038,	340,	'Emphysema'),
('Orla Stevenson',	156,	'F',	'34 StewartWay, Annesley',	'S-7',	'2022-06-21',	'2022-06-21',	34,	8837,	341,	'Tonsillectomy'),
('Mathew Williamson',	157,	'M',	'29 ScargillClose, Newthorpe',	'G-5',	'2022-06-14',	'2022-06-18',	35,	9486,	351,	'Acute pancreatitis'),
('Albertino Angelo',	158,	'M',	'8 QueensSquare, Eastwood',	'R-9',	'2022-06-11',	'2022-06-17',	36,	7842,	342,	'Pneumonia'),
('Erick Araujo',	159,	'M',	'27 CooksClose, Ashton',	'D-9',	'2022-06-12',	'2022-06-18',	37,	6643,	349,	'Severe Eczema'),
('Daniel Sousa',	160,	'M',	'8 SwallowDrive, Bingham',	'H-5',	'2022-06-16',	'2022-06-19',	38,	1930,	346,	'Chronic anaemia'),
('Beatrice Barros',	161,	'F',	'15 CanonsAshbyRoad, Woodford',	'C-4',	'2022-06-12',	'2022-06-20',	39,	2636,	356,	'Stroke'),
('Niamh Field',	162,	'F',	'21 OrchardClose, Balsham',	'D-10',	'2022-06-18',	NULL,	40,	4005,	352,	'Severe skin infection'),
('Phoebe Kelly',	163,	'F',	'18 LangmereRoad, Rushall',	'D-11',	'2022-06-13',	'2022-06-18',	41,	6643,	355,	'Severe Eczema'),
('Louise Parker',	164,	'F',	'30 BirchwoodDrive, Ravenshead',	'D-12',	'2022-06-14',	'2022-06-19',	42,	4005,	354,	'Cellulitis'),
('Maisie Richardson',	165,	'F',	'20 TerringtonClose, Brackley',	'H-6',	'2022-06-12',	'2022-06-18',	43,	3526,	337,	'Mastoytosis'),
('Sarah Hill',	166,	'F',	'20 JerseyGardens, Mansfield',	'S-8',	'2022-06-12',	'2022-06-17',	44,	7247,	350,	'Cholecystectomy'),
('Laura Law',	167,	'F',	'23 PodmoreWay, Broughton',	'G-6',	'2022-06-13',	'2022-06-15',	45,	4633,	351,	'Acute pancreatitis'),
('Johan Lax',	168,	'M',	'30 SeatonCrescent, Corby',	'H-7',	'2022-06-13',	'2022-06-16',	46,	1930,	337,	'Chronic anaemia'),
('Toini Hakola',	169,	'M',	'30 ThornClose, Kettering',	'C-5',	'2022-06-16',	NULL,	47,	2636,	356,	'Stroke'),
('Kimmo Paarma',	170,	'M',	'19 WakeClose, Wellingborough',	'R-10',	'2022-06-17',	NULL,	48,	7842,	342,	'COPD'),
('Hanne Lange',	171,	'M',	'26 DoncasterRoad, Langold',	'G-7',	'2022-06-17',	'2022-06-21',	49,	9486,	336,	'Chron disease');


-- Inserting data into ADMIN table
INSERT INTO ADMINISTRATOR(A_ID,A_NAME,GENDER)
VALUES(01,'EMILY','FEMALE'),
(02,'MICHEAL','MALE'),
(03,'CHARLOTTE','FEMALE'),
(04,'ELLIOT','MALE'),
(05,'MELANIE','FEMALE'),
(06,'JOHN','MALE');

-- Inserting data into WARDS table
INSERT INTO 
WARDS (bed_no, room_type, ward_name, ward_type, patient_id, a_id)
VALUES
('S-1',	'Bay',	'Nightingale Ward',	'General surgery',	128, 02),
('S-2',	'Bay',	'Nightingale Ward',	'General surgery',	130, 02),
('S-3',	'Bay',	'Nightingale Ward',	'General surgery',	132, 02),
('S-4',	'Bay',	'Nightingale Ward',	'General surgery',	138, 02),
('S-5',	'Bay',	'Nightingale Ward',	'General surgery',	144, 02),
('S-6',	'Bay',	'Nightingale Ward',	'General surgery',	150, 02),
('S-7',	'Bay',	'Nightingale Ward',	'General surgery',	156, 02),
('S-8',	'Bay',	'Nightingale Ward',	'General surgery',	166, 02),
('R-1',	'Cubicle',	'Fox Ward',	'Respiratory',	123, 03),
('R-2',	'Bay',	'Fox Ward',	'Respiratory',	127, 03),
('R-3',	'Bay',	'Fox Ward',	'Respiratory',	129, 03),
('R-4',	'Bay',	'Fox Ward',	'Respiratory',	131, 03),
('R-5',	'Bay',	'Fox Ward',	'Respiratory',	136, 03),
('R-6',	'Cubicle',	'Fox Ward',	'Respiratory',	141, 03),
('R-7',	'Cubicle',	'Fox Ward',	'Respiratory',	148, 03),
('R-8',	'Cubicle',	'Fox Ward',	'Respiratory',	155, 03),
('R-9',	'Bay',	'Fox Ward',	'Respiratory',	158, 03),
('R-10',	'Bay',	'Fox Ward',	'Respiratory',	170, 03),
('G-1',	'Bay',	'Apley Ward',	'Gastroentrology',	125, 01),
('G-2',	'Bay',	'Apley Ward',	'Gastroentrology',	133, 01),
('G-3',	'Bay',	'Apley Ward',	'Gastroentrology',	139, 01),
('G-4',	'Bay',	'Apley Ward',	'Gastroentrology',	149, 01),
('G-5',	'Bay',	'Apley Ward',	'Gastroentrology',	157, 01),
('G-6',	'Bay',	'Apley Ward',	'Gastroentrology',	167, 01),
('G-7',	'Bay',	'Apley Ward',	'Gastroentrology',	171, 01),
('H-1',	'Bay',	'Samaritan Ward',	'Haematology',	126, 05),
('H-2',	'Bay',	'Samaritan Ward',	'Haematology',	134, 05),
('H-3',	'Cubicle',	'Samaritan Ward',	'Haematology',	147, 05),
('H-4',	'Cubicle',	'Samaritan Ward',	'Haematology',	154, 05),
('H-5',	'Bay',	'Samaritan Ward',	'Haematology',	160, 05),
('H-6',	'Cubicle',	'Samaritan Ward',	'Haematology',	165, 05),
('H-7',	'Bay',	'Samaritan Ward',	'Haematology',	168, 05),
('C-1',	'Bay',	'Becket Ward',	'Cardiology',	124, 06),
('C-2',	'Bay',	'Becket Ward',	'Cardiology',	145, 06),
('C-3',	'Bay',	'Becket Ward',	'Cardiology',	151, 06),
('C-4',	'Cubicle',	'Becket Ward',	'Cardiology',	161, 06),
('C-5',	'Cubicle',	'Becket Ward',	'Cardiology',	169, 06),
('D-1',	'Bay',	'Page Ward',	'Dermatology',	135, 04),
('D-2',	'Bay',	'Page Ward',	'Dermatology',	137, 04),
('D-3',	'Bay',	'Page Ward',	'Dermatology',	140, 04),
('D-4',	'Bay',	'Page Ward',	'Dermatology',	142, 04),
('D-5',	'Bay',	'Page Ward',	'Dermatology',	143, 04),
('D-6',	'Bay',	'Page Ward',	'Dermatology',	146, 04),
('D-7',	'Cubicle',	'Page Ward',	'Dermatology',	152, 04),
('D-8',	'Bay',	'Page Ward',	'Dermatology',	153, 04),
('D-9',	'Bay',	'Page Ward',	'Dermatology',	159, 04),
('D-10',	'Cubicle',	'Page Ward',	'Dermatology',	162, 04),
('D-11',	'Bay',	'Page Ward',	'Dermatology',	163, 04),
('D-12',	'Bay',	'Page Ward',	'Dermatology',	164, 04);


-- Inserting data into APPOINTMENT TABLE
INSERT INTO 
APPOINTMENTS (appointment_id, appointment_type, appointment_date, appointment_time, appointment_duration, doctor_id)
VALUES
(1,	'Face to face',	'2022-06-30',	'13:30:00',	'1 hour',	7463),
(2,	'Face to face',	'2022-06-28',	'10:00:00',	'1 hour',	8548),
(3,	'Face to face',	'2022-06-29',	'12:00:00',	'30 mins',	1930),
(4,	'Telephone call',	'2022-06-28',	'14:00:00',	'1 hour',	6204),
(5,	'Telephone call',	'2022-06-30',	'12:00:00',	'1 hour',	7247),
(6,	'Face to face',	'2022-06-29',	'13:00:00',	'30-45 mins',	4005),
(7,	'Telephone call',	'2022-06-30',	'11:30:00',	'25 mins',	3664),
(8,	'Telephone call',	'2022-06-28',	'09:30:00',	'30 mins',	8548),
(9,	'Face to face',	'2022-06-30',	'11:00:00',	'1 hour',	9486),
(10,	'Face to face',	'2022-06-28',	'14:30:00',	'45 mins',	3526),
(11,	'Telephone call',	'2022-06-29',	'16:00:00',	'20 mins',	7038),
(12,	'Face to face',	'2022-06-29',	'10:30:00',	'20 mins',	6643),
(13,	'Face to face',	'2022-06-30',	'09:00:00',	'30 mins',	4005);


-- Inserting data into doctor table
insert into DOCTOR(DOCTOR_NAME,DOCTOR_SPECIAL,DOCTOR_ID)
values
('John Dorian','Cardiologist',7463),
('Elliot Reid', 'Haematologist',8548),
('Christopher Turk', 'Haematologist',1930),
('Percival Cox', 'Pulmonologist',6204),
('Bob Kelso', 'Surgeon',7247),
('Todd Quinlan','Dermatologist',4005),
('Todd jerry','Surgeon',3664),
('Andrew F','Gastrologist',9486),
('Nilesh G','Haematologist',3526),
('Andy R','Pulmonologist',7038),
('Neil M','Dermatologist',6643),
('Ricardo G','Pulmonologist',1264),
('Sam Gardiner', 'Gastrologist',4633),
('Chris Tab', 'Pulmonologist',7842),
('Giles F','Surgeon',8574),
('Mark U','Dermatologist',4326),
('Robin T','Surgeon',9968),
('Alex Martin','Surgeon',8837),
('Cindy R','Cardiologist',5376),
('Derek Salter','Cardiologist',2636);

SET FOREIGN_KEY_CHECKS=1;
