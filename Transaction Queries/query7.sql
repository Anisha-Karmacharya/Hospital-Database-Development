SQL> SELECT s.Staff_ID, s.Staff_Name, s.certification,  s.Staff_Type, a.appointment_id, a.appointment_name, a.appointment_date, a.Status
  2  FROM Staff s
  3  INNER JOIN Appointment_Detail D
  4  ON D.Staff_ID = s.Staff_ID
  5  INNER JOIN Appointment a
  6  ON a.appointment_ID = D.appointment_ID
  7  WHERE Appointment_date = '25-SEP-2019';

STAFF_ID   STAFF_NAME                     CERTIFICATION   STAFF_TYPE APPOINTMEN 
---------- ------------------------------ --------------- ---------- ---------- 
APPOINTMENT_NAME          APPOINTME STATUS                                      
------------------------- --------- ----------                                  
S_6        KL Rahul                       Certified       Doctor     AID4       
Gynecology                25-SEP-19 Done                                        
                                                                                
S_2        Aayush Shrestha                Uncertified     Assistant  AID5       
Dermatology               25-SEP-19 Done                                        
                                                                                

SQL>   spool C:\Users\Dell\OneDrive\Development\query5.sql
