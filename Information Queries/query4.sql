SQL> SELECT s.staff_ID, p.Patient_id, s.staff_Name,p.patient_type, s.Staff_type, s.certification, a.appointment_Id, a.Appointment_name
  2  FROM Patient p
  3  INNER JOIN Staff s
  4  ON s.Staff_Name = p.Patient_name
  5  INNER JOIN Appointment_Detail D
  6  ON p.Patient_ID = D.Patient_ID
  7  INNER JOIN Appointment a
  8  ON a.appointment_ID = D. appointment_Id;

STAFF_ID   PATIENT_ID STAFF_NAME                     PATIENT_TY STAFF_TYPE      
---------- ---------- ------------------------------ ---------- ----------      
CERTIFICATION   APPOINTMEN APPOINTMENT_NAME                                     
--------------- ---------- -------------------------                            
S_2        PA-5       Aayush Shrestha                Staff      Assistant       
Uncertified     AID3       ENT                                                  
                                                                                
S_1        PA-3       Celeste Sakya                  Staff      Doctor          
Certified       AID4       Gynecology                                           
                                                                                

SQL> spool off;
