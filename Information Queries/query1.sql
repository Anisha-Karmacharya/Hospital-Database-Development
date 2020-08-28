SQL> SELECT Patient_ID, Patient_Name, Patient_Type
  2  FROM Patient
  3  WHERE Patient_Type ='Regular' OR Patient_Type = 'New';

PATIENT_ID PATIENT_NAME                   PATIENT_TY                            
---------- ------------------------------ ----------                            
PA-1       Sabrina Joseph                 New                                   
PA-2       Carrline Shrestha              Regular                               
PA-4       Piyush Dangol                  New                                   
PA-6       Anusha Shrestha                Regular                               
PA-7       Ansul Bhattarai                Regular                               

SQL> spool off;
