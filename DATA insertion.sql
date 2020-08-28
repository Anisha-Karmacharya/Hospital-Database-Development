INSERT ALL
INTO Patient(Patient_id, Patient_name, Patient_type, Age, Patient_Email, Patient_cellphone_no) VALUES ('PA-1', 'Sabrina Joseph', 'New', 20, 'josh_sab@gmail.com', 0209877456)
INTO Patient(Patient_id, Patient_name, Patient_type, Age, Patient_Email, Patient_cellphone_no) VALUES ('PA-2', 'Carrline Shrestha', 'Regular', 19, 'shresCar@gmail.com', 5745699001)
INTO Patient(Patient_id, Patient_name, Patient_type, Age, Patient_Email, Patient_cellphone_no) VALUES ('PA-3', 'Celeste Sakya', 'Staff', 25, 'cesak@gmail.com', 1990357456)
INTO Patient(Patient_id, Patient_name, Patient_type, Age, Patient_Email, Patient_cellphone_no) VALUES ('PA-4', 'Piyush Dangol', 'New', 21, 'PiyushDangol@gmail.com', 6537734791)
INTO Patient(Patient_id, Patient_name, Patient_type, Age, Patient_Email, Patient_cellphone_no) VALUES ('PA-5', 'Aayush Shrestha', 'Staff', 29, 'AayShre@gmail.com',  6342745939)
INTO Patient(Patient_id, Patient_name, Patient_type, Age, Patient_Email, Patient_cellphone_no) VALUES ('PA-6', 'Anusha Shrestha', 'Regular', 24, 'anuShare@gmail.com', 9391111234)
INTO Patient(Patient_id, Patient_name, Patient_type, Age, Patient_Email, Patient_cellphone_no) VALUES ('PA-7', 'Ansul Bhattarai', 'Regular', 39, 'BhatAnsul@gmail.com',4414256234)
SELECT * FROM DUAL;

SELECT * FROM Patient;

INSERT ALL
INTO Patient_Address(Patientaddress_id, Patient_city, Patient_province, street, street_no, state, country) VALUES ('Adrs1', 'London','7', 'Addle Hill', '12', 'Aberdeenshire', 'United Kingdom')
INTO Patient_Address(Patientaddress_id, Patient_city, Patient_province, street, street_no, state, country) VALUES ('Adrs2', 'Manchester','+7', 'Belfast', '36', 'Addle Hill', 'United Kingdom')
INTO Patient_Address(Patientaddress_id, Patient_city, Patient_province, street, street_no, state, country) VALUES ('Adrs3', 'Liverpool','6', 'Down', '67', 'Back Alley', 'United Kingdom')
INTO Patient_Address(Patientaddress_id, Patient_city, Patient_province, street, street_no, state, country) VALUES ('Adrs4', 'Glasgow','5', 'Dyfed', '88', 'Castle Court', 'United Kingdom')
INTO Patient_Address(Patientaddress_id, Patient_city, Patient_province, street, street_no, state, country) VALUES ('Adrs5', 'Edinburgh','1', 'Sussex', '90', 'George Yard', 'United Kingdom')
INTO Patient_Address(Patientaddress_id, Patient_city, Patient_province, street, street_no, state, country) VALUES ('Adrs6', 'City of London','3', 'Golden lane', '301', 'Lincolnshire', 'United Kingdom')
INTO Patient_Address(Patientaddress_id, Patient_city, Patient_province, street, street_no, state, country) VALUES ('Adrs7', 'Birmingham','4', 'Haydon Street', '25', 'Middlesex', 'United Kingdom')
SELECT * FROM DUAL;

SELECT * FROM Patient_Address;

INSERT ALL
INTO Patient_Address_Detail(PAD_ID, Patientaddress_id, Patient_id) VALUES ('PADID-1', 'Adrs1', 'PA-1')
INTO Patient_Address_Detail(PAD_ID, Patientaddress_id, Patient_id) VALUES ('PADID-2', 'Adrs5', 'PA-4')
INTO Patient_Address_Detail(PAD_ID, Patientaddress_id, Patient_id) VALUES ('PADID-3', 'Adrs6', 'PA-3')
INTO Patient_Address_Detail(PAD_ID, Patientaddress_id, Patient_id) VALUES ('PADID-4', 'Adrs2', 'PA-7')
INTO Patient_Address_Detail(PAD_ID, Patientaddress_id, Patient_id) VALUES ('PADID-5', 'Adrs3', 'PA-2')
INTO Patient_Address_Detail(PAD_ID, Patientaddress_id, Patient_id) VALUES ('PADID-6', 'Adrs4', 'PA-5')
INTO Patient_Address_Detail(PAD_ID, Patientaddress_id, Patient_id) VALUES ('PADID-7', 'Adrs7', 'PA-6')
SELECT * FROM DUAL;

SELECT * FROM Patient_Address_Detail;

INSERT ALL
INTO  Patient_contact(Patientphone_id, Patientaddress_id, Patientphone_number, Patient_Fax_no) VALUES ('PH-1', 'Adrs1',9779843564,  16188)
INTO  Patient_contact(Patientphone_id, Patientaddress_id, Patientphone_number, Patient_Fax_no) VALUES ('PH-2', 'Adrs4',9431229564,  10088)
INTO  Patient_contact(Patientphone_id, Patientaddress_id, Patientphone_number, Patient_Fax_no) VALUES ('PH-3', 'Adrs6',9431246600,  00188)
INTO  Patient_contact(Patientphone_id, Patientaddress_id, Patientphone_number, Patient_Fax_no) VALUES ('PH-4', 'Adrs7',8976350010,  10172)
INTO  Patient_contact(Patientphone_id, Patientaddress_id, Patientphone_number, Patient_Fax_no) VALUES ('PH-5', 'Adrs3',5001734780,  22245)
INTO  Patient_contact(Patientphone_id, Patientaddress_id, Patientphone_number, Patient_Fax_no) VALUES ('PH-6', 'Adrs2', 5678888180, 97676)
INTO  Patient_contact(Patientphone_id, Patientaddress_id, Patientphone_number, Patient_Fax_no) VALUES ('PH-7', 'Adrs5', 1917800234, 99909)
SELECT * FROM DUAL;

SELECT * FROM Patient_Contact;

INSERT ALL
INTO Treatment(Treatment_ID, Treatment_name) VALUES ('T1', 'Gastric Biopsy')
INTO Treatment(Treatment_ID, Treatment_name) VALUES ('T2', 'Cataract Surgery')
INTO Treatment(Treatment_ID, Treatment_name) VALUES ('T3', 'Obstetrics')
INTO Treatment(Treatment_ID, Treatment_name) VALUES ('T4', 'Chest X-Ray')
INTO Treatment(Treatment_ID, Treatment_name) VALUES ('T5', 'Nasal Congestion')
INTO Treatment(Treatment_ID, Treatment_name) VALUES ('T6', 'Hyperhidrosis')
INTO Treatment(Treatment_ID, Treatment_name) VALUES ('T7', 'Endoscopy')
SELECT * FROM DUAL;

SELECT * FROM Treatment;

INSERT ALL
INTO WARD (Ward_no, Ward_Type) VALUES ('W01', 'General')
INTO WARD (Ward_no, Ward_Type) VALUES ('W02', 'General')
INTO WARD (Ward_no, Ward_Type) VALUES ('W03', 'ICU')
INTO WARD (Ward_no, Ward_Type) VALUES ('W04', 'General')
INTO WARD (Ward_no, Ward_Type) VALUES ('W05', 'Emergency')
INTO WARD (Ward_no, Ward_Type) VALUES ('W06', 'Emergency')
INTO WARD (Ward_no, Ward_Type) VALUES ('W07', 'General')
SELECT * FROM DUAL;

SELECT * FROM Ward;

INSERT ALL
INTO PAYMENT (Payment_ID, Total, Discount, Payment_Amount) VALUES ('Pay_1', 10000, 10000, 0)
INTO PAYMENT (Payment_ID, Total, Discount, Payment_Amount) VALUES ('Pay_2', 5000, 0,5000)
INTO PAYMENT (Payment_ID, Total, Discount, Payment_Amount) VALUES ('Pay_3', 51000, 0,51000)
INTO PAYMENT (Payment_ID, Total, Discount, Payment_Amount) VALUES ('Pay_4', 8000, 0,8000)
INTO PAYMENT (Payment_ID, Total, Discount, Payment_Amount) VALUES ('Pay_5', 3500, 0,3500)
INTO PAYMENT (Payment_ID, Total, Discount, Payment_Amount) VALUES ('Pay_6', 35000, 0,35000)
INTO PAYMENT (Payment_ID, Total, Discount, Payment_Amount) VALUES ('Pay_7', 2500, 0,2500)
SELECT * FROM DUAL;

SELECT * FROM Payment;

INSERT ALL
INTO Appointment (APPOINTMENT_ID, APPOINTMENT_NAME,  APPOINTMENT_DATE, BOOKED_DATE, STATUS, TREATMENT_ID, WARD_NO, PAYMENT_ID) VALUES ('AID1', 'Gastrology', '01-JAN-2019', '28-DEC-2019', 'Done','T1', 'W02', 'Pay_4')
INTO Appointment (APPOINTMENT_ID, APPOINTMENT_NAME,  APPOINTMENT_DATE, BOOKED_DATE, STATUS, TREATMENT_ID, WARD_NO, PAYMENT_ID) VALUES ('AID2', 'Cardio', '22-MAY-2019', '18-MAY-2019', 'Done', 'T4', 'W01', 'Pay_6')
INTO Appointment (APPOINTMENT_ID, APPOINTMENT_NAME,  APPOINTMENT_DATE, BOOKED_DATE, STATUS, TREATMENT_ID, WARD_NO, PAYMENT_ID) VALUES ('AID3', 'ENT', '11-JUN-2019', '05-JUN-2019', 'Done','T5', 'W03', 'Pay_7')
INTO Appointment (APPOINTMENT_ID, APPOINTMENT_NAME,  APPOINTMENT_DATE, BOOKED_DATE, STATUS, TREATMENT_ID, WARD_NO, PAYMENT_ID) VALUES ('AID4', 'Gynecology', '16-AUG-2019', '10-AUG-2019', 'Done','T3', 'W04', 'Pay_1')
INTO Appointment (APPOINTMENT_ID, APPOINTMENT_NAME,  APPOINTMENT_DATE, BOOKED_DATE, STATUS, TREATMENT_ID, WARD_NO, PAYMENT_ID) VALUES ('AID5', 'Dermatology', '25-SEP-2019', '20-SEP-2019', 'Done','T6', 'W06', 'Pay_5')
INTO Appointment (APPOINTMENT_ID, APPOINTMENT_NAME,  APPOINTMENT_DATE, BOOKED_DATE, STATUS, TREATMENT_ID, WARD_NO, PAYMENT_ID) VALUES ('AID6', ' General Surgery', '25-DEC-2019', '20-DEC-2019', 'Pending','T2', 'W07', 'Pay_3')
INTO Appointment (APPOINTMENT_ID, APPOINTMENT_NAME,  APPOINTMENT_DATE, BOOKED_DATE, STATUS, TREATMENT_ID, WARD_NO, PAYMENT_ID) VALUES ('AID7', 'Gastrology', '27-DEC-2019', '23-DEC-2019', 'Pending','T7', 'W05', 'Pay_2')
SELECT * FROM DUAL;

SELECT * FROM Appointment;

INSERT ALL
INTO Staff (Staff_ID, Staff_Name, Staff_Type, Certification, Commission, Salary, Staff_Email, Staff_CellPhone_No) Values ('S_1', 'Celeste Sakya', 'Doctor', 'Certified', 50000, 200000,'cesak@gmail.com', 5878888180)
INTO Staff (Staff_ID, Staff_Name, Staff_Type, Certification, Commission, Salary, Staff_Email, Staff_CellPhone_No) Values ('S_2', 'Aayush Shrestha', 'Assistant', 'Uncertified', 0, 50000,'aayshre@gmail.com', 9431229564)
INTO Staff (Staff_ID, Staff_Name, Staff_Type, Certification, Commission, Salary, Staff_Email, Staff_CellPhone_No) Values ('S_3','Puja Shrestha', 'Nurse', 'Certified', 5000, 70000,'PujShr@gmail.com', 878970180)
INTO Staff (Staff_ID, Staff_Name, Staff_Type, Certification, Commission, Salary, Staff_Email, Staff_CellPhone_No) Values ('S_4','Irene Sharma', 'Doctor', 'Uncertified', 0, 70000,'Sharmir@gmail.com', 9845234220)
INTO Staff (Staff_ID, Staff_Name, Staff_Type, Certification, Commission, Salary, Staff_Email, Staff_CellPhone_No) Values ('S_5','George Smith', 'Assistant', 'Certified',10000, 75000,'GSmith@gmail.com', 776543200)
INTO Staff (Staff_ID, Staff_Name, Staff_Type, Certification, Commission, Salary, Staff_Email, Staff_CellPhone_No) Values ('S_6','KL Rahul', 'Doctor', 'Certified',50000, 500000,'KLrahul@gmail.com', 576543200)
INTO Staff (Staff_ID, Staff_Name, Staff_Type, Certification, Commission, Salary, Staff_Email, Staff_CellPhone_No) Values ('S_7','luja Dangol', 'Nurse', 'Certified',50000, 150000,'lujDangol@gmail.com', 9876543213)
SELECT * FROM DUAL;

SELECT * FROM Staff;

INSERT ALL
INTO Staff_Address(StaffAddress_id, Staff_city, Staff_province, Staff_street, Staff_street_no, Staff_state, Staff_country) VALUES ('S_Adrs1', 'Clarence','9', ' Letsby Avenue', '12', ' Aberdeen City', 'United Kingdom')
INTO Staff_Address(StaffAddress_id, Staff_city, Staff_province, Staff_street, Staff_street_no, Staff_state, Staff_country) VALUES ('S_Adrs2', 'Manchester','12', ' CavaApproach', '36', ' Berkshire', 'United Kingdom')
INTO Staff_Address(StaffAddress_id, Staff_city, Staff_province, Staff_street, Staff_street_no, Staff_state, Staff_country) VALUES ('S_Adrs3', 'Birmingham','6', ' Needless Alley', '67', 'Back Alley', 'United Kingdom')
INTO Staff_Address(StaffAddress_id, Staff_city, Staff_province, Staff_street, Staff_street_no, Staff_state, Staff_country) VALUES ('S_Adrs4', 'Glasgow','5', 'Dyfed', '88', 'Castle Court', 'United Kingdom')
INTO Staff_Address(StaffAddress_id, Staff_city, Staff_province, Staff_street, Staff_street_no, Staff_state, Staff_country) VALUES ('S_Adrs5', 'Kensington','11', 'Sussex', '90', ' Durham', 'United Kingdom')
INTO Staff_Address(StaffAddress_id, Staff_city, Staff_province, Staff_street, Staff_street_no, Staff_state, Staff_country) VALUES ('S_Adrs6', 'City of London','3', 'Golden lane', '301', 'Lincolnshire', 'United Kingdom')
INTO Staff_Address(StaffAddress_id, Staff_city, Staff_province, Staff_street, Staff_street_no, Staff_state, Staff_country) VALUES ('S_Adrs7', 'Glasgow','41', 'Queensway', '25', 'Dyfed', 'United Kingdom')
SELECT * FROM DUAL;

SELECT * FROM Staff_Address;

INSERT ALL
INTO Staff_Address_Detail(SAD_ID, Staffaddress_id, Staff_id) VALUES ('SADID-1', 'S_Adrs6', 'S_1')
INTO Staff_Address_Detail(SAD_ID, Staffaddress_id, Staff_id) VALUES ('SADID-2', 'S_Adrs5', 'S_4')
INTO Staff_Address_Detail(SAD_ID, Staffaddress_id, Staff_id) VALUES ('SADID-3', 'S_Adrs1', 'S_3')
INTO Staff_Address_Detail(SAD_ID, Staffaddress_id, Staff_id) VALUES ('SADID-4', 'S_Adrs2', 'S_7')
INTO Staff_Address_Detail(SAD_ID, Staffaddress_id, Staff_id) VALUES ('SADID-5', 'S_Adrs4', 'S_2')
INTO Staff_Address_Detail(SAD_ID, Staffaddress_id, Staff_id) VALUES ('SADID-6', 'S_Adrs3', 'S_5')
INTO Staff_Address_Detail(SAD_ID, Staffaddress_id, Staff_id) VALUES ('SADID-7', 'S_Adrs7', 'S_6')
SELECT * FROM DUAL;

SELECT * FROM Staff_Address_Detail;

INSERT ALL
 INTO Appointment_Detail(AD_ID, Appointment_ID, Staff_ID, Patient_ID) VALUES ('AD_1', 'AID4', 'S_6', 'PA-3')
 INTO Appointment_Detail(AD_ID, Appointment_ID, Staff_ID, Patient_ID) VALUES ('AD_2', 'AID6', 'S_5', 'PA-2')
 INTO Appointment_Detail(AD_ID, Appointment_ID, Staff_ID, Patient_ID) VALUES ('AD_3', 'AID3', 'S_7', 'PA-5')
 INTO Appointment_Detail(AD_ID, Appointment_ID, Staff_ID, Patient_ID) VALUES ('AD_4', 'AID7', 'S_1', 'PA-7')
 INTO Appointment_Detail(AD_ID, Appointment_ID, Staff_ID, Patient_ID) VALUES ('AD_5', 'AID1', 'S_4', 'PA-6')
 INTO Appointment_Detail(AD_ID, Appointment_ID, Staff_ID, Patient_ID) VALUES ('AD_6', 'AID5', 'S_2', 'PA-4')
 INTO Appointment_Detail(AD_ID, Appointment_ID, Staff_ID, Patient_ID) VALUES ('AD_7', 'AID6', 'S_3', 'PA-1')
SELECT * FROM DUAL;

SELECT * FROM Appointment_Detail;

