/*create database dr;*/
use dr;

drop table if exists doctor;
drop table if exists patients;
drop table if exists appointments;
drop table if exists treatments;
drop table if exists billing;

create table doctor (
doctor_id varchar(20) primary key,
first_name varchar(50),
last_name varchar(50),
specialization varchar(50),
phone_no varchar(20),
years_experience int,
hospital_branch varchar(100),
email varchar(50) );

select * from Doctor;

create table patients(
patient_id varchar(20) primary key,
first_name varchar(50),
last_name varchar(50),
gender varchar(20),
date_of_birth date,
contact_number varchar(20),
address varchar(50),
registration_date date,
insurance_provider varchar(50),
insurance_number varchar(50),
email varchar(50));

select * from patients;

create table appointments(
appointment_id varchar(20) primary key,
patient_id varchar(20),
doctor_id varchar(20),
appointment_date date,
appointment_time time,
reason_for_visit varchar(50),
status varchar (50),
foreign key (patient_id) references  patients(patient_id),
foreign key (doctor_id) references doctor(doctor_id ));

select * from appointments;

create table treatments(
treatment_id varchar(20) primary key,
appointments_id varchar(20),
treatment_type varchar(50),
description varchar(50),
cost float ,
treatment_date date,
foreign key (appointments_id) references appointments(appointment_id) );

create table billing(
bill_id varchar(20) primary key,
patient_id varchar(20),
treatment_id varchar(20),
bill_date date,
amount float ,
payment_method varchar(50),
payment_status varchar(50),
foreign key (patient_id) references patients(patient_id),
foreign key (treatment_id) references treatments(treatment_id));

 insert into doctor 
 value
('D001','David','Taylor','Dermatology',8322010158,17,'Westside Clinic','dr.david.taylor@hospital.com'),
('D002','Jane','Davis','Pediatrics',9004382050,24,'Eastside Clinic','dr.jane.davis@hospital.com'),
('D003','Jane','Smith','Pediatrics',8737740598,19,'Eastside Clinic','dr.jane.smith@hospital.com'),
('D004','David','Jones','Pediatrics',6594221991,28,'Central Hospital','dr.david.jones@hospital.com'),
('D005','Sarah','Taylor','Dermatology',9118538547,26,'Central Hospital','dr.sarah.taylor@hospital.com'),
('D006','Alex','Davis','Pediatrics',6570137231,23,'Central Hospital','dr.alex.davis@hospital.com'),
('D007','Robert','Davis','Oncology',8217493115,26,'Westside Clinic','dr.robert.davis@hospital.com'),
('D008','Linda','Brown','Dermatology',9069162601,5,'Westside Clinic','dr.linda.brown@hospital.com'),
('D009','Sarah','Smith','Pediatrics',7387087517,26,'Central Hospital','dr.sarah.smith@hospital.com'),
('D010','Linda','Wilson','Oncology',6176383634,21,'Eastside Clinic','dr.linda.wilson@hospital.com');

INSERT INTO patients VALUES
('P001','David','Williams','F','1955-06-04','6939585183','789 Pine Rd','2022-06-23','WellnessCorp','INS840674','david.williams@mail.com'),
('P002','Emily','Smith','F','1984-10-12','8228188767','321 Maple Dr','2022-01-15','PulseSecure','INS354079','emily.smith@mail.com'),
('P003','Laura','Jones','M','1977-08-21','8397029847','321 Maple Dr','2022-02-07','PulseSecure','INS650929','laura.jones@mail.com'),
('P004','Michael','Johnson','F','1981-02-20','9019443432','123 Elm St','2021-03-02','HealthIndia','INS789944','michael.johnson@mail.com'),
('P005','David','Wilson','M','1960-06-23','7734463155','123 Elm St','2021-09-29','MedCare Plus','INS788105','david.wilson@mail.com'),
('P006','Linda','Jones','M','1963-06-16','7561777264','321 Maple Dr','2022-10-02','HealthIndia','INS613758','linda.jones@mail.com'),
('P007','Alex','Johnson','F','1989-06-08','6278710077','789 Pine Rd','2021-12-25','MedCare Plus','INS465890','alex.johnson@mail.com'),
('P008','David','Davis','F','1976-07-05','7090558393','456 Oak Ave','2021-05-25','WellnessCorp','INS545101','david.davis@mail.com'),
('P009','Laura','Davis','M','1971-12-11','7060324619','321 Maple Dr','2022-09-18','PulseSecure','INS136631','laura.davis@mail.com'),
('P010','Michael','Taylor','M','2001-10-13','7081396733','123 Elm St','2022-08-24','WellnessCorp','INS866577','michael.taylor@mail.com'),
('P011','Emily','Jones','F','1966-12-04','8990604070','789 Pine Rd','2022-09-27','MedCare Plus','INS172991','emily.jones@mail.com'),
('P012','Laura','Davis','F','1991-12-08','8135666049','321 Maple Dr','2023-04-27','MedCare Plus','INS104014','laura.davis@mail.com'),
('P013','Laura','Johnson','F','1990-03-28','9059178882','321 Maple Dr','2021-12-23','WellnessCorp','INS373237','laura.johnson@mail.com'),
('P014','Alex','Taylor','M','1968-02-27','7292262512','789 Pine Rd','2021-10-11','PulseSecure','INS100096','alex.taylor@mail.com');

insert into patients values
('P015','Sarah','johnson','M','1964-05-11','6636028516','321 Maple Dr','2021-09-25','WellnessCrop','INS922209','sarah.johnson.@mail.com');
INSERT INTO patients VALUES
('P016','Michael','Taylor','M','2000-07-22','7223380592','789 Pine Rd','2021-07-23','PulseSecure','INS156958','michael.taylor@mail.com'),
('P017','Jane','Jones','M','1971-09-24','6152482420','456 Oak Ave','2022-09-16','WellnessCorp','INS182074','jane.jones@mail.com'),
('P018','Laura','Wilson','M','1979-09-24','7145185783','789 Pine Rd','2022-09-23','PulseSecure','INS853017','laura.wilson@mail.com'),
('P019','Sarah','Miller','M','1993-05-04','7184557909','456 Oak Ave','2023-06-14','WellnessCorp','INS350775','sarah.miller@mail.com'),
('P020','Jane','Moore','F','2003-06-06','8158898953','789 Pine Rd','2022-04-03','MedCare Plus','INS276089','jane.moore@mail.com'),
('P021','Michael','Wilson','M','2002-01-05','7765590935','321 Maple Dr','2022-01-19','WellnessCorp','INS297392','michael.wilson@mail.com'),
('P022','John','Brown','M','1954-05-10','6210931953','321 Maple Dr','2021-05-11','MedCare Plus','INS258283','john.brown@mail.com'),
('P023','Linda','Johnson','M','1994-02-22','6141951830','789 Pine Rd','2021-12-27','WellnessCorp','INS730152','linda.johnson@mail.com'),
('P024','Sarah','Brown','F','1991-11-04','7196777444','321 Maple Dr','2021-09-02','WellnessCorp','INS493002','sarah.brown@mail.com'),
('P025','Robert','Wilson','M','1996-08-14','7482069247','123 Elm St','2021-09-09','HealthIndia','INS833429','robert.wilson@mail.com'),
('P026','John','Taylor','M','2003-11-28','9903972526','123 Elm St','2021-05-15','MedCare Plus','INS598863','john.taylor@mail.com'),
('P027','Linda','Moore','F','1986-09-26','8724518272','321 Maple Dr','2021-08-15','HealthIndia','INS467654','linda.moore@mail.com'),
('P028','Alex','Moore','M','1993-04-13','7028109487','321 Maple Dr','2023-05-20','MedCare Plus','INS679036','alex.moore@mail.com'),
('P029','David','Smith','M','1995-05-19','8923100975','789 Pine Rd','2023-04-19','HealthIndia','INS360089','david.smith@mail.com'),
('P030','Emily','Moore','M','1964-12-25','8622346711','456 Oak Ave','2021-08-07','PulseSecure','INS250262','emily.moore@mail.com'),
('P031','Robert','Miller','M','1980-06-13','8203304876','321 Maple Dr','2021-06-28','WellnessCorp','INS354295','robert.miller@mail.com'),
('P032','Alex','Moore','M','1970-02-06','8120183555','123 Elm St','2021-12-10','MedCare Plus','INS353362','alex.moore@mail.com'),
('P033','Michael','Wilson','M','1970-02-06','7932214041','789 Pine Rd','2023-09-06','MedCare Plus','INS544209','michael.wilson@mail.com'),
('P034','Alex','Smith','M','1987-08-03','837465733','321 Maple Dr','2023-06-18','MedCare Plus','INS588039','alex.smith@mail.com'),
('P035','David','Wilson','F','1993-04-13','7039694837','123 Elm St','2023-07-09','MedCare Plus','INS970793','david.wilson@mail.com'),
('P036','Michael','Wilson','M','1996-04-15','7380571205','789 Pine Rd','2023-03-10','MedCare Plus','INS399076','michael.wilson@mail.com'),
('P037','Robert','Williams','M','1993-02-05','8984600536','456 Oak Ave','2021-09-30','HealthIndia','INS579369','robert.williams@mail.com'),
('P038','David','Smith','M','1994-09-24','8462272309','123 Elm St','2022-03-16','MedCare Plus','INS270800','david.smith@mail.com'),
('P039','Jane','Wilson','F','1950-12-12','9271139744','789 Pine Rd','2021-03-09','PulseSecure','INS348710','jane.wilson@mail.com'),
('P040','Emily','Williams','F','1951-06-19','7568756385','456 Oak Ave','2021-10-11','MedCare Plus','INS584003','emily.williams@mail.com'),
('P041','Robert','Williams','M','1951-06-19','7020645498','456 Oak Ave','2022-07-16','WellnessCorp','INS997953','robert.williams@mail.com'),
('P042','Jane','Smith','F','1954-08-25','7202485561','321 Maple Dr','2021-02-10','WellnessCorp','INS765248','jane.smith@mail.com'),
('P043','Linda','Brown','F','1980-03-25','9127665406','789 Pine Rd','2021-09-22','MedCare Plus','INS882355','linda.brown@mail.com'),
('P044','Robert','Taylor','M','1983-03-25','9445985597','321 Maple Dr','2021-09-22','MedCare Plus','INS364512','robert.taylor@mail.com'),
('P045','Linda','Miller','F','1966-04-05','9424654951','789 Pine Rd','2022-06-10','MedCare Plus','INS988744','linda.miller@mail.com'),
('P046','Michael','Taylor','F','1996-10-22','8019528365','456 Oak Ave','2022-09-01','MedCare Plus','INS368793','michael.taylor@mail.com'),
('P047','Jane','Miller','F','1996-05-01','8196752851','321 Maple Dr','2022-10-16','MedCare Plus','INS879303','jane.miller@mail.com'),
('P048','Emily','Miller','M','1973-10-24','8720983948','123 Elm St','2023-03-11','MedCare Plus','INS694319','emily.miller@mail.com'),
('P049','David','Moore','M','1972-11-26','7129379741','321 Maple Dr','2023-04-28','WellnessCorp','INS882375','david.moore@mail.com'),
('P050','Laura','Wilson','M','1993-12-27','8301134730','321 Maple Dr','2023-04-28','WellnessCorp','INS712810','laura.wilson@mail.com');


INSERT INTO appointments VALUES
('A001', 'P034', 'D009', '2023-08-09', '15:15:00', 'Therapy', 'Scheduled'),
('A002', 'P032', 'D004', '2023-06-09', '14:30:00', 'Therapy', 'No-show'),
('A003', 'P048', 'D004', '2023-06-28', '08:00:00', 'Consultation', 'Cancelled'),
('A004', 'P025', 'D006', '2023-09-01', '09:15:00', 'Consultation', 'Cancelled'),
('A005', 'P040', 'D003', '2023-07-06', '12:45:00', 'Emergency', 'No-show'),
('A006', 'P045', 'D006', '2023-06-19', '16:15:00', 'Checkup', 'Scheduled'),
('A007', 'P001', 'D007', '2023-04-09', '10:30:00', 'Consultation', 'Scheduled'),
('A008', 'P016', 'D010', '2023-05-24', '08:45:00', 'Consultation', 'Cancelled'),
('A009', 'P039', 'D010', '2023-03-05', '13:45:00', 'Follow-up', 'Scheduled'),
('A010', 'P005', 'D003', '2023-01-13', '15:30:00', 'Therapy', 'Completed'),
('A011', 'P022', 'D007', '2023-11-12', '16:00:00', 'Checkup', 'No-show'),
('A012', 'P029', 'D003', '2023-05-07', '10:00:00', 'Follow-up', 'Completed'),
('A013', 'P003', 'D002', '2023-08-16', '12:00:00', 'Emergency', 'Scheduled'),
('A014', 'P012', 'D010', '2023-05-25', '10:30:00', 'Emergency', 'Cancelled'),
('A015', 'P026', 'D004', '2023-01-15', '17:15:00', 'Consultation', 'No-show'),
('A016', 'P016', 'D008', '2023-06-30', '11:00:00', 'Consultation', 'Scheduled'),
('A017', 'P037', 'D009', '2023-07-11', '17:00:00', 'Emergency', 'Scheduled'),
('A018', 'P022', 'D007', '2023-11-14', '09:45:00', 'Consultation', 'Cancelled'),
('A019', 'P029', 'D001', '2023-02-06', '15:30:00', 'Checkup', 'Cancelled'),
('A020', 'P014', 'D003', '2023-12-05', '15:15:00', 'Consultation', 'Completed');

INSERT INTO appointments VALUES
('A021', 'P028', 'D009', '2023-04-24', '10:00:00', 'Therapy', 'No-show'),
('A022', 'P005', 'D001', '2023-11-14', '13:00:00', 'Consultation', 'No-show'),
('A023', 'P047', 'D009', '2023-05-09', '14:30:00', 'Follow-up', 'Cancelled'),
('A024', 'P049', 'D008', '2023-06-21', '08:00:00', 'Checkup', 'Completed'),
('A025', 'P030', 'D001', '2023-02-25', '08:00:00', 'Follow-up', 'No-show'),
('A026', 'P046', 'D006', '2023-03-17', '14:15:00', 'Follow-up', 'Cancelled'),
('A027', 'P005', 'D005', '2023-11-14', '12:45:00', 'Therapy', 'Scheduled'),
('A028', 'P012', 'D006', '2023-10-29', '15:30:00', 'Checkup', 'No-show'),
('A029', 'P016', 'D010', '2023-06-25', '14:30:00', 'Checkup', 'Completed'),
('A030', 'P026', 'D005', '2023-08-29', '13:15:00', 'Checkup', 'Completed'),
('A031', 'P026', 'D006', '2023-04-04', '10:30:00', 'Checkup', 'Completed'),
('A032', 'P048', 'D005', '2023-11-06', '10:45:00', 'Checkup', 'Scheduled'),
('A033', 'P021', 'D005', '2023-09-23', '17:45:00', 'Therapy', 'No-show'),
('A034', 'P039', 'D004', '2023-06-13', '11:30:00', 'Consultation', 'No-show'),
('A035', 'P036', 'D003', '2023-04-18', '08:45:00', 'Follow-up', 'Scheduled'),
('A036', 'P033', 'D003', '2023-01-08', '14:30:00', 'Checkup', 'No-show'),
('A037', 'P030', 'D004', '2023-03-28', '11:00:00', 'Consultation', 'Scheduled'),
('A038', 'P037', 'D009', '2023-02-23', '13:00:00', 'Consultation', 'Scheduled'),
('A039', 'P023', 'D002', '2023-04-17', '08:00:00', 'Follow-up', 'Scheduled'),
('A040', 'P010', 'D009', '2023-03-27', '12:30:00', 'Therapy', 'Completed'),
('A041', 'P005', 'D001', '2023-01-01', '14:00:00', 'Emergency', 'No-show'),
('A042', 'P036', 'D001', '2023-03-21', '11:15:00', 'Emergency', 'Scheduled'),
('A043', 'P034', 'D005', '2023-03-29', '09:15:00', 'Consultation', 'No-show'),
('A044', 'P031', 'D006', '2023-09-20', '12:30:00', 'Follow-up', 'Completed'),
('A045', 'P010', 'D006', '2023-09-28', '17:00:00', 'Emergency', 'Scheduled'),
('A046', 'P019', 'D003', '2023-12-20', '13:15:00', 'Consultation', 'Cancelled'),
('A047', 'P032', 'D007', '2023-05-02', '11:00:00', 'Therapy', 'Completed'),
('A048', 'P001', 'D009', '2023-01-16', '15:45:00', 'Emergency', 'Cancelled'),
('A049', 'P005', 'D010', '2023-04-30', '15:30:00', 'Consultation', 'No-show'),
('A050', 'P045', 'D008', '2023-08-16', '15:00:00', 'Consultation', 'No-show');

INSERT INTO appointments
(appointment_id, patient_id, doctor_id, appointment_date, appointment_time, reason_for_visit, status)
VALUES
('A051', 'P004', 'D006', '2023-02-04', '11:45:00', 'Checkup', 'Completed'),
('A052', 'P016', 'D008', '2023-07-12', '09:30:00', 'Therapy', 'No-show'),
('A053', 'P024', 'D005', '2023-02-12', '10:30:00', 'Checkup', 'Cancelled'),
('A054', 'P016', 'D008', '2023-12-16', '11:45:00', 'Follow-up', 'Scheduled'),
('A055', 'P002', 'D010', '2023-10-06', '17:30:00', 'Checkup', 'Scheduled'),
('A056', 'P049', 'D004', '2023-01-02', '12:45:00', 'Checkup', 'Scheduled'),
('A057', 'P028', 'D010', '2023-04-15', '17:45:00', 'Emergency', 'Completed'),
('A058', 'P032', 'D008', '2023-05-09', '13:15:00', 'Consultation', 'No-show'),
('A059', 'P027', 'D010', '2023-03-09', '15:30:00', 'Therapy', 'Cancelled'),
('A060', 'P020', 'D002', '2023-11-22', '17:15:00', 'Checkup', 'No-show'),
('A061', 'P024', 'D005', '2023-01-15', '17:00:00', 'Therapy', 'No-show'),
('A062', 'P012', 'D009', '2023-06-14', '15:15:00', 'Checkup', 'No-show'),
('A063', 'P050', 'D004', '2023-06-29', '09:00:00', 'Follow-up', 'Scheduled'),
('A064', 'P035', 'D006', '2023-05-31', '08:30:00', 'Checkup', 'Cancelled'),
('A065', 'P033', 'D001', '2023-04-24', '15:45:00', 'Emergency', 'Cancelled'),
('A066', 'P033', 'D009', '2023-05-10', '11:45:00', 'Consultation', 'No-show'),
('A067', 'P043', 'D001', '2023-08-10', '11:00:00', 'Follow-up', 'Scheduled'),
('A068', 'P037', 'D005', '2023-03-14', '15:00:00', 'Checkup', 'Scheduled'),
('A069', 'P012', 'D004', '2023-03-29', '15:30:00', 'Therapy', 'Cancelled'),
('A070', 'P003', 'D003', '2023-08-26', '17:00:00', 'Follow-up', 'Scheduled');

INSERT INTO appointments
(appointment_id, patient_id, doctor_id, appointment_date, appointment_time, reason_for_visit, status)
VALUES
('A071', 'P001', 'D006', '2023-01-26', '17:00:00', 'Follow-up', 'Scheduled'),
('A072', 'P033', 'D002', '2023-06-12', '13:30:00', 'Checkup', 'Scheduled'),
('A073', 'P040', 'D003', '2023-12-24', '15:00:00', 'Follow-up', 'Completed'),
('A074', 'P010', 'D005', '2023-07-23', '13:30:00', 'Therapy', 'No-show'),
('A075', 'P043', 'D009', '2023-05-08', '14:00:00', 'Follow-up', 'Cancelled'),
('A076', 'P044', 'D002', '2023-11-27', '12:00:00', 'Therapy', 'Cancelled'),
('A077', 'P029', 'D010', '2023-12-14', '17:15:00', 'Checkup', 'Completed'),
('A078', 'P013', 'D008', '2023-09-17', '11:15:00', 'Consultation', 'No-show'),
('A079', 'P012', 'D002', '2023-12-26', '14:00:00', 'Follow-up', 'Cancelled'),
('A080', 'P031', 'D005', '2023-06-26', '08:30:00', 'Consultation', 'Scheduled'),
('A081', 'P046', 'D007', '2023-01-06', '13:30:00', 'Therapy', 'Cancelled'),
('A082', 'P002', 'D008', '2023-01-20', '10:45:00', 'Follow-up', 'Scheduled'),
('A083', 'P050', 'D001', '2023-11-07', '12:30:00', 'Emergency', 'Completed'),
('A084', 'P035', 'D006', '2023-05-31', '16:00:00', 'Consultation', 'Scheduled'),
('A085', 'P023', 'D001', '2023-02-18', '16:15:00', 'Follow-up', 'Cancelled'),
('A086', 'P017', 'D002', '2023-10-29', '11:00:00', 'Consultation', 'Cancelled'),
('A087', 'P026', 'D001', '2023-10-19', '12:15:00', 'Follow-up', 'Cancelled'),
('A088', 'P008', 'D005', '2023-05-02', '16:30:00', 'Checkup', 'Completed'),
('A089', 'P029', 'D010', '2023-02-14', '11:00:00', 'Consultation', 'Completed'),
('A090', 'P026', 'D009', '2023-06-01', '17:30:00', 'Emergency', 'No-show'),
('A091', 'P010', 'D006', '2023-06-11', '13:15:00', 'Emergency', 'Cancelled'),
('A092', 'P026', 'D001', '2023-01-30', '14:15:00', 'Therapy', 'Scheduled'),
('A093', 'P034', 'D001', '2023-04-09', '09:30:00', 'Follow-up', 'Completed'),
('A094', 'P041', 'D002', '2023-04-08', '08:45:00', 'Consultation', 'Cancelled'),
('A095', 'P007', 'D009', '2023-05-09', '10:15:00', 'Therapy', 'Cancelled');

 INSERT INTO appointments
(appointment_id, patient_id, doctor_id, appointment_date, appointment_time, reason_for_visit, status)
VALUES
('A096', 'P004', 'D003', '2023-07-07', '15:00:00', 'Consultation', 'Completed'),
('A097', 'P050', 'D001', '2023-05-06', '14:45:00', 'Follow-up', 'No-show'),
('A098', 'P045', 'D005', '2023-03-17', '13:00:00', 'Emergency', 'Completed'),
('A099', 'P011', 'D007', '2023-07-04', '15:00:00', 'Checkup', 'Completed'),
('A100', 'P029', 'D006', '2023-03-02', '08:00:00', 'Emergency', 'Scheduled'),
('A101', 'P036', 'D001', '2023-09-21', '13:15:00', 'Therapy', 'Scheduled'),
('A102', 'P025', 'D005', '2023-10-25', '09:00:00', 'Checkup', 'No-show'),
('A103', 'P021', 'D005', '2023-01-24', '08:30:00', 'Therapy', 'Cancelled'),
('A104', 'P036', 'D006', '2023-04-18', '08:45:00', 'Follow-up', 'Completed'),
('A105', 'P010', 'D003', '2023-08-14', '16:00:00', 'Checkup', 'No-show'),
('A106', 'P037', 'D005', '2023-10-29', '11:15:00', 'Therapy', 'Scheduled'),
('A107', 'P009', 'D007', '2023-04-17', '13:45:00', 'Follow-up', 'Completed'),
('A108', 'P024', 'D005', '2023-04-21', '15:00:00', 'Emergency', 'Cancelled'),
('A109', 'P035', 'D005', '2023-07-29', '14:00:00', 'Follow-up', 'Scheduled'),
('A110', 'P049', 'D005', '2023-07-19', '14:30:00', 'Consultation', 'Scheduled'),
('A111', 'P035', 'D010', '2023-05-22', '15:30:00', 'Follow-up', 'Scheduled'),
('A112', 'P048', 'D010', '2023-01-11', '08:00:00', 'Follow-up', 'No-show'),
('A113', 'P036', 'D003', '2023-11-24', '15:30:00', 'Consultation', 'Cancelled'),
('A114', 'P018', 'D001', '2023-08-08', '09:00:00', 'Therapy', 'Completed'),
('A115', 'P049', 'D005', '2023-10-25', '10:30:00', 'Therapy', 'No-show'),
('A116', 'P039', 'D009', '2023-07-07', '09:15:00', 'Follow-up', 'No-show'),
('A117', 'P032', 'D001', '2023-06-20', '13:45:00', 'Consultation', 'No-show'),
('A118', 'P024', 'D003', '2023-08-09', '08:15:00', 'Consultation', 'Scheduled'),
('A119', 'P023', 'D004', '2023-12-18', '13:30:00', 'Emergency', 'Cancelled'),
('A120', 'P032', 'D001', '2023-12-08', '11:00:00', 'Therapy', 'No-show');

INSERT INTO appointments
(appointment_id, patient_id, doctor_id, appointment_date, appointment_time, reason_for_visit, status)
VALUES
('A121', 'P037', 'D001', '2023-04-07', '15:00:00', 'Checkup', 'Completed'),
('A122', 'P012', 'D008', '2023-07-11', '14:30:00', 'Therapy', 'Cancelled'),
('A123', 'P049', 'D002', '2023-02-28', '10:45:00', 'Therapy', 'Completed'),
('A124', 'P013', 'D008', '2023-03-16', '17:15:00', 'Emergency', 'Cancelled'),
('A125', 'P023', 'D007', '2023-02-18', '10:15:00', 'Checkup', 'Completed'),
('A126', 'P025', 'D010', '2023-11-02', '09:45:00', 'Emergency', 'Scheduled'),
('A127', 'P035', 'D010', '2023-11-13', '08:30:00', 'Checkup', 'No-show'),
('A128', 'P041', 'D002', '2023-04-15', '14:45:00', 'Follow-up', 'Completed'),
('A129', 'P030', 'D006', '2023-08-25', '09:30:00', 'Checkup', 'Cancelled'),
('A130', 'P017', 'D006', '2023-02-23', '15:00:00', 'Emergency', 'No-show'),
('A131', 'P049', 'D003', '2023-05-11', '16:30:00', 'Therapy', 'No-show'),
('A132', 'P020', 'D002', '2023-07-26', '10:45:00', 'Checkup', 'Cancelled'),
('A133', 'P048', 'D001', '2023-03-23', '14:30:00', 'Checkup', 'Completed'),
('A134', 'P025', 'D006', '2023-10-17', '15:15:00', 'Consultation', 'Scheduled'),
('A135', 'P022', 'D005', '2023-09-09', '16:30:00', 'Therapy', 'Scheduled'),
('A136', 'P013', 'D009', '2023-05-13', '12:30:00', 'Follow-up', 'Completed'),
('A137', 'P019', 'D001', '2023-10-25', '10:00:00', 'Emergency', 'No-show'),
('A138', 'P049', 'D007', '2023-12-26', '15:15:00', 'Follow-up', 'No-show'),
('A139', 'P036', 'D005', '2023-10-10', '10:45:00', 'Therapy', 'No-show'),
('A140', 'P012', 'D005', '2023-02-05', '15:15:00', 'Checkup', 'No-show');

INSERT INTO appointments
(appointment_id, patient_id, doctor_id, appointment_date, appointment_time, reason_for_visit, status)
VALUES
('A141', 'P041', 'D002', '2023-06-15', '15:15:00', 'Checkup', 'Completed'),
('A142', 'P019', 'D003', '2023-11-01', '11:45:00', 'Therapy', 'No-show'),
('A143', 'P012', 'D007', '2023-09-21', '12:15:00', 'Checkup', 'Cancelled'),
('A144', 'P009', 'D006', '2023-08-16', '12:15:00', 'Checkup', 'No-show'),
('A145', 'P007', 'D002', '2023-11-11', '14:45:00', 'Checkup', 'Scheduled'),
('A146', 'P028', 'D006', '2023-01-05', '09:30:00', 'Emergency', 'No-show'),
('A147', 'P014', 'D002', '2023-11-13', '17:30:00', 'Emergency', 'Completed'),
('A148', 'P031', 'D002', '2023-12-06', '08:30:00', 'Consultation', 'Scheduled'),
('A149', 'P019', 'D002', '2023-07-26', '12:30:00', 'Follow-up', 'Completed'),
('A150', 'P047', 'D003', '2023-08-16', '10:45:00', 'Therapy', 'Completed'),
('A151', 'P016', 'D002', '2023-01-28', '09:15:00', 'Therapy', 'Scheduled'),
('A152', 'P005', 'D004', '2023-04-14', '08:30:00', 'Therapy', 'Completed'),
('A153', 'P035', 'D009', '2023-07-08', '12:45:00', 'Consultation', 'Completed'),
('A154', 'P012', 'D006', '2023-03-06', '17:30:00', 'Emergency', 'No-show'),
('A155', 'P025', 'D001', '2023-01-03', '09:30:00', 'Consultation', 'Cancelled'),
('A156', 'P021', 'D008', '2023-11-22', '14:30:00', 'Therapy', 'Completed'),
('A157', 'P036', 'D007', '2023-05-12', '11:00:00', 'Follow-up', 'Completed'),
('A158', 'P023', 'D010', '2023-07-12', '12:15:00', 'Checkup', 'Completed'),
('A159', 'P016', 'D003', '2023-04-08', '16:15:00', 'Emergency', 'No-show'),
('A160', 'P039', 'D001', '2023-12-17', '12:45:00', 'Emergency', 'Cancelled');

INSERT INTO appointments
(appointment_id, patient_id, doctor_id, appointment_date, appointment_time, reason_for_visit, status)
VALUES
('A161', 'P045', 'D005', '2023-06-17', '10:45:00', 'Consultation', 'Scheduled'),
('A162', 'P042', 'D004', '2023-01-01', '17:15:00', 'Emergency', 'No-show'),
('A163', 'P039', 'D010', '2023-06-27', '15:00:00', 'Therapy', 'No-show'),
('A164', 'P014', 'D008', '2023-07-28', '17:15:00', 'Therapy', 'Cancelled'),
('A165', 'P031', 'D001', '2023-04-04', '15:30:00', 'Consultation', 'Cancelled'),
('A166', 'P005', 'D010', '2023-01-12', '14:45:00', 'Therapy', 'No-show'),
('A167', 'P035', 'D001', '2023-11-15', '08:15:00', 'Follow-up', 'Scheduled'),
('A168', 'P023', 'D004', '2023-09-29', '10:00:00', 'Consultation', 'No-show'),
('A169', 'P029', 'D008', '2023-07-24', '16:45:00', 'Follow-up', 'Cancelled'),
('A170', 'P043', 'D005', '2023-03-03', '09:00:00', 'Checkup', 'Scheduled'),
('A171', 'P011', 'D002', '2023-04-18', '16:30:00', 'Follow-up', 'Cancelled'),
('A172', 'P018', 'D006', '2023-03-09', '16:15:00', 'Checkup', 'Scheduled'),
('A173', 'P047', 'D005', '2023-06-04', '13:30:00', 'Checkup', 'Completed'),
('A174', 'P012', 'D002', '2023-10-31', '11:15:00', 'Follow-up', 'Cancelled'),
('A175', 'P009', 'D003', '2023-10-22', '17:00:00', 'Consultation', 'Cancelled'),
('A176', 'P010', 'D009', '2023-04-26', '09:30:00', 'Therapy', 'No-show'),
('A177', 'P044', 'D007', '2023-08-16', '12:30:00', 'Therapy', 'Cancelled'),
('A178', 'P017', 'D007', '2023-01-17', '13:15:00', 'Checkup', 'Cancelled'),
('A179', 'P038', 'D006', '2023-03-08', '12:15:00', 'Checkup', 'Completed'),
('A180', 'P007', 'D008', '2023-01-07', '11:00:00', 'Consultation', 'Cancelled');

INSERT INTO appointments
(appointment_id, patient_id, doctor_id, appointment_date, appointment_time, reason_for_visit, status)
VALUES
('A181', 'P046', 'D004', '2023-09-03', '13:15:00', 'Emergency', 'Completed'),
('A182', 'P013', 'D008', '2023-04-12', '08:00:00', 'Follow-up', 'Completed'),
('A183', 'P040', 'D004', '2023-02-03', '16:15:00', 'Checkup', 'Completed'),
('A184', 'P042', 'D008', '2023-02-26', '17:45:00', 'Therapy', 'Completed'),
('A185', 'P009', 'D009', '2023-03-21', '14:00:00', 'Consultation', 'Scheduled'),
('A186', 'P050', 'D003', '2023-03-27', '17:15:00', 'Follow-up', 'No-show'),
('A187', 'P027', 'D003', '2023-02-13', '12:30:00', 'Consultation', 'Scheduled'),
('A188', 'P002', 'D002', '2023-04-12', '16:30:00', 'Follow-up', 'Cancelled'),
('A189', 'P005', 'D010', '2023-10-05', '13:30:00', 'Follow-up', 'Scheduled'),
('A190', 'P029', 'D003', '2023-11-16', '15:15:00', 'Checkup', 'Scheduled'),
('A191', 'P037', 'D003', '2023-04-12', '16:00:00', 'Consultation', 'Cancelled'),
('A192', 'P038', 'D005', '2023-08-31', '14:15:00', 'Consultation', 'Cancelled'),
('A193', 'P019', 'D005', '2023-09-15', '08:15:00', 'Therapy', 'Cancelled'),
('A194', 'P008', 'D002', '2023-04-06', '12:45:00', 'Therapy', 'Scheduled'),
('A195', 'P048', 'D010', '2023-08-19', '17:15:00', 'Checkup', 'Scheduled'),
('A196', 'P045', 'D006', '2023-10-26', '09:45:00', 'Checkup', 'Cancelled'),
('A197', 'P001', 'D005', '2023-04-01', '13:30:00', 'Emergency', 'No-show'),
('A198', 'P022', 'D006', '2023-05-15', '08:30:00', 'Therapy', 'No-show'),
('A199', 'P017', 'D001', '2023-05-01', '12:45:00', 'Follow-up', 'Completed'),
('A200', 'P007', 'D005', '2023-12-30', '10:15:00', 'Consultation', 'Cancelled');

INSERT INTO treatments
values
('T001', 'A001', 'Chemotherapy', 'Basic screening', 3941.97, '2023-08-09'),
('T002', 'A002', 'MRI', 'Advanced protocol', 4158.44, '2023-06-09'),
('T003', 'A003', 'MRI', 'Standard procedure', 3731.55, '2023-06-28'),
('T004', 'A004', 'MRI', 'Basic screening', 4799.86, '2023-09-01'),
('T005', 'A005', 'ECG', 'Standard procedure', 582.05, '2023-07-06'),
('T006', 'A006', 'Chemotherapy', 'Standard procedure', 1381.00, '2023-06-19'),
('T007', 'A007', 'Chemotherapy', 'Advanced protocol', 534.03, '2023-04-09'),
('T008', 'A008', 'Physiotherapy', 'Basic screening', 3413.64, '2023-05-24'),
('T009', 'A009', 'Physiotherapy', 'Standard procedure', 4541.14, '2023-03-05'),
('T010', 'A010', 'Physiotherapy', 'Standard procedure', 1595.67, '2023-01-13'),
('T011', 'A011', 'MRI', 'Basic screening', 4671.66, '2023-11-12'),
('T012', 'A012', 'Chemotherapy', 'Standard procedure', 771.20, '2023-05-07'),
('T013', 'A013', 'MRI', 'Standard procedure', 4704.96, '2023-08-16'),
('T014', 'A014', 'ECG', 'Basic screening', 2082.30, '2023-05-25'),
('T015', 'A015', 'Physiotherapy', 'Basic screening', 956.39, '2023-01-15'),
('T016', 'A016', 'MRI', 'Basic screening', 2686.42, '2023-06-30'),
('T017', 'A017', 'MRI', 'Basic screening', 1655.49, '2023-07-11'),
('T018', 'A018', 'ECG', 'Advanced protocol', 1781.93, '2023-11-14'),
('T019', 'A019', 'X-Ray', 'Basic screening', 1882.80, '2023-02-06'),
('T020', 'A020', 'Chemotherapy', 'Advanced protocol', 4113.62, '2023-12-05'),
('T021', 'A021', 'X-Ray', 'Advanced protocol', 2926.23, '2023-04-24'),
('T022', 'A022', 'Physiotherapy', 'Advanced protocol', 1900.88, '2023-11-14'),
('T023', 'A023', 'MRI', 'Standard procedure', 3246.50, '2023-05-09'),
('T024', 'A024', 'ECG', 'Advanced protocol', 3722.68, '2023-06-21'),
('T025', 'A025', 'ECG', 'Advanced protocol', 1726.81, '2023-02-25'),
('T026', 'A026', 'Chemotherapy', 'Standard procedure', 2360.97, '2023-03-17'),
('T027', 'A027', 'X-Ray', 'Standard procedure', 1048.49, '2023-11-14'),
('T028', 'A028', 'Chemotherapy', 'Standard procedure', 1315.17, '2023-10-29'),
('T029', 'A029', 'MRI', 'Basic screening', 3565.03, '2023-06-25'),
('T030', 'A030', 'Chemotherapy', 'Standard procedure', 1316.47, '2023-08-29'),
('T031', 'A031', 'ECG', 'Standard procedure', 2863.24, '2023-04-04'),
('T032', 'A032', 'ECG', 'Advanced protocol', 3690.71, '2023-11-06'),
('T033', 'A033', 'Physiotherapy', 'Standard procedure', 980.95, '2023-09-23'),
('T034', 'A034', 'Physiotherapy', 'Basic screening', 3052.90, '2023-06-13'),
('T035', 'A035', 'MRI', 'Standard procedure', 1654.53, '2023-04-18'),
('T036', 'A036', 'X-Ray', 'Basic screening', 4833.17, '2023-01-08'),
('T037', 'A037', 'Chemotherapy', 'Standard procedure', 2675.96, '2023-03-28'),
('T038', 'A038', 'MRI', 'Standard procedure', 4126.97, '2023-02-23'),
('T039', 'A039', 'Physiotherapy', 'Standard procedure', 2976.02, '2023-04-17'),
('T040', 'A040', 'Chemotherapy', 'Standard procedure', 695.36, '2023-03-27'),
('T041', 'A041', 'Physiotherapy', 'Basic screening', 3349.18, '2023-01-01'),
('T042', 'A042', 'Chemotherapy', 'Basic screening', 4781.32, '2023-03-21'),
('T043', 'A043', 'X-Ray', 'Advanced protocol', 3207.25, '2023-03-29'),
('T044', 'A044', 'MRI', 'Basic screening', 4186.35, '2023-09-20'),
('T045', 'A045', 'Chemotherapy', 'Standard procedure', 4478.93, '2023-09-28'),
('T046', 'A046', 'ECG', 'Advanced protocol', 1526.36, '2023-12-20'),
('T047', 'A047', 'ECG', 'Advanced protocol', 1454.20, '2023-05-02'),
('T048', 'A048', 'Chemotherapy', 'Advanced protocol', 3249.41, '2023-01-16'),
('T049', 'A049', 'Chemotherapy', 'Standard procedure', 2349.63, '2023-04-30'),
('T050', 'A050', 'Chemotherapy', 'Basic screening', 4279.38, '2023-08-16');

INSERT INTO treatments
values 
('T051', 'A051', 'ECG', 'Standard procedure', 4550.10, '2023-02-04'),
('T052', 'A052', 'ECG', 'Advanced protocol', 2090.40, '2023-07-12'),
('T053', 'A053', 'Chemotherapy', 'Standard procedure', 1565.92, '2023-02-12'),
('T054', 'A054', 'Physiotherapy', 'Standard procedure', 4012.36, '2023-12-16'),
('T055', 'A055', 'Physiotherapy', 'Basic screening', 1736.63, '2023-10-06'),
('T056', 'A056', 'X-Ray', 'Basic screening', 4201.76, '2023-01-02'),
('T057', 'A057', 'MRI', 'Advanced protocol', 2406.82, '2023-04-15'),
('T058', 'A058', 'Physiotherapy', 'Standard procedure', 3503.97, '2023-05-09'),
('T059', 'A059', 'ECG', 'Standard procedure', 929.91, '2023-03-09'),
('T060', 'A060', 'Physiotherapy', 'Basic screening', 3307.37, '2023-11-22'),
('T061', 'A061', 'X-Ray', 'Standard procedure', 2532.95, '2023-01-15'),
('T062', 'A062', 'X-Ray', 'Standard procedure', 3139.74, '2023-06-14'),
('T063', 'A063', 'MRI', 'Standard procedure', 1256.06, '2023-06-29'),
('T064', 'A064', 'Physiotherapy', 'Basic screening', 3815.93, '2023-05-31'),
('T065', 'A065', 'ECG', 'Advanced protocol', 4382.59, '2023-04-24'),
('T066', 'A066', 'ECG', 'Advanced protocol', 1475.33, '2023-05-10'),
('T067', 'A067', 'Chemotherapy', 'Standard procedure', 930.72, '2023-08-10'),
('T068', 'A068', 'ECG', 'Advanced protocol', 606.37, '2023-03-14'),
('T069', 'A069', 'MRI', 'Basic screening', 3388.87, '2023-03-29'),
('T070', 'A070', 'MRI', 'Basic screening', 3231.92, '2023-08-26'),
('T071', 'A071', 'ECG', 'Advanced protocol', 2960.14, '2023-01-26'),
('T072', 'A072', 'ECG', 'Advanced protocol', 1543.76, '2023-06-12'),
('T073', 'A073', 'Chemotherapy', 'Standard procedure', 2259.08, '2023-12-24'),
('T074', 'A074', 'ECG', 'Advanced protocol', 3175.14, '2023-07-23'),
('T075', 'A075', 'Chemotherapy', 'Standard procedure', 2735.45, '2023-05-08'),
('T076', 'A076', 'Chemotherapy', 'Standard procedure', 4945.03, '2023-11-27'),
('T077', 'A077', 'ECG', 'Basic screening', 1113.98, '2023-12-14'),
('T078', 'A078', 'X-Ray', 'Basic screening', 3628.15, '2023-09-17'),
('T079', 'A079', 'X-Ray', 'Basic screening', 2319.43, '2023-12-26'),
('T080', 'A080', 'Chemotherapy', 'Basic screening', 2426.90, '2023-06-26'),
('T081', 'A081', 'ECG', 'Advanced protocol', 3729.19, '2023-01-06'),
('T082', 'A082', 'X-Ray', 'Basic screening', 3615.96, '2023-01-20'),
('T083', 'A083', 'ECG', 'Advanced protocol', 4960.65, '2023-11-07'),
('T084', 'A084', 'ECG', 'Basic screening', 1077.77, '2023-05-31'),
('T085', 'A085', 'ECG', 'Advanced protocol', 968.49, '2023-02-18'),
('T086', 'A086', 'Physiotherapy', 'Standard procedure', 3759.52, '2023-10-29'),
('T087', 'A087', 'ECG', 'Advanced protocol', 3102.74, '2023-10-19'),
('T088', 'A088', 'Physiotherapy', 'Advanced protocol', 1733.72, '2023-05-02'),
('T089', 'A089', 'Chemotherapy', 'Basic screening', 857.39, '2023-02-14'),
('T090', 'A090', 'X-Ray', 'Advanced protocol', 885.46, '2023-06-01'),
('T091', 'A091', 'X-Ray', 'Standard procedure', 4523.86, '2023-06-11'),
('T092', 'A092', 'X-Ray', 'Standard procedure', 1363.40, '2023-01-30'),
('T093', 'A093', 'X-Ray', 'Basic screening', 1955.17, '2023-04-09'),
('T094', 'A094', 'X-Ray', 'Standard procedure', 1519.95, '2023-04-08'),
('T095', 'A095', 'X-Ray', 'Advanced protocol', 2097.48, '2023-05-09'),
('T096', 'A096', 'X-Ray', 'Standard procedure', 812.41, '2023-07-07'),
('T097', 'A097', 'Chemotherapy', 'Basic screening', 2835.77, '2023-05-06'),
('T098', 'A098', 'ECG', 'Advanced protocol', 804.26, '2023-03-17'),
('T099', 'A099', 'MRI', 'Basic screening', 4101.60, '2023-07-04'),
('T100', 'A100', 'Physiotherapy', 'Advanced protocol', 1551.70, '2023-03-02');

INSERT INTO treatments
values 
('T101', 'A101', 'MRI', 'Standard procedure', 2930.05, '2023-09-21'),
('T102', 'A102', 'MRI', 'Basic screening', 4460.36, '2023-10-25'),
('T103', 'A103', 'ECG', 'Basic screening', 3428.95, '2023-01-24'),
('T104', 'A104', 'ECG', 'Advanced protocol', 2898.31, '2023-04-18'),
('T105', 'A105', 'ECG', 'Basic screening', 1959.50, '2023-08-14'),
('T106', 'A106', 'X-Ray', 'Advanced protocol', 1998.51, '2023-10-29'),
('T107', 'A107', 'Chemotherapy', 'Advanced protocol', 3512.69, '2023-04-17'),
('T108', 'A108', 'X-Ray', 'Advanced protocol', 4973.63, '2023-04-21'),
('T109', 'A109', 'Chemotherapy', 'Advanced protocol', 3478.28, '2023-07-29'),
('T110', 'A110', 'Chemotherapy', 'Standard procedure', 3010.03, '2023-07-19'),
('T111', 'A111', 'MRI', 'Advanced protocol', 3787.93, '2023-05-22'),
('T112', 'A112', 'MRI', 'Basic screening', 2593.43, '2023-01-11'),
('T113', 'A113', 'Chemotherapy', 'Standard procedure', 770.64, '2023-11-24'),
('T114', 'A114', 'Chemotherapy', 'Basic screening', 3030.34, '2023-08-08'),
('T115', 'A115', 'X-Ray', 'Standard procedure', 4809.31, '2023-10-25'),
('T116', 'A116', 'X-Ray', 'Advanced protocol', 1288.86, '2023-07-07'),
('T117', 'A117', 'MRI', 'Standard procedure', 3605.02, '2023-06-20'),
('T118', 'A118', 'ECG', 'Standard procedure', 1404.20, '2023-08-09'),
('T119', 'A119', 'Chemotherapy', 'Basic screening', 2911.22, '2023-12-18'),
('T120', 'A120', 'X-Ray', 'Basic screening', 935.04, '2023-12-08'),
('T121', 'A121', 'MRI', 'Advanced protocol', 2526.67, '2023-04-07'),
('T122', 'A122', 'X-Ray', 'Standard procedure', 3902.73, '2023-07-11'),
('T123', 'A123', 'Chemotherapy', 'Standard procedure', 2064.07, '2023-02-28'),
('T124', 'A124', 'Chemotherapy', 'Standard procedure', 3492.10, '2023-03-16'),
('T125', 'A125', 'Physiotherapy', 'Advanced protocol', 4079.52, '2023-02-18'),
('T126', 'A126', 'ECG', 'Advanced protocol', 4672.30, '2023-11-02'),
('T127', 'A127', 'Physiotherapy', 'Advanced protocol', 1555.89, '2023-11-13'),
('T128', 'A128', 'MRI', 'Advanced protocol', 2296.92, '2023-04-15'),
('T129', 'A129', 'X-Ray', 'Advanced protocol', 1185.87, '2023-08-25'),
('T130', 'A130', 'MRI', 'Basic screening', 4966.18, '2023-02-23'),
('T131', 'A131', 'Chemotherapy', 'Standard procedure', 4671.50, '2023-05-11'),
('T132', 'A132', 'Physiotherapy', 'Standard procedure', 2929.81, '2023-07-26'),
('T133', 'A133', 'Physiotherapy', 'Standard procedure', 4289.15, '2023-03-23'),
('T134', 'A134', 'Physiotherapy', 'Standard procedure', 2844.31, '2023-10-17'),
('T135', 'A135', 'MRI', 'Standard procedure', 3306.14, '2023-09-09'),
('T136', 'A136', 'Chemotherapy', 'Standard procedure', 901.06, '2023-05-13'),
('T137', 'A137', 'X-Ray', 'Standard procedure', 3898.72, '2023-10-25'),
('T138', 'A138', 'X-Ray', 'Standard procedure', 1074.71, '2023-12-26'),
('T139', 'A139', 'MRI', 'Basic screening', 4217.30, '2023-10-10'),
('T140', 'A140', 'Physiotherapy', 'Standard procedure', 4019.13, '2023-02-05'),
('T141', 'A141', 'ECG', 'Basic screening', 3689.35, '2023-06-15'),
('T142', 'A142', 'MRI', 'Advanced protocol', 662.72, '2023-11-01'),
('T143', 'A143', 'MRI', 'Standard procedure', 1864.08, '2023-09-21'),
('T144', 'A144', 'Chemotherapy', 'Advanced protocol', 1684.01, '2023-08-16'),
('T145', 'A145', 'X-Ray', 'Advanced protocol', 2120.61, '2023-11-11'),
('T146', 'A146', 'MRI', 'Advanced protocol', 894.39, '2023-01-05'),
('T147', 'A147', 'MRI', 'Basic screening', 4716.31, '2023-11-13'),
('T148', 'A148', 'Physiotherapy', 'Advanced protocol', 2992.11, '2023-12-06'),
('T149', 'A149', 'Physiotherapy', 'Advanced protocol', 1874.86, '2023-07-26'),
('T150', 'A150', 'ECG', 'Advanced protocol', 2286.42, '2023-08-16');

INSERT INTO treatments
values 
('T151', 'A151', 'Chemotherapy', 'Standard procedure', 2512.41, '2023-01-28'),
('T152', 'A152', 'ECG', 'Standard procedure', 3202.67, '2023-04-14'),
('T153', 'A153', 'Physiotherapy', 'Basic screening', 2820.56, '2023-07-08'),
('T154', 'A154', 'X-Ray', 'Basic screening', 4637.26, '2023-03-06'),
('T155', 'A155', 'Physiotherapy', 'Standard procedure', 2736.34, '2023-01-03'),
('T156', 'A156', 'Chemotherapy', 'Basic screening', 4964.71, '2023-11-22'),
('T157', 'A157', 'Physiotherapy', 'Standard procedure', 4331.41, '2023-05-12'),
('T158', 'A158', 'Chemotherapy', 'Advanced protocol', 1438.30, '2023-07-12'),
('T159', 'A159', 'Chemotherapy', 'Advanced protocol', 4687.68, '2023-04-08'),
('T160', 'A160', 'Chemotherapy', 'Basic screening', 1023.65, '2023-12-17'),
('T161', 'A161', 'Chemotherapy', 'Standard procedure', 4178.52, '2023-06-17'),
('T162', 'A162', 'Chemotherapy', 'Standard procedure', 2212.80, '2023-01-01'),
('T163', 'A163', 'X-Ray', 'Basic screening', 4450.88, '2023-06-27'),
('T164', 'A164', 'ECG', 'Standard procedure', 4406.26, '2023-07-28'),
('T165', 'A165', 'MRI', 'Advanced protocol', 4126.66, '2023-04-04'),
('T166', 'A166', 'ECG', 'Basic screening', 4055.14, '2023-01-12'),
('T167', 'A167', 'Chemotherapy', 'Basic screening', 1871.06, '2023-11-15'),
('T168', 'A168', 'X-Ray', 'Standard procedure', 864.14, '2023-09-29'),
('T169', 'A169', 'Physiotherapy', 'Basic screening', 2313.41, '2023-07-24'),
('T170', 'A170', 'X-Ray', 'Standard procedure', 1280.86, '2023-03-03'),
('T171', 'A171', 'Chemotherapy', 'Standard procedure', 3627.28, '2023-04-18'),
('T172', 'A172', 'X-Ray', 'Standard procedure', 2057.45, '2023-03-09'),
('T173', 'A173', 'X-Ray', 'Standard procedure', 4890.25, '2023-06-04'),
('T174', 'A174', 'Chemotherapy', 'Standard procedure', 3384.37, '2023-10-31'),
('T175', 'A175', 'X-Ray', 'Basic screening', 4201.16, '2023-10-22'),
('T176', 'A176', 'MRI', 'Advanced protocol', 1096.36, '2023-04-26'),
('T177', 'A177', 'MRI', 'Advanced protocol', 4379.07, '2023-08-16'),
('T178', 'A178', 'X-Ray', 'Basic screening', 4652.41, '2023-01-17'),
('T179', 'A179', 'Physiotherapy', 'Basic screening', 2691.78, '2023-03-08'),
('T180', 'A180', 'Chemotherapy', 'Advanced protocol', 3228.14, '2023-01-07'),
('T181', 'A181', 'MRI', 'Advanced protocol', 3941.64, '2023-09-03'),
('T182', 'A182', 'Physiotherapy', 'Advanced protocol', 1286.77, '2023-04-12'),
('T183', 'A183', 'X-Ray', 'Advanced protocol', 2761.55, '2023-02-03'),
('T184', 'A184', 'Physiotherapy', 'Advanced protocol', 2293.98, '2023-02-26'),
('T185', 'A185', 'ECG', 'Standard procedure', 1158.68, '2023-03-21'),
('T186', 'A186', 'MRI', 'Basic screening', 2153.90, '2023-03-27'),
('T187', 'A187', 'X-Ray', 'Standard procedure', 806.78, '2023-02-13'),
('T188', 'A188', 'Chemotherapy', 'Advanced protocol', 616.15, '2023-04-12'),
('T189', 'A189', 'X-Ray', 'Advanced protocol', 1108.25, '2023-10-05'),
('T190', 'A190', 'Chemotherapy', 'Advanced protocol', 4834.02, '2023-11-16'),
('T191', 'A191', 'X-Ray', 'Standard procedure', 2972.88, '2023-04-12'),
('T192', 'A192', 'Physiotherapy', 'Standard procedure', 4846.20, '2023-08-31'),
('T193', 'A193', 'Physiotherapy', 'Advanced protocol', 2446.24, '2023-09-15'),
('T194', 'A194', 'Physiotherapy', 'Standard procedure', 1903.17, '2023-04-06'),
('T195', 'A195', 'ECG', 'Standard procedure', 2777.64, '2023-08-19'),
('T196', 'A196', 'Chemotherapy', 'Advanced protocol', 2477.80, '2023-10-26'),
('T197', 'A197', 'Physiotherapy', 'Standard procedure', 975.49, '2023-04-01'),
('T198', 'A198', 'ECG', 'Basic screening', 3383.72, '2023-05-15'),
('T199', 'A199', 'Chemotherapy', 'Basic screening', 1472.17, '2023-05-01'),
('T200', 'A200', 'X-Ray', 'Basic screening', 3288.15, '2023-12-30');

insert into billing
values
('B001','P034','T001','2023-08-09',3941.97,'Insurance','Pending'),
('B002','P032','T002','2023-06-09',4158.44,'Insurance','Paid'),
('B003','P048','T003','2023-06-28',3731.55,'Insurance','Paid'),
('B004','P025','T004','2023-09-01',4799.86,'Insurance','Failed'),
('B005','P040','T005','2023-07-06',582.05,'Credit Card','Pending'),
('B006','P045','T006','2023-06-19',1381.00,'Insurance','Pending'),
('B007','P001','T007','2023-04-09',534.03,'Cash','Failed'),
('B008','P016','T008','2023-05-24',3413.64,'Cash','Failed'),
('B009','P039','T009','2023-03-05',4541.14,'Credit Card','Paid'),
('B010','P005','T010','2023-01-13',1595.67,'Cash','Paid'),
('B011','P022','T011','2023-11-12',4671.66,'Cash','Failed'),
('B012','P029','T012','2023-05-07',771.20,'Insurance','Pending'),
('B013','P003','T013','2023-08-16',4704.96,'Cash','Paid'),
('B014','P012','T014','2023-05-25',2082.30,'Credit Card','Paid'),
('B015','P026','T015','2023-01-15',956.39,'Insurance','Pending'),
('B016','P016','T016','2023-06-30',2686.42,'Insurance','Paid'),
('B017','P037','T017','2023-07-11',1655.49,'Credit Card','Pending'),
('B018','P022','T018','2023-11-14',1781.93,'Insurance','Pending'),
('B019','P029','T019','2023-02-06',1882.80,'Insurance','Pending'),
('B020','P014','T020','2023-12-05',4113.62,'Credit Card','Failed'),
('B021','P028','T021','2023-04-24',2926.23,'Insurance','Failed'),
('B022','P005','T022','2023-11-14',1900.88,'Credit Card','Failed'),
('B023','P047','T023','2023-05-09',3246.50,'Credit Card','Pending'),
('B024','P049','T024','2023-06-21',3722.68,'Cash','Pending'),
('B025','P030','T025','2023-02-25',1726.81,'Cash','Failed'),
('B026','P046','T026','2023-03-17',2360.97,'Insurance','Paid'),
('B027','P005','T027','2023-11-14',1048.49,'Insurance','Pending'),
('B028','P012','T028','2023-10-29',1315.17,'Credit Card','Paid'),
('B029','P016','T029','2023-06-25',3565.03,'Insurance','Paid'),
('B030','P026','T030','2023-08-29',1316.47,'Credit Card','Pending'),
('B031','P026','T031','2023-04-04',2863.24,'Credit Card','Pending'),
('B032','P048','T032','2023-11-06',3690.71,'Insurance','Paid'),
('B033','P021','T033','2023-09-23',980.95,'Credit Card','Paid'),
('B034','P039','T034','2023-06-13',3052.90,'Cash','Failed'),
('B035','P036','T035','2023-04-18',1654.53,'Insurance','Failed'),
('B036','P033','T036','2023-01-08',4833.17,'Cash','Pending'),
('B037','P030','T037','2023-03-28',2675.96,'Insurance','Failed'),
('B038','P037','T038','2023-02-23',4126.97,'Credit Card','Failed'),
('B039','P023','T039','2023-04-17',2976.02,'Insurance','Failed'),
('B040','P010','T040','2023-03-27',695.36,'Cash','Failed'),
('B041','P005','T041','2023-01-01',3349.18,'Credit Card','Paid'),
('B042','P036','T042','2023-03-21',4781.32,'Insurance','Pending'),
('B043','P034','T043','2023-03-29',3207.25,'Insurance','Failed'),
('B044','P031','T044','2023-09-20',4186.35,'Insurance','Paid'),
('B045','P010','T045','2023-09-28',4478.93,'Cash','Paid'),
('B046','P019','T046','2023-12-20',1526.36,'Cash','Paid'),
('B047','P032','T047','2023-05-02',1454.20,'Insurance','Failed'),
('B048','P001','T048','2023-01-16',3249.41,'Credit Card','Failed'),
('B049','P005','T049','2023-04-30',2349.63,'Credit Card','Pending'),
('B050','P045','T050','2023-08-16',4279.38,'Cash','Failed'),
('B051','P004','T051','2023-02-04',4550.10,'Credit Card','Failed'),
('B052','P016','T052','2023-07-12',2090.40,'Cash','Paid'),
('B053','P024','T053','2023-02-12',1565.92,'Insurance','Pending'),
('B054','P016','T054','2023-12-16',4012.36,'Cash','Failed'),
('B055','P002','T055','2023-10-06',1736.63,'Cash','Failed'),
('B056','P049','T056','2023-01-02',4201.76,'Insurance','Paid'),
('B057','P028','T057','2023-04-15',2406.82,'Credit Card','Paid'),
('B058','P032','T058','2023-05-09',3503.97,'Cash','Failed'),
('B059','P027','T059','2023-03-09',929.91,'Cash','Pending'),
('B060','P020','T060','2023-11-22',3307.37,'Insurance','Pending'),
('B061','P024','T061','2023-01-15',2532.95,'Credit Card','Paid'),
('B062','P012','T062','2023-06-14',3139.74,'Cash','Paid'),
('B063','P050','T063','2023-06-29',1256.06,'Insurance','Failed'),
('B064','P035','T064','2023-05-31',3815.93,'Cash','Paid'),
('B065','P033','T065','2023-04-24',4382.59,'Insurance','Failed'),
('B066','P033','T066','2023-05-10',1475.33,'Credit Card','Pending'),
('B067','P043','T067','2023-08-10',930.72,'Credit Card','Pending'),
('B068','P037','T068','2023-03-14',606.37,'Credit Card','Failed'),
('B069','P012','T069','2023-03-29',3388.87,'Credit Card','Paid'),
('B070','P003','T070','2023-08-26',3231.92,'Cash','Pending'),
('B071','P001','T071','2023-01-26',2960.14,'Cash','Paid'),
('B072','P033','T072','2023-06-12',1543.76,'Credit Card','Pending'),
('B073','P040','T073','2023-12-24',2259.08,'Credit Card','Failed'),
('B074','P010','T074','2023-07-23',3175.14,'Credit Card','Failed'),
('B075','P043','T075','2023-05-08',2735.45,'Cash','Failed'),
('B076','P044','T076','2023-11-27',4945.03,'Credit Card','Pending'),
('B077','P029','T077','2023-12-14',1113.98,'Credit Card','Paid'),
('B078','P013','T078','2023-09-17',3628.15,'Credit Card','Paid'),
('B079','P012','T079','2023-12-26',2319.43,'Insurance','Paid'),
('B080','P031','T080','2023-06-26',2426.90,'Credit Card','Pending'),
('B081','P046','T081','2023-01-06',3729.19,'Insurance','Pending'),
('B082','P002','T082','2023-01-20',3615.96,'Insurance','Pending'),
('B083','P050','T083','2023-11-07',4960.65,'Credit Card','Pending'),
('B084','P035','T084','2023-05-31',1077.77,'Insurance','Pending'),
('B085','P023','T085','2023-02-18',968.49,'Credit Card','Paid'),
('B086','P017','T086','2023-10-29',3759.52,'Cash','Pending'),
('B087','P026','T087','2023-10-19',3102.74,'Cash','Pending'),
('B088','P008','T088','2023-05-02',1733.72,'Cash','Paid'),
('B089','P029','T089','2023-02-14',857.39,'Cash','Pending'),
('B090','P026','T090','2023-06-01',885.46,'Insurance','Paid'),
('B091','P010','T091','2023-06-11',4523.86,'Credit Card','Paid'),
('B092','P026','T092','2023-01-30',1363.40,'Credit Card','Failed'),
('B093','P034','T093','2023-04-09',1955.17,'Credit Card','Failed'),
('B094','P041','T094','2023-04-08',1519.95,'Cash','Failed'),
('B095','P007','T095','2023-05-09',2097.48,'Cash','Failed'),
('B096','P004','T096','2023-07-07',812.41,'Credit Card','Pending'),
('B097','P050','T097','2023-05-06',2835.77,'Cash','Failed'),
('B098','P045','T098','2023-03-17',804.26,'Credit Card','Paid'),
('B099','P011','T099','2023-07-04',4101.60,'Credit Card','Pending'),
('B100','P029','T100','2023-03-02',1551.70,'Credit Card','Failed');

insert into billing
values
('B101','P036','T101','2023-09-21',2930.05,'Credit Card','Paid'),
('B102','P025','T102','2023-10-25',4460.36,'Credit Card','Pending'),
('B103','P021','T103','2023-01-24',3428.95,'Credit Card','Pending'),
('B104','P036','T104','2023-04-18',2898.31,'Credit Card','Failed'),
('B105','P010','T105','2023-08-14',1959.50,'Cash','Pending'),
('B106','P037','T106','2023-10-29',1998.51,'Credit Card','Paid'),
('B107','P009','T107','2023-04-17',3512.69,'Credit Card','Pending'),
('B108','P024','T108','2023-04-21',4973.63,'Cash','Paid'),
('B109','P035','T109','2023-07-29',3478.28,'Cash','Pending'),
('B110','P049','T110','2023-07-19',3010.03,'Cash','Failed'),
('B111','P035','T111','2023-05-22',3787.93,'Credit Card','Paid'),
('B112','P048','T112','2023-01-11',2593.43,'Insurance','Pending'),
('B113','P036','T113','2023-11-24',770.64,'Insurance','Pending'),
('B114','P018','T114','2023-08-08',3030.34,'Cash','Pending'),
('B115','P049','T115','2023-10-25',4809.31,'Insurance','Paid'),
('B116','P039','T116','2023-07-07',1288.86,'Cash','Paid'),
('B117','P032','T117','2023-06-20',3605.02,'Credit Card','Paid'),
('B118','P024','T118','2023-08-09',1404.20,'Insurance','Failed'),
('B119','P023','T119','2023-12-18',2911.22,'Credit Card','Failed'),
('B120','P032','T120','2023-12-08',935.04,'Insurance','Paid'),
('B121','P037','T121','2023-04-07',2526.67,'Credit Card','Pending'),
('B122','P012','T122','2023-07-11',3902.73,'Insurance','Failed'),
('B123','P049','T123','2023-02-28',2064.07,'Credit Card','Paid'),
('B124','P013','T124','2023-03-16',3492.10,'Credit Card','Pending'),
('B125','P023','T125','2023-02-18',4079.52,'Insurance','Failed'),
('B126','P025','T126','2023-11-02',4672.30,'Credit Card','Pending'),
('B127','P035','T127','2023-11-13',1555.89,'Credit Card','Pending'),
('B128','P041','T128','2023-04-15',2296.92,'Credit Card','Pending'),
('B129','P030','T129','2023-08-25',1185.87,'Insurance','Pending'),
('B130','P017','T130','2023-02-23',4966.18,'Insurance','Failed'),
('B131','P049','T131','2023-05-11',4671.50,'Credit Card','Failed'),
('B132','P020','T132','2023-07-26',2929.81,'Credit Card','Failed'),
('B133','P048','T133','2023-03-23',4289.15,'Insurance','Paid'),
('B134','P025','T134','2023-10-17',2844.31,'Insurance','Failed'),
('B135','P022','T135','2023-09-09',3306.14,'Credit Card','Pending'),
('B136','P013','T136','2023-05-13',901.06,'Credit Card','Failed'),
('B137','P019','T137','2023-10-25',3898.72,'Credit Card','Pending'),
('B138','P049','T138','2023-12-26',1074.71,'Cash','Paid'),
('B139','P036','T139','2023-10-10',4217.30,'Insurance','Pending'),
('B140','P012','T140','2023-02-05',4019.13,'Cash','Pending'),
('B141','P041','T141','2023-06-15',3689.35,'Insurance','Pending'),
('B142','P019','T142','2023-11-01',662.72,'Insurance','Paid'),
('B143','P012','T143','2023-09-21',1864.08,'Insurance','Failed'),
('B144','P009','T144','2023-08-16',1684.01,'Insurance','Failed'),
('B145','P007','T145','2023-11-11',2120.61,'Insurance','Paid'),
('B146','P028','T146','2023-01-05',894.39,'Insurance','Pending'),
('B147','P014','T147','2023-11-13',4716.31,'Insurance','Failed'),
('B148','P031','T148','2023-12-06',2992.11,'Cash','Paid'),
('B149','P019','T149','2023-07-26',1874.86,'Credit Card','Failed'),
('B150','P047','T150','2023-08-16',2286.42,'Credit Card','Paid'),
('B151','P016','T151','2023-01-28',2512.41,'Cash','Pending'),
('B152','P005','T152','2023-04-14',3202.67,'Cash','Failed'),
('B153','P035','T153','2023-07-08',2820.56,'Cash','Paid'),
('B154','P012','T154','2023-03-06',4637.26,'Cash','Failed'),
('B155','P025','T155','2023-01-03',2736.34,'Insurance','Failed'),
('B156','P021','T156','2023-11-22',4964.71,'Credit Card','Failed'),
('B157','P036','T157','2023-05-12',4331.41,'Insurance','Failed'),
('B158','P023','T158','2023-07-12',1438.30,'Credit Card','Paid'),
('B159','P016','T159','2023-04-08',4687.68,'Credit Card','Pending'),
('B160','P039','T160','2023-12-17',1023.65,'Cash','Paid'),
('B161','P045','T161','2023-06-17',4178.52,'Insurance','Paid'),
('B162','P042','T162','2023-01-01',2212.80,'Cash','Paid'),
('B163','P039','T163','2023-06-27',4450.88,'Insurance','Pending'),
('B164','P014','T164','2023-07-28',4406.26,'Credit Card','Failed'),
('B165','P031','T165','2023-04-04',4126.66,'Cash','Failed'),
('B166','P005','T166','2023-01-12',4055.14,'Cash','Failed'),
('B167','P035','T167','2023-11-15',1871.06,'Credit Card','Pending'),
('B168','P023','T168','2023-09-29',864.14,'Credit Card','Failed'),
('B169','P029','T169','2023-07-24',2313.41,'Credit Card','Pending'),
('B170','P043','T170','2023-03-03',1280.86,'Cash','Failed'),
('B171','P011','T171','2023-04-18',3627.28,'Insurance','Failed'),
('B172','P018','T172','2023-03-09',2057.45,'Cash','Paid'),
('B173','P047','T173','2023-06-04',4890.25,'Insurance','Pending'),
('B174','P012','T174','2023-10-31',3384.37,'Cash','Paid'),
('B175','P009','T175','2023-10-22',4201.16,'Cash','Paid'),
('B176','P010','T176','2023-04-26',1096.36,'Credit Card','Paid'),
('B177','P044','T177','2023-08-16',4379.07,'Insurance','Pending'),
('B178','P017','T178','2023-01-17',4652.41,'Cash','Pending'),
('B179','P038','T179','2023-03-08',2691.78,'Cash','Failed'),
('B180','P007','T180','2023-01-07',3228.14,'Credit Card','Paid'),
('B181','P046','T181','2023-09-03',3941.64,'Credit Card','Failed'),
('B182','P013','T182','2023-04-12',1286.77,'Insurance','Paid'),
('B183','P040','T183','2023-02-03',2761.55,'Cash','Pending'),
('B184','P042','T184','2023-02-26',2293.98,'Insurance','Pending'),
('B185','P009','T185','2023-03-21',1158.68,'Cash','Pending'),
('B186','P050','T186','2023-03-27',2153.90,'Insurance','Paid'),
('B187','P027','T187','2023-02-13',806.78,'Credit Card','Pending'),
('B188','P002','T188','2023-04-12',616.15,'Cash','Paid'),
('B189','P005','T189','2023-10-05',1108.25,'Insurance','Failed'),
('B190','P029','T190','2023-11-16',4834.02,'Credit Card','Paid'),
('B191','P037','T191','2023-04-12',2972.88,'Credit Card','Failed'),
('B192','P038','T192','2023-08-31',4846.20,'Insurance','Paid'),
('B193','P019','T193','2023-09-15',2446.24,'Cash','Failed'),
('B194','P008','T194','2023-04-06',1903.17,'Cash','Pending'),
('B195','P048','T195','2023-08-19',2777.64,'Credit Card','Failed'),
('B196','P045','T196','2023-10-26',2477.80,'Cash','Pending'),
('B197','P001','T197','2023-04-01',975.49,'Cash','Pending'),
('B198','P022','T198','2023-05-15',3383.72,'Cash','Failed'),
('B199','P017','T199','2023-05-01',1472.17,'Credit Card','Paid'),
('B200','P007','T200','2023-12-30',3288.15,'Insurance','Paid');


select * from doctor;
select * from patients;
select * from appointments;
select * from treatments;
select * from billing;

/*1 Show all patients details*/
select * from patients;

/*2 show the first name and specializations of all doctor */
select first_name,specialization from doctor;

/*3 show the distinct insurance_provider names from the patients table */

select distinct insurance_provider from patients;

/*4 show all distinct treatement type from the treatment table */

select distinct treatment_type from treatments;

/*5 show all doctors working in the 'westside clinic' branch*/
select * from doctor
where hospital_branch = 'westside clinic';

/*6 show all bills where payment_status is pending */
select * from billing
where payment_status = 'pending';

/*7 show all appoinments where status is scheduled */
select * from appointments
where status ='scheduled';

/*8 show treatments where cost is greater than 4000 */
select * from treatments
where cost > 4000;

/*9 show all patients where gender is 'F' */
select * from patients
where gender ='F';


/*10 show all bills ordered by amount in desending order */
select * from billing
order by amount desc;

/*11 show top 2 most expensive treatments */
select * from treatments
order by cost desc
limit 2;

/*12 show all patient details skipping the first 2 records */
select * from patients
limit 200
offset 2;

/*13 show count of patients grouped by insurance_provider */
select insurance_provider, count(*) as patients from patients
group by insurance_provider;


/*14 show count of appointments grouped by doctor_id */
select doctor_id,count(*) AS appointment from appointments
group by doctor_id;

/*15 show total bills amount grouped by payments_method */
select payment_method,count(*) as bill from billing
group by payment_method;

/*16 show count of appointments for each doctor but only those doctors who have more than 1 appointmnets */
select doctor_id,count(*) as appointments from appointments
group by doctor_id
having count(*) > 1;

/*17 show patient frist_name and insurance_provide using join */
select first_name ,insurance_provider from patients;


/*18 show patient name, doctor name, and appointment date using JOIN of appointments, doctors, and patients tables. */
select * from patients;
select * from doctor;
select * from appointments;

select p.first_name as Patient,d.first_name as Dr,a.appointment_date
from appointments as a
join patients as p 
on a.patient_id = p.patient_id
join doctor as d
on a.doctor_id = d.doctor_id ;

/* 19 show bill_id, amount, patient name, and treatment type using JOIN of bills, patients, and treatment tables.*/
select * from patients;
select * from billing;
select * from treatments;

select b.bill_id,b.amount,p.first_name as patient,t.treatment_type
from billing as b
join patients as p
on b.patient_id = p.patient_id
join treatments as t
on b.treatment_id = t.treatment_id;

/*20*/
select p.first_name as patient,d.first_name as Dr,a.appointment_date
from appointments as a
join patients as p 
on a.patient_id = p.patient_id
join doctor as d
on a.doctor_id = d.doctor_id
order by a.appointment_date desc
limit 3 ;

/*21 Show bill_id, bill_date, and patient name from bills and patients tables using JOIN.*/
select b.bill_id,b.bill_date,p.first_name  as patient
from billing as b
join patients as p
on b.patient_id = p.patient_id;


/*22 Show treatment_id, treatment_type, and appointment_date using JOIN between treatment and appointments tables.*/
select t.treatment_id,t.treatment_type,a.appointment_date
from appointments as a
join treatments as t
on a.appointment_id = t.appointments_id;

select * from doctor;
/*23 Show doctor first_name, specialization, and hospital_branch using only the doctors table (without JOIN).*/
select first_name,specialization,hospital_branch from doctor;


/*24 Show treatment_type and patient name using JOIN between treatment, appointments, and patients tables.*/
select p.first_name as patient,t.treatment_type
from patients as p
join appointments as a
on p.patient_id = a.patient_id
join treatments as t
on a.appointment_id = t.appointments_id;

/*25Show appointment_id, appointment_date, patient name, and doctor name using JOIN between appointments, patients, and doctors tables.*/
select a.appointment_id,a.appointment_date,p.first_name as patient,d.first_name as Dr
from appointments as a
join patients as p
on a.patient_id = p.patient_id
join doctor as d
on a.doctor_id = d.doctor_id;

select * from billing;
select * from treatments;
/*26 Show bill_id, bill amount, patient name, treatment_type, and doctor name using JOIN of bills, patients, treatment, and doctors tables.*/
select b.bill_id,b.amount,p.first_name as patient,t.treatment_type,d.first_name as Dr
from doctor as d
join appointments as a
on d.doctor_id = a.doctor_id
join patients as p
on p.patient_id = a.patient_id
join treatments as t
on t.appointments_id = a.appointment_id
join billing as b
on b.treatment_id = t.treatment_id;

select * from billing;
/*27Show appointment_id, appointment_date, reason_for_visit, patient name, treatment_type, and treatment cost using JOIN of appointments, patients, treatment, and bills tables.*/
select a.appointment_id,a.appointment_date,a.reason_for_visit,p.first_name as patient,t.treatment_type,b.amount
from appointments as a
join patients as p
on a.patient_id = p.patient_id
join treatments as t
on a.appointment_id = t.appointments_id
join billing as b
on t.treatment_id = b.treatment_id;



select * from patients;