-- INSERTING DATA

-- Inserting data into INPATIENT table

INSERT INTO 
INPATIENT (patient_name, patient_id, gender, address, bed_no, admission_date, discharge_date, lab_no, doctor_id, disease)
VALUES
('Leo Higgins',	123,	'M',	'30 DoughtyStreet, Stamford',	'R-1',	'2022-06-18',	'2022-06-21',	01,	1264,	'COPD'),
('Zak Pearson',	124,	'M',	'27 BakewellClose, Northampton',	'C-1',	'2022-06-21',	NULL,	02,	7463,	'Acute coronary syndrome'),
('Corey Weston',	125,	'M',	'11 CanberraGardens, WestBridgford',	'G-1',	'2022-06-18',	'2022-06-20',	03,	4633,	'Celiac disease'),
('Muhsin Aswad',	126,	'M',	'11 ChelwoodRoad, Cambridge',	'H-1',	'2022-06-17',	'2022-06-20',	04,	8548,	'Sickle cell'),
('Eva Barnett',	127,	'F',	'22 TernGardens, Chatteris',	'R-2',	'2022-06-15',	'2022-06-21',	05,	7842,	'Pneumonia'),
('Jade Shepherd',	128,	'F',	'32 AbingtonPark, GreatAbington',	'S-1',	'2022-06-20',	NULL,	06,	8574,	'Appendectomy'),
('Poppy Curtis',	129,	'F',	'8 PadmoorLane, Upton',	'R-3',	'2022-06-16',	'2022-06-21',	07,	7038,	'COPD'),
('Lucy Parkes',	130,	'F',	'8 PembrokeAvenue, Eynesbury',	'S-2',	'2022-06-10',	'2022-06-21',	08,	3664,	'Esophageal Surgery'),
('Namir Kanaan',	131,	'M',	'2 AllenRoad, Northampton',	'R-4',	'2022-06-15',	'2022-06-19',	09,	1264,	'Emphysema'),
('Jordan Rogers',	132,	'M',	'32 PodmoreWay, Broughton',	'S-3',	'2022-06-17',	'2022-06-20',	10,	7247,	'Cholecystectomy'),
('Jacob Lawson',	133,	'M',	'7 PeregrineRoad, Hucknall',	'G-2',	'2022-06-20',	'2022-06-21',	11,	9486,	'Chron disease'),
('Dominic Manning',	134,	'M',	'2 KilvingtonHouse, Kilvington',	'H-2',	'2022-06-17',	NULL,	12,	8548,	'Sickle cell'),
('Finley George',	135,	'M',	'16 BlakeRoad, Corby',	'D-1',	'2022-06-16',	'2022-06-19',	13,	4326,	'Psoriasis'),
('Noah Butler',	136,	'M',	'14 PrimroseAvenue, Farndon',	'R-5',	'2022-06-13',	'2022-06-20',	14,	6204,	'Pneumonia'),
('Maddison Franklin',	137,	'F',	'27 WillowBarn, Caldecote',	'D-2',	'2022-06-12',	'2022-06-21',	15,	6643,	'Severe Eczema'),
('Samantha Nash',	138,	'F',	'24 HopeStreet, Beeston',	'S-4',	'2022-06-13',	'2022-06-16',	16,	9968,	'Cholecystectomy'),
('Freya Connor',	139,	'F',	'20 LinleyClose, Collingham',	'G-3',	'2022-06-12',	'2022-06-16',	17,	4633,	'Celiac disease'),
('Sophia Knight',	140,	'F',	'29 RylandGardens, Welton',	'D-3',	'2022-06-19',	'2022-06-21',	18,	4326,	'Cellulitis'),
('Muna Safar',	141,	'F',	'27 WashingtonDrive, Stapleford',	'R-6',	'2022-06-17',	NULL,	19,	6204,	'COPD'),
('Shimah Antar',	142,	'F',	'7 BreachLane, Wilburton',	'D-4',	'2022-06-15',	'2022-06-18',	20,	4326,	'Psoriasis'),
('Felicien Moquin',	143,	'F',	'3 RoseGrove, Keyworth',	'D-5',	'2022-06-13',	'2022-06-17',	21,	4326,	'Psoriasis'),
('Nanna Larocque',	144,	'F',	'20 MossDrive, Bramcote',	'S-5',	'2022-06-21',	'2022-06-21',	22,	8837,	'Tonsillectomy'),
('Clarice Marcil',	145,	'F',	'16 LeasAvenue, Pleasley',	'C-2',	'2022-06-16',	'2022-06-20',	23,	5376,	'Acute coronary syndrome'),
('Orlene Poissonnier',	146,	'F',	'30 OldPostOffice, Twywel',	'D-6',	'2022-06-21',	NULL,	24,	6643,	'Severe Eczema'),
('Gabriele Koehler',	147,	'F',	'5 WatersideDrive, Grantham',	'H-3',	'2022-06-08',	'2022-06-15',	25,	1930,	'Lymphoma'),
('Felix Kuhn',	148,	'M',	'26 AshfieldAvenue, Beeston',	'R-7',	'2022-06-15',	'2022-06-19',	26,	7038,	'Emphysema'),
('Christian Huber',	149,	'M',	'12 DucksNest, Lutton',	'G-4',	'2022-06-20',	'2022-06-21',	27,	9486,	'Chron disease'),
('Alicia Reilly',	150,	'F',	'3 TheGranary, OldHurst',	'S-6',	'2022-06-20',	'2022-06-20',	28,	8837,	'Tonsillectomy'),
('Lexi Milne',	151,	'F',	'2 SalamanderClose, Carlton',	'C-3',	'2022-05-17',	'2022-06-20',	29,	5376,	'Acute coronary syndrome'),
('Violet Gordon',	152,	'F',	'20 HallClose, Bourn',	'D-7',	'2022-06-18',	NULL,	30,	4005,	'Severe skin infection'),
('Allan Scott',	153,	'M',	'29 CransleyStreet, Broughton',	'D-8',	'2022-06-15',	'2022-06-19',	31,	4005,	'Cellulitis'),
('Kyle Bruce',	154,	'M',	'11 WoodhallClose, Mansfield',	'H-4',	'2022-06-12',	'2022-06-18',	32,	3526,	'Lymphoma'),
('Jorja Fraser',	155,	'F',	'15 ParkersLane, Mansfield',	'R-8',	'2022-06-14',	'2022-06-19',	33,	7038,	'Emphysema'),
('Orla Stevenson',	156,	'F',	'34 StewartWay, Annesley',	'S-7',	'2022-06-21',	'2022-06-21',	34,	8837,	'Tonsillectomy'),
('Mathew Williamson',	157,	'M',	'29 ScargillClose, Newthorpe',	'G-5',	'2022-06-14',	'2022-06-18',	35,	9486,	'Acute pancreatitis'),
('Albertino Angelo',	158,	'M',	'8 QueensSquare, Eastwood',	'R-9',	'2022-06-11',	'2022-06-17',	36,	7842,	'Pneumonia'),
('Erick Araujo',	159,	'M',	'27 CooksClose, Ashton',	'D-9',	'2022-06-12',	'2022-06-18',	37,	6643,	'Severe Eczema'),
('Daniel Sousa',	160,	'M',	'8 SwallowDrive, Bingham',	'H-5',	'2022-06-16',	'2022-06-19',	38,	1930,	'Chronic anaemia'),
('Beatrice Barros',	161,	'F',	'15 CanonsAshbyRoad, Woodford',	'C-4',	'2022-06-12',	'2022-06-20',	39,	2636,	'Stroke'),
('Niamh Field',	162,	'F',	'21 OrchardClose, Balsham',	'D-10',	'2022-06-18',	NULL,	40,	4005,	'Severe skin infection'),
('Phoebe Kelly',	163,	'F',	'18 LangmereRoad, Rushall',	'D-11',	'2022-06-13',	'2022-06-18',	41,	6643,	'Severe Eczema'),
('Louise Parker',	164,	'F',	'30 BirchwoodDrive, Ravenshead',	'D-12',	'2022-06-14',	'2022-06-19',	42,	4005,	'Cellulitis'),
('Maisie Richardson',	165,	'F',	'20 TerringtonClose, Brackley',	'H-6',	'2022-06-12',	'2022-06-18',	43,	3526,	'Mastoytosis'),
('Sarah Hill',	166,	'F',	'20 JerseyGardens, Mansfield',	'S-8',	'2022-06-12',	'2022-06-17',	44,	7247,	'Cholecystectomy'),
('Laura Law',	167,	'F',	'23 PodmoreWay, Broughton',	'G-6',	'2022-06-13',	'2022-06-15',	45,	4633,	'Acute pancreatitis'),
('Johan Lax',	168,	'M',	'30 SeatonCrescent, Corby',	'H-7',	'2022-06-13',	'2022-06-16',	46,	1930,	'Chronic anaemia'),
('Toini Hakola',	169,	'M',	'30 ThornClose, Kettering',	'C-5',	'2022-06-16',	NULL,	47,	2636,	'Stroke'),
('Kimmo Paarma',	170,	'M',	'19 WakeClose, Wellingborough',	'R-10',	'2022-06-17',	NULL,	48,	7842,	'COPD'),
('Hanne Lange',	171,	'M',	'26 DoncasterRoad, Langold',	'G-7',	'2022-06-17',	'2022-06-21',	49,	9486,	'Chron disease'),

SELECT * FROM INPATIENT;

-- Inserting data into ROOM table

INSERT INTO 
WARDS (bed_no, room_type, ward_name, ward_type, patient_id)
VALUES
('S-1',	'Bay',	'Nightingale Ward',	'General surgery',	128),
('S-2',	'Bay',	'Nightingale Ward',	'General surgery',	130),
('S-3',	'Bay',	'Nightingale Ward',	'General surgery',	132),
('S-4',	'Bay',	'Nightingale Ward',	'General surgery',	138),
('S-5',	'Bay',	'Nightingale Ward',	'General surgery',	144),
('S-6',	'Bay',	'Nightingale Ward',	'General surgery',	150),
('S-7',	'Bay',	'Nightingale Ward',	'General surgery',	156),
('S-8',	'Bay',	'Nightingale Ward',	'General surgery',	166),
('R-1',	'Cubicle',	'Fox Ward',	'Respiratory',	123),
('R-2',	'Bay',	'Fox Ward',	'Respiratory',	127),
('R-3',	'Bay',	'Fox Ward',	'Respiratory',	129),
('R-4',	'Bay',	'Fox Ward',	'Respiratory',	131),
('R-5',	'Bay',	'Fox Ward',	'Respiratory',	136),
('R-6',	'Cubicle',	'Fox Ward',	'Respiratory',	141),
('R-7',	'Cubicle',	'Fox Ward',	'Respiratory',	148),
('R-8',	'Cubicle',	'Fox Ward',	'Respiratory',	155),
('R-9',	'Bay',	'Fox Ward',	'Respiratory',	158),
('R-10',	'Bay',	'Fox Ward',	'Respiratory',	170),
('G-1',	'Bay',	'Apley Ward',	'Gastroentrology',	125),
('G-2',	'Bay',	'Apley Ward',	'Gastroentrology',	133),
('G-3',	'Bay',	'Apley Ward',	'Gastroentrology',	139),
('G-4',	'Bay',	'Apley Ward',	'Gastroentrology',	149),
('G-5',	'Bay',	'Apley Ward',	'Gastroentrology',	157),
('G-6',	'Bay',	'Apley Ward',	'Gastroentrology',	167),
('G-7',	'Bay',	'Apley Ward',	'Gastroentrology',	171),
('H-1',	'Bay',	'Samaritan Ward',	'Haematology',	126),
('H-2',	'Bay',	'Samaritan Ward',	'Haematology',	134),
('H-3',	'Cubicle',	'Samaritan Ward',	'Haematology',	147),
('H-4',	'Cubicle',	'Samaritan Ward',	'Haematology',	154),
('H-5',	'Bay',	'Samaritan Ward',	'Haematology',	160),
('H-6',	'Cubicle',	'Samaritan Ward',	'Haematology',	165),
('H-7',	'Bay',	'Samaritan Ward',	'Haematology',	168),
('C-1',	'Bay',	'Becket Ward',	'Cardiology',	124),
('C-2',	'Bay',	'Becket Ward',	'Cardiology',	145),
('C-3',	'Bay',	'Becket Ward',	'Cardiology',	151),
('C-4',	'Cubicle',	'Becket Ward',	'Cardiology',	161),
('C-5',	'Cubicle',	'Becket Ward',	'Cardiology',	169),
('D-1',	'Bay',	'Page Ward',	'Dermatology',	135),
('D-2',	'Bay',	'Page Ward',	'Dermatology',	137),
('D-3',	'Bay',	'Page Ward',	'Dermatology',	140),
('D-4',	'Bay',	'Page Ward',	'Dermatology',	142),
('D-5',	'Bay',	'Page Ward',	'Dermatology',	143),
('D-6',	'Bay',	'Page Ward',	'Dermatology',	146),
('D-7',	'Cubicle',	'Page Ward',	'Dermatology',	152),
('D-8',	'Bay',	'Page Ward',	'Dermatology',	153),
('D-9',	'Bay',	'Page Ward',	'Dermatology',	159),
('D-10',	'Cubicle',	'Page Ward',	'Dermatology',	162),
('D-11',	'Bay',	'Page Ward',	'Dermatology',	163),
('D-12',	'Bay',	'Page Ward',	'Dermatology',	164);


-- Inserting data into APPOINTMENT TABLE

INSERT INTO 
APPOINTMENTS (appointment_id, appointment_type, appointment_date, appointment_time, appointment_duration, doctor_id)
VALUES
(1,	'Face to face',	'2022-06-30',	'13:30:00',	'1 hour',	7463,	124),
(2,	'Face to face',	'2022-06-28',	'10:00:00',	'1 hour',	8548,	134),
(3,	'Face to face',	'2022-06-29',	'12:00:00',	'30 mins',	1930,	147),
(4,	'Telephone call',	'2022-06-28',	'14:00:00',	'1 hour',	6204,	141),
(5,	'Telephone call',	'2022-06-30',	'12:00:00',	'1 hour',	7247,	132),
(6,	'Face to face',	'2022-06-29',	'13:00:00',	'30-45 mins',	4005,	152),
(7,	'Telephone call',	'2022-06-30',	'11:30:00',	'25 mins',	3664,	130),
(8,	'Telephone call',	'2022-06-28',	'09:30:00',	'30 mins',	8548,	126),
(9,	'Face to face',	'2022-06-30',	'11:00:00',	'1 hour',	9486,	171),
(10,	'Face to face',	'2022-06-28',	'14:30:00',	'45 mins',	3526,	165),
(11,	'Telephone call',	'2022-06-29',	'16:00:00',	'20 mins',	7038,	155),
(12,	'Face to face',	'2022-06-29',	'10:30:00',	'20 mins',	6643,	146),
(13,	'Face to face',	'2022-06-30',	'09:00:00',	'30 mins',	4005,	162);


SELECT * FROM INPATIENT;
SELECT * FROM WARDS;
SELECT * FROM APPOINTMENTS;

insert into DOCTOR(DOCTOR_NAME,DOCTOR_SPECIAL,DOCTOR_ID,WARD_NAME)
values
('John Dorian','General Medicine',7463,'Nightingale Ward'),
('Elliot Reid', 'physician',8548,'Fox Ward'),
('Christopher Turk', 'gyne',1930,'Apley Ward'),
('Percival Cox', 'ortho',6204,'Samaritan Ward'),
('Bob Kelso', 'derma',7247,'Page Ward'),
('Todd Quinlan','children specialist',4005,'Becket Ward'),
('Todd jerry','ortho specialist',3664,'Becket Ward'),
('Andrew F','gastro specialist',9486,'Page Ward'),
('Nilesh G','general medicine',3526,'Becket Ward'),
('Andy R','Cardio',7038,'Samaritan Ward'),
('Neil M','Rhematologist',6643,'Apley Ward');

insert into NURSE(nurse_name,nurse_id,nurse_level,ward_name,nurse_speciality)
VALUES ('MARY B',342,1,'Apley Ward','General Medicine'),
 ('REBECCA R',343,2,'Samaritan Ward','General Medicine'),
 ('SUZI B',344,2,'Apley Ward','General Medicine'),
 ('KATE H',345,3,'Apley Ward','General Medicine'),
 ('RHONA Y',346,1,'Becket Ward','General Medicine'),
 ('SALLY F',347,2,'Nightingale Ward','General Medicine'),
 ('ERICA R',348,2,'Samaritan Ward','General Medicine'),
 ('MEERA Y',349,3,'Page Ward','General Medicine'),
 ('ESTHER E',350,2,'Apley Ward','General Medicine'),
 ('LISA B',351,3,'Fox Ward','General Medicine');
 
 update NURSE set IS_STUDENT_TRAINEE_INVOLVED=false where nurse_id in (342,343,344,345);
 update nurse set is_student_trainee_involved=true where nurse_id in (346,347,348,349,350,351);




