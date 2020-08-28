SQL> SELECT p.Patient_ID, p.Patient_Name, p.Patient_type, pa.PatientAddress_ID, pa.patient_city, pa.patient_province, pa.street, pa.street_no, pa.state, pa.Country
  2  FROM Patient p INNER JOIN Patient_Address_Detail pad ON p.Patient_ID = pad.Patient_ID
  3  INNER JOIN Patient_Address pa ON pad.PatientAddress_ID = pa.PatientAddress_ID;

PATIENT_ID PATIENT_NAME                   PATIENT_TY PATIENTADD                 
---------- ------------------------------ ---------- ----------                 
PATIENT_CITY              PATIENT_PROVINCE STREET           STREET_NO           
------------------------- ---------------- --------------- ----------           
STATE                     COUNTRY                                               
------------------------- -------------------------                             
PA-1       Sabrina Joseph                 New        Adrs1                      
London                                   7 Addle Hill              12           
Aberdeenshire             United Kingdom                                        
                                                                                
PA-7       Ansul Bhattarai                Regular    Adrs2                      
Manchester                               7 Belfast                 36           
Addle Hill                United Kingdom                                        

PATIENT_ID PATIENT_NAME                   PATIENT_TY PATIENTADD                 
---------- ------------------------------ ---------- ----------                 
PATIENT_CITY              PATIENT_PROVINCE STREET           STREET_NO           
------------------------- ---------------- --------------- ----------           
STATE                     COUNTRY                                               
------------------------- -------------------------                             
                                                                                
PA-2       Carrline Shrestha              Regular    Adrs3                      
Liverpool                                6 Down                    67           
Back Alley                United Kingdom                                        
                                                                                
PA-5       Aayush Shrestha                Staff      Adrs4                      
Glasgow                                  5 Dyfed                   88           

PATIENT_ID PATIENT_NAME                   PATIENT_TY PATIENTADD                 
---------- ------------------------------ ---------- ----------                 
PATIENT_CITY              PATIENT_PROVINCE STREET           STREET_NO           
------------------------- ---------------- --------------- ----------           
STATE                     COUNTRY                                               
------------------------- -------------------------                             
Castle Court              United Kingdom                                        
                                                                                
PA-4       Piyush Dangol                  New        Adrs5                      
Edinburgh                                1 Sussex                  90           
George Yard               United Kingdom                                        
                                                                                
PA-3       Celeste Sakya                  Staff      Adrs6                      

PATIENT_ID PATIENT_NAME                   PATIENT_TY PATIENTADD                 
---------- ------------------------------ ---------- ----------                 
PATIENT_CITY              PATIENT_PROVINCE STREET           STREET_NO           
------------------------- ---------------- --------------- ----------           
STATE                     COUNTRY                                               
------------------------- -------------------------                             
City of London                           3 Golden lane            301           
Lincolnshire              United Kingdom                                        
                                                                                
PA-6       Anusha Shrestha                Regular    Adrs7                      
Birmingham                               4 Haydon Street           25           
Middlesex                 United Kingdom                                        
                                                                                

7 rows selected.

SQL> spool off;
