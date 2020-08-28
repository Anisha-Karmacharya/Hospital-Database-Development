SQL>   select s.staff_name,s.certification,a.appointment_name,a.appointment_date,t.treatment_name,p.payment_amount
  2  from staff s inner join Appointment_detail D
  3  on D.staff_id = s.staff_id
  4  inner join Appointment a on a.appointment_id = D.appointment_id
  5  inner join Treatment t on t.Treatment_id=a.Treatment_id
  6  inner join Payment p on p.Payment_id = a.Payment_id
  7  where s.certification='Uncertified';

STAFF_NAME                     CERTIFICATION   APPOINTMENT_NAME                 
------------------------------ --------------- -------------------------        
APPOINTME TREATMENT_NAME            PAYMENT_AMOUNT                              
--------- ------------------------- --------------                              
Irene Sharma                   Uncertified     Gastrology                       
01-JAN-19 Gastric Biopsy                      8000                              
                                                                                
Aayush Shrestha                Uncertified     Dermatology                      
25-SEP-19 Hyperhidrosis                       3500                              
                                                                                

SQL> spool off;
