-----------QUERY 1: Roll up query------------------------------
------------------GETTING AVERAGE RATING USING ROLLUP IN BRANCHNAME,CHEF,INCHARGE-----------------------
SELECT R.BRANCHNAME,C.CHEF,C.INCHARGE,AVG(RATING) FROM S22_S003_8_RESTAURANT R 
					INNER JOIN S22_S003_8_CUSTOMER C ON R.BRANCHID=C.BRANCHID 
					GROUP BY ROLLUP(R.BRANCHNAME,C.CHEF,C.INCHARGE);


-----------QUERY 2: Cube query-------------------------------------------------------------------------------------------------
-------------------------GETTING TOTAL COST EARNED USING CUBE ON BRNACHID,CHEF,INCHARGE------------------------------------
SELECT BRANCHID,C.CHEF,C.INCHARGE,SUM(TOTALCOST) FROM S22_S003_8_CUSTOMER C 
					INNER JOIN S22_S003_8_RECEIPT R ON C.ORDERID=R.ORDERID 
					GROUP BY CUBE(BRANCHID,CHEF,INCHARGE);


--------------QUERY3:TURNAROUBD TIME-----------------------------------------------------
-------------------------------UNDER WHOSE SUPERVISION TURNAROUND TIME IS LESS--------------------
SELECT INCHARGE, SUM(TURNAROUNDTIME) FROM S22_S003_8_CUSTOMER 
					GROUP BY INCHARGE HAVING SUM(TURNAROUNDTIME) IN 
					(SELECT MIN(SUM(TURNAROUNDTIME)) FROM S22_S003_8_CUSTOMER 
					GROUP BY INCHARGE);

----------------QUERY4-------------------------------------------------------------------------------------
--------------------------------------------------WHICH TYPE OF MENU IS ORDERED MOST--------------------------------------------
SELECT  COUNT(ORDERID),TYPE FROM S22_S003_8_MENU M 
			INNER JOIN S22_S003_8_RECEIPT R ON M.ITEMID=R.ITEMID GROUP BY TYPE 
			HAVING COUNT(ORDERID)>= ALL (SELECT COUNT(ORDERID) FROM S22_S003_8_MENU M 
			INNER JOIN S22_S003_8_RECEIPT R ON M.ITEMID=R.ITEMID GROUP BY TYPE);

 

 
----------------QUERY 4-------------------------------------------------------------------------------------------------
-----------------------------------------WHICH BRANCH HAS HIGHEST RATING----------------------------------------------
 SELECT BRANCHNAME,AVG(RATING) FROM S22_S003_8_RESTAURANT R 
				INNER JOIN S22_S003_8_CUSTOMER C ON R.BRANCHID=C.BRANCHID GROUP BY BRANCHNAME 
				HAVING AVG(RATING) IN 
				(SELECT MAX(AVG(RATING)) FROM S22_S003_8_RESTAURANT R 
				INNER JOIN S22_S003_8_CUSTOMER C ON R.BRANCHID=C.BRANCHID GROUP BY BRANCHNAME);

--------------QUERY5-------------------------------------------------------------------------------------------------
--------------------------------------------------------WHICH BRANCH HAS MORE SALES------------------------------------------------------
SELECT R.BRANCHNAME,COUNT(C.CUSTOMERID) FROM S22_S003_8_RESTAURANT R 
					INNER JOIN S22_S003_8_CUSTOMER C ON C.BRANCHID=R.BRANCHID GROUP BY BRANCHNAME 
					HAVING COUNT(C.CUSTOMERID)>=ALL (SELECT COUNT(C.CUSTOMERID) FROM S22_S003_8_RESTAURANT R 
					INNER JOIN S22_S003_8_CUSTOMER C ON C.BRANCHID=R.BRANCHID GROUP BY BRANCHNAME);

 
 
--------------QUERY6-------------------------------------------------------------------------------------------------
-------------------------------------------------------------Under whose supervision less mistakes are made------------------------------

SELECT INCHARGE,COUNT(MISTAKES) FROM S22_S003_8_CUSTOMER WHERE MISTAKES='Y' GROUP BY INCHARGE 
					HAVING COUNT(MISTAKES) IN (SELECT MIN(COUNT(MISTAKES)) FROM S22_S003_8_CUSTOMER WHERE MISTAKES='Y' GROUP BY INCHARGE);


--------------QUERY7-------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------OVERCLAUSE-------------------------------------------
---GETTING SALARY DETAILS OF EMPLOYEES USING OVER CLUASE ON GENDER--------------------
SELECT NAME,SALARY,GENDER,COUNT(GENDER) 
			OVER (PARTITION BY GENDER) AS GENDERTOTAL,AVG(SALARY) 
			OVER (PARTITION BY GENDER) AS AVGSALARY,MIN(SALARY) 
			OVER (PARTITION BY GENDER) AS MINSALARY,MAX(SALARY) 
			OVER (PARTITION BY GENDER) AS MAXSALARY FROM S22_S003_8_EMPLOYEE;

--------------QUERY8-------------------------------------------------------------------------------------------------
---------------------------------------ORDERBY COST FETCH TOP 10 ITEMS---------------------------------------
SELECT M.ITEMNAME,R.TOTALCOST FROM S22_S003_8_RECEIPT R 
				INNER JOIN S22_S003_8_MENU M ON R.ITEMID=M.ITEMID ORDER BY R.TOTALCOST DESC 
				FETCH FIRST 10 ROWS ONLY;


----------------------------------------------------------------------------------------

