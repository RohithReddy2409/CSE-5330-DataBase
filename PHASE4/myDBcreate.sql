-----------------RESTAURANT TABLE STARTS----------------------
CREATE TABLE S22_S003_8_RESTAURANT(BRANCHID INT PRIMARY KEY,
				EMAIL VARCHAR(50) NOT NULL,
                                BRANCHNAME VARCHAR(20) NOT NULL,
				STREETNAME VARCHAR(20) NOT NULL,
                                ZIPCODE INT NOT NULL);
-------------------------RESTAURANT TABLE ENDS--------------------------



-----------------RESTAURANT PHONE TABLE STARTS----------------------------------
CREATE TABLE S22_S003_8_RESTAURANTPHONE(BRANCHID INT, 
					PHONE INT, 
                                        PRIMARY KEY(BRANCHID,PHONE),
                                        FOREIGN KEY(BRANCHID) REFERENCES S22_S003_8_RESTAURANT(BRANCHID) ON DELETE CASCADE);
--------------------RESTAURANT PHONE TABLE ENDS HERE-----------------------------


--------------------MENU TABLE STARTS HERE-----------------------------
CREATE TABLE S22_S003_8_MENU(ITEMID INT PRIMARY KEY, 
				PRICE DECIMAL(5,2) NOT NULL, 
                            	ITEMNAME VARCHAR(50) NOT NULL, 
                            	TYPE VARCHAR(20) NOT NULL);
-------------------------------MENU TABLE ENDS HERE--------------------------




--------------------EMPLOYEE TABLE STARTS HERE-----------------------
CREATE TABLE S22_S003_8_EMPLOYEE(EID VARCHAR(20) PRIMARY KEY, 
				NAME VARCHAR(20), 
                                PHONE INT, 
                                ADDRESS VARCHAR(25) NOT NULL,
                                GENDER CHAR(10) NOT NULL, 
                                ROLE VARCHAR(15) NOT NULL,
                                SSN INT NOT NULL, 
                                SALARY INT NOT NULL, 
                                EXPERIENCE INT NOT NULL, 
                                BRANCHID INT NOT NULL,
                                FOREIGN KEY(BRANCHID) REFERENCES S22_S003_8_RESTAURANT(BRANCHID) ON DELETE CASCADE);
-------------------EMPLOYEE TABLE ENDS HERE-------------------------------




------------------------------RECEIPT TABLE START------------------------------
CREATE TABLE S22_S003_8_RECEIPT(ORDERID INT,
				ITEMID INT,
                                TOTALCOST DECIMAL(5,2) NOT NULL,
                                ITEMQUANTITY INT NOT NULL,
                                PAYMENTTYPE VARCHAR(20) NOT NULL,
                                ORDEREDDATE DATE NOT NULL,
                                PRIMARY KEY(ORDERID,ITEMID),
                                FOREIGN KEY(ITEMID) REFERENCES S22_S003_8_MENU(ITEMID) ON DELETE CASCADE);

------------------------------RECEIPT TABLE ENDS------------------------------

--------------------CUSTOMER TABLE START HERE--------------------
CREATE TABLE S22_S003_8_CUSTOMER(CUSTOMERID VARCHAR(25),
				ORDERID INT, 
                                BRANCHID INT NOT NULL, 
                                AGE INT, 
                                RATING INT,
				ITEMID INT NOT NULL,
                                TURNAROUNDTIME INT NOT NULL,
                                MISTAKES VARCHAR(20), 
                                CHEF VARCHAR(20) NOT NULL, 
                                INCHARGE VARCHAR(30) NOT NULL,
				PRIMARY KEY(CUSTOMERID,ORDERID,ITEMID),
                                FOREIGN KEY(ORDERID,ITEMID) REFERENCES S22_S003_8_RECEIPT(ORDERID,ITEMID) ON DELETE CASCADE,
                                FOREIGN KEY(BRANCHID) REFERENCES S22_S003_8_RESTAURANT(BRANCHID)ON DELETE CASCADE);
----------------CUSTOMER TABLE ENDS HERE------------------------------------