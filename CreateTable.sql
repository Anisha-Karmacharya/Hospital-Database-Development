SQL> conn AnishaKarmacharya/18030846
Connected.
SQL> CREATE TABLE Patient(
  2  Patient_id VARCHAR2 (10)
  3  CONSTRAINT pat_pat_id_pk PRIMARY KEY,
  4  Patient_name VARCHAR2(30)
  5  CONSTRAINT pat_name_nn NOT NULL,
  6  Patient_type VARCHAR2(10)
  7  CONSTRAINT pat_type_nn NOT NULL,
  8  Age NUMBER(3)
  9  CONSTRAINT pat_age_nn NOT NULL,
 10  Patient_Email VARCHAR2 (35)
 11  CONSTRAINT pat_email_uk UNIQUE,
 12  Patient_cellphone_no Number (10)
 13  CONSTRAINT pat_cell_num_nn NOT NULL);

Table created.

SQL> DESC Patient;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 PATIENT_ID                                NOT NULL VARCHAR2(10)
 PATIENT_NAME                              NOT NULL VARCHAR2(30)
 PATIENT_TYPE                              NOT NULL VARCHAR2(10)
 AGE                                       NOT NULL NUMBER(3)
 PATIENT_EMAIL                                      VARCHAR2(35)
 PATIENT_CELLPHONE_NO                      NOT NULL NUMBER(10)

SQL> CREATE TABLE Patient_Address(
  2  Patientaddress_id  VARCHAR2 (10)
  3  CONSTRAINT add_add_id_pk PRIMARY KEY,
  4  Patient_city VARCHAR2 (25)
  5  CONSTRAINT city_nn NOT NULL,
  6  Patient_province NUMBER(5)
  7  CONSTRAINT pro_nn NOT NULL,
  8  Street VARCHAR2(15)
  9  CONSTRAINT srt_nn NOT NULL,
 10  Street_no Number(5)
 11  CONSTRAINT srtno_nn NOT NULL,
 12  State VARCHAR2 (25)
 13  CONSTRAINT st_nn NOT NULL,
 14  Country VARCHAR2(25)
 15  CONSTRAINT count_nn NOT NULL);

Table created.

SQL> DESC Patient_Address;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 PATIENTADDRESS_ID                         NOT NULL VARCHAR2(10)
 PATIENT_CITY                              NOT NULL VARCHAR2(25)
 PATIENT_PROVINCE                          NOT NULL NUMBER(5)
 STREET                                    NOT NULL VARCHAR2(15)
 STREET_NO                                 NOT NULL NUMBER(5)
 STATE                                     NOT NULL VARCHAR2(25)
 COUNTRY                                   NOT NULL VARCHAR2(25)

SQL> CREATE TABLE Patient_Address_Detail(
  2  PAD_id VARCHAR2(10)
  3  CONSTRAINT pat_add_id_pk PRIMARY KEY,
  4  Patientaddress_id VARCHAR2(25)
  5  CONSTRAINT pat_add_fk  REFERENCES Patient_Address(Patientaddress_id)
  6  CONSTRAINT pat_add_nn NOT NULL,
  7  Patient_id VARCHAR2 (25)
  8  CONSTRAINT pat_pat_fk  REFERENCES patient(patient_id)
  9  CONSTRAINT pat_pat_nn NOT NULL);

Table created.

SQL> DESC Patient_Address_Detail;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 PAD_ID                                    NOT NULL VARCHAR2(10)
 PATIENTADDRESS_ID                         NOT NULL VARCHAR2(25)
 PATIENT_ID                                NOT NULL VARCHAR2(25)

SQL> CREATE TABLE Patient_Contact(
  2  Patientphone_id VARCHAR2(10)
  3  CONSTRAINT pat_con_id_pk PRIMARY KEY,
  4  Patientaddress_id VARCHAR2(10)
  5  CONSTRAINT con_add_fk  REFERENCES Patient_Address(Patientaddress_id)
  6  CONSTRAINT con_add_nn NOT NULL,
  7  PatientPhone_number NUMBER(10)
  8  CONSTRAINT pat_pnum_uk UNIQUE
  9  CONSTRAINT pat_pnum_nn NOT NULL,
 10  Patient_Fax_no NUMBER(5)
 11  CONSTRAINT pat_Fanum_uk UNIQUE);

Table created.

SQL> DESC Patient_Contact;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 PATIENTPHONE_ID                           NOT NULL VARCHAR2(10)
 PATIENTADDRESS_ID                         NOT NULL VARCHAR2(10)
 PATIENTPHONE_NUMBER                       NOT NULL NUMBER(10)
 PATIENT_FAX_NO                                     NUMBER(5)

SQL> CREATE TABLE Treatment(
  2  Treatment_ID VARCHAR2(10)
  3  CONSTRAINT Pat_trt_id_pk PRIMARY KEY,
  4  Treatment_name VARCHAR2(25)
  5  CONSTRAINT Treat_nn NOT NULL);

Table created.

SQL> DESC Treatment;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 TREATMENT_ID                              NOT NULL VARCHAR2(10)
 TREATMENT_NAME                            NOT NULL VARCHAR2(25)

SQL> CREATE TABLE WARD(
  2  WARD_NO VARCHAR2(5)
  3  CONSTRAINT Pat_wrd_id_pk PRIMARY KEY,
  4  Ward_type VARCHAR2(25)
  5  CONSTRAINT wrd_typ_nn NOT NULL);

Table created.

SQL> DESC WARD;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 WARD_NO                                   NOT NULL VARCHAR2(5)
 WARD_TYPE                                 NOT NULL VARCHAR2(25)

SQL> CREATE TABLE Payment(
  2  Payment_ID VARCHAR2(10)
  3  CONSTRAINT Pat_pay_id_pk PRIMARY KEY,
  4  Total NUMBER(10)
  5  CONSTRAINT pat_pay_nn NOT NULL,
  6  Discount NUMBER(10)
  7  CONSTRAINT pat_pay_disc_nn NOT NULL,
  8  Payment_Amount NUMBER(10)
  9  CONSTRAINT pat_pay_amt_nn NOT NULL);

Table created.

SQL> DESC Payment;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 PAYMENT_ID                                NOT NULL VARCHAR2(10)
 TOTAL                                     NOT NULL NUMBER(10)
 DISCOUNT                                  NOT NULL NUMBER(10)
 PAYMENT_AMOUNT                            NOT NULL NUMBER(10)

SQL> CREATE TABLE Appointment(
  2  Appointment_ID VARCHAR2(10)
  3  CONSTRAINT Pat_App_id_pk PRIMARY KEY,
  4  Appointment_name VARCHAR2(25)
  5  CONSTRAINT App_id_nn NOT NULL,
  6  Appointment_date DATE
  7  CONSTRAINT App_date_nn NOT NULL,
  8  Booked_date DATE
  9  CONSTRAINT booked_date_nn NOT NULL,
 10  Status VARCHAR2(10)
 11  CONSTRAINT Status_nn NOT NULL,
 12  Treatment_ID VARCHAR2(5)
 13  CONSTRAINT pat_trt_fk  REFERENCES Treatment(Treatment_ID)
 14  CONSTRAINT pat_trt_nn NOT NULL,
 15  Ward_no VARCHAR2(5)
 16  CONSTRAINT pat_wrd_fk  REFERENCES Ward(Ward_no)
 17  CONSTRAINT pat_wrd_nn NOT NULL,
 18  Payment_ID VARCHAR2(5)
 19  CONSTRAINT pat_pay_fk  REFERENCES Payment(Payment_ID)
 20  CONSTRAINT pay_pay_nn NOT NULL);

Table created.

SQL> DESC Appointment;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 APPOINTMENT_ID                            NOT NULL VARCHAR2(10)
 APPOINTMENT_NAME                          NOT NULL VARCHAR2(25)
 APPOINTMENT_DATE                          NOT NULL DATE
 BOOKED_DATE                               NOT NULL DATE
 STATUS                                    NOT NULL VARCHAR2(10)
 TREATMENT_ID                              NOT NULL VARCHAR2(5)
 WARD_NO                                   NOT NULL VARCHAR2(5)
 PAYMENT_ID                                NOT NULL VARCHAR2(5)

SQL> DESC Appointment;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 APPOINTMENT_ID                            NOT NULL VARCHAR2(10)
 APPOINTMENT_NAME                          NOT NULL VARCHAR2(25)
 APPOINTMENT_DATE                          NOT NULL DATE
 BOOKED_DATE                               NOT NULL DATE
 STATUS                                    NOT NULL VARCHAR2(10)
 TREATMENT_ID                              NOT NULL VARCHAR2(5)
 WARD_NO                                   NOT NULL VARCHAR2(5)
 PAYMENT_ID                                NOT NULL VARCHAR2(5)

SQL> CREATE TABLE STAFF (
  2  Staff_id VARCHAR2(10)
  3  CONSTRAINT Sta_ID_pk PRIMARY KEY,
  4  Staff_name VARCHAR2(30)
  5  CONSTRAINT Sta_name_nn NOT NULL,
  6  Staff_type VARCHAR2(10)
  7  CONSTRAINT Sta_type_nn NOT NULL,
  8  Certification VARCHAR2(15)
  9  CONSTRAINT Sta_Cert_nn Not NULL,
 10  Commission NUMBER(6)
 11  CONSTRAINT Sta_comm_nn NOT NULL,
 12  Salary NUMBER(10)
 13  CONSTRAINT Sta_sal_ck CHECK (Salary > 0)
 14  CONSTRAINT Sta_sal_nn NOT NULL,
 15  Staff_email VARCHAR2(35)
 16  CONSTRAINT Sta_email_uk UNIQUE
 17  CONSTRAINT Sta_email_nn NOT NULL,
 18  Staff_address VARCHAR2(30)
 19  CONSTRAINT Sta_add_nn NOT NULL);

Table created.

SQL> DESC Staff;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 STAFF_ID                                  NOT NULL VARCHAR2(10)
 STAFF_NAME                                NOT NULL VARCHAR2(30)
 STAFF_TYPE                                NOT NULL VARCHAR2(10)
 CERTIFICATION                             NOT NULL VARCHAR2(15)
 COMMISSION                                NOT NULL NUMBER(6)
 SALARY                                    NOT NULL NUMBER(10)
 STAFF_EMAIL                               NOT NULL VARCHAR2(35)
 STAFF_ADDRESS                             NOT NULL VARCHAR2(30)

SQL> CREATE TABLE Staff_Address(
  2  Staffaddress_id  VARCHAR2 (10)
  3  CONSTRAINT stf_add_id_pk PRIMARY KEY,
  4  Staff_city VARCHAR2 (25)
  5  CONSTRAINT stf_city_nn NOT NULL,
  6  Staff_province NUMBER(5)
  7  CONSTRAINT stf_pro_nn NOT NULL,
  8  Staff_Street VARCHAR2(15)
  9  CONSTRAINT stf_srt_nn NOT NULL,
 10  Staff_Street_no Number(5)
 11  CONSTRAINT stf_srtno_nn NOT NULL,
 12  Staff_State VARCHAR2 (25)
 13  CONSTRAINT stf_st_nn NOT NULL,
 14  Staff_Country VARCHAR2(25)
 15  CONSTRAINT stf_count_nn NOT NULL);

Table created.

SQL> DESC Staff_Address;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 STAFFADDRESS_ID                           NOT NULL VARCHAR2(10)
 STAFF_CITY                                NOT NULL VARCHAR2(25)
 STAFF_PROVINCE                            NOT NULL NUMBER(5)
 STAFF_STREET                              NOT NULL VARCHAR2(15)
 STAFF_STREET_NO                           NOT NULL NUMBER(5)
 STAFF_STATE                               NOT NULL VARCHAR2(25)
 STAFF_COUNTRY                             NOT NULL VARCHAR2(25)

SQL> 
SQL> CREATE TABLE Staff_Address_Detail(
  2  SAD_id VARCHAR2(10)
  3  CONSTRAINT stf_add_det_id_pk PRIMARY KEY,
  4  Staffaddress_id VARCHAR2(10)
  5  CONSTRAINT stf_add_id_fk  REFERENCES Staff_Address(Staffaddress_id)
  6  CONSTRAINT stf_add_id_nn NOT NULL,
  7  Staff_id VARCHAR2 (25)
  8  CONSTRAINT stf_id_fk  REFERENCES Staff(Staff_id)
  9  CONSTRAINT stf_id_nn NOT NULL);

Table created.

SQL> DESC Staff_Address_Detail;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 SAD_ID                                    NOT NULL VARCHAR2(10)
 STAFFADDRESS_ID                           NOT NULL VARCHAR2(10)
 STAFF_ID                                  NOT NULL VARCHAR2(25)

SQL> CREATE TABLE Staff_Contact(
  2  Staffphone_id VARCHAR2(10)
  3  CONSTRAINT stf_con_id_pk PRIMARY KEY,
  4  Staffaddress_id VARCHAR2(10)
  5  CONSTRAINT stf_con_add_fk  REFERENCES Staff_Address(Staffaddress_id)
  6  CONSTRAINT stf_con_add_nn NOT NULL,
  7  StaffPhone_number NUMBER(10)
  8  CONSTRAINT stf_pnum_uk UNIQUE
  9  CONSTRAINT stf_pnum_nn NOT NULL,
 10  Staff_Fax_no NUMBER(5)
 11  CONSTRAINT stf_Fanum_uk UNIQUE);

Table created.

SQL> Desc Staff_contact;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 STAFFPHONE_ID                             NOT NULL VARCHAR2(10)
 STAFFADDRESS_ID                           NOT NULL VARCHAR2(10)
 STAFFPHONE_NUMBER                         NOT NULL NUMBER(10)
 STAFF_FAX_NO                                       NUMBER(5)

SQL> CREATE TABLE Appointment_detail(
  2  AD_ID VARCHAR2(10)
  3  CONSTRAINT Ad_ID_pk PRIMARY KEY,
  4  Appointment_ID VARCHAR2(10)
  5  CONSTRAINT AD_app_ID_nn NOT NULL
  6  CONSTRAINT AD_app_ID_fk  REFERENCES Appointment(Appointment_ID),
  7  Staff_ID VARCHAR2(10)
  8  CONSTRAINT AD_stf_ID_fk  REFERENCES Staff(Staff_ID)
  9  CONSTRAINT AD_stf_ID_nn NOT NULL,
 10  Patient_id VARCHAR2(10)
 11  CONSTRAINT AD_pat_ID_fk  REFERENCES Patient(Patient_ID)
 12  CONSTRAINT AD_pat_ID_nn NOT NULL);

Table created.

SQL> 
SQL> DESC appointment_detail;
 Name                                      Null?    Type
 ----------------------------------------- -------- ----------------------------
 AD_ID                                     NOT NULL VARCHAR2(10)
 APPOINTMENT_ID                            NOT NULL VARCHAR2(10)
 STAFF_ID                                  NOT NULL VARCHAR2(10)
 PATIENT_ID                                NOT NULL VARCHAR2(10)

SQL> spool off;
