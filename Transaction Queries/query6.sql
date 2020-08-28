SQL> SELECT a.Appointment_ID, a.Appointment_Name, a.appointment_date, w.ward_no, w.ward_type
  2  FROM Appointment a
  3  INNER JOIN Ward w
  4  ON w.Ward_no = a.Ward_no
  5  WHERE Ward_Type ='Emergency';

APPOINTMEN APPOINTMENT_NAME          APPOINTME WARD_ WARD_TYPE                  
---------- ------------------------- --------- ----- -------------------------  
AID5       Dermatology               25-SEP-19 W06   Emergency                  
AID7       Gastrology                27-DEC-19 W05   Emergency                  

SQL> spool off;
