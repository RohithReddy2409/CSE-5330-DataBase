------------------------UPDATING THE RATING-------------------------------
UPDATE S22_S003_8_CUSTOMER SET RATING=0 WHERE CUSTOMERID=3003 AND ITEMID=14;


------------------------------------------------UPDATING SALARY--------------------------------
UPDATE S22_S003_8_EMPLOYEE SET SALARY=6000 WHERE  ROLE='MANAGER' AND BRANCHID=1;

------------------------------------------------UPDATING COUNT OF LEAST MISTAKES------------------------
UPDATE S22_S003_8_CUSTOMER SET MISTAKES='N' WHERE CUSTOMERID IN (3009,3018,3024,3033);

-------------------------------------UPDATING TURNAROUNDTIME------------------------------------------------
UPDATE S22_S003_8_CUSTOMER SET TURNAROUNDTIME=30 WHERE CUSTOMERID=3019 AND INCHARGE='BRAD DAVIS';
