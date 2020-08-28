SQL> SELECT  p.Patient_ID, p.Patient_Name, p.patient_Type, a.appointment_id, a.appointment_name, a.appointment_date, a.Status
  2  FROM Appointment a
  3  INNER JOIN Appointment_Detail D
  4  ON a.appointment_ID = D.appointment_ID
  5  INNER JOIN Patient p
  6  ON D.Patient_ID = p.Patient_ID
  7  WHERE Appointment_date = '25-SEP-2019';

PATIENT_ID PATIENT_NAME                   PATIENT_TY APPOINTMEN                 
---------- ------------------------------ ---------- ----------                 
APPOINTMENT_NAME          APPOINTME STATUS                                      
------------------------- --------- ----------                                  
PA-3       Celeste Sakya                  Staff      AID4                       
Gynecology                25-SEP-19 Done                                        
                                                                                
PA-4       Piyush Dangol                  New        AID5                       
Dermatology               25-SEP-19 Done                                        
                                                                                

SQL> spool off;
