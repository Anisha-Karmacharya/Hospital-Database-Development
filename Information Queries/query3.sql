SQL> SELECT s.Staff_ID, s.Staff_Name, s.commission, s.certification, ap.Appointment_ID, ap.Appointment_name
  2  FROM Staff s INNER JOIN Appointment_Detail D ON s.staff_ID = d.Staff_ID
  3  INNER JOIN Appointment ap ON D.Appointment_ID = ap.appointment_ID
  4  WHERE s.Certification = 'Certified'
  5  AND s.Staff_type = 'Doctor';

STAFF_ID   STAFF_NAME                     COMMISSION CERTIFICATION   APPOINTMEN 
---------- ------------------------------ ---------- --------------- ---------- 
APPOINTMENT_NAME                                                                
-------------------------                                                       
S_6        KL Rahul                            50000 Certified       AID4       
Gynecology                                                                      
                                                                                
S_1        Celeste Sakya                       50000 Certified       AID7       
Gastrology                                                                      
                                                                                

SQL> spool off;
