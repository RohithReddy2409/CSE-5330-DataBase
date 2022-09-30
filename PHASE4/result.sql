SQL> spool
currently spooling to result.sql
SQL> @myDBqueries

BRANCHNAME           CHEF                 INCHARGE                       AVG(RATING)                                                                                                                    
-------------------- -------------------- ------------------------------ -----------                                                                                                                    
FRISCORESTAURANT     MARY JONES           SEBASTIAN SMITH                 4.22222222                                                                                                                    
FRISCORESTAURANT     MARY JONES                                           4.22222222                                                                                                                    
FRISCORESTAURANT     GRAHAM ZUSI          SEBASTIAN SMITH                 3.66666667                                                                                                                    
FRISCORESTAURANT     GRAHAM ZUSI                                          3.66666667                                                                                                                    
FRISCORESTAURANT     JULIAN GREEN         SEBASTIAN SMITH                       3.75                                                                                                                    
FRISCORESTAURANT     JULIAN GREEN                                               3.75                                                                                                                    
FRISCORESTAURANT                                                          3.94736842                                                                                                                    
IRVINGRESTAURANT     JAMES HOOG           ERICA WILLIAMS                           3                                                                                                                    
IRVINGRESTAURANT     JAMES HOOG                                                    3                                                                                                                    
IRVINGRESTAURANT     NICK RIMANDO         ERICA WILLIAMS                        3.75                                                                                                                    
IRVINGRESTAURANT     NICK RIMANDO                                               3.75                                                                                                                    
IRVINGRESTAURANT     GEOFF CAMERON        ERICA WILLIAMS                  4.55555556                                                                                                                    
IRVINGRESTAURANT     GEOFF CAMERON                                        4.55555556                                                                                                                    
IRVINGRESTAURANT                                                          3.82142857                                                                                                                    
ARLINGTONRESTAURANT  BRAD GUZAN           BRAD DAVIS                             3.6                                                                                                                    
ARLINGTONRESTAURANT  BRAD GUZAN                                                  3.6                                                                                                                    
ARLINGTONRESTAURANT  GRAHAM ZUSI          SEBASTIAN SMITH                          4                                                                                                                    
ARLINGTONRESTAURANT  GRAHAM ZUSI                                                   4                                                                                                                    
ARLINGTONRESTAURANT  JOZY ALTIDORE        BRAD DAVIS                               4                                                                                                                    
ARLINGTONRESTAURANT  JOZY ALTIDORE                                                 4                                                                                                                    
ARLINGTONRESTAURANT  FABIAN JOHNSON       BRAD DAVIS                           4.625                                                                                                                    
ARLINGTONRESTAURANT  FABIAN JOHNSON                                            4.625                                                                                                                    
ARLINGTONRESTAURANT                                                       4.03571429                                                                                                                    
                                                                          3.93333333                                                                                                                    

24 rows selected.


  BRANCHID CHEF                 INCHARGE                       SUM(TOTALCOST)                                                                                                                           
---------- -------------------- ------------------------------ --------------                                                                                                                           
                                                                      1481.48                                                                                                                           
                                BRAD DAVIS                             579.46                                                                                                                           
                                ERICA WILLIAMS                         612.34                                                                                                                           
                                SEBASTIAN SMITH                        289.68                                                                                                                           
           BRAD GUZAN                                                   180.8                                                                                                                           
           BRAD GUZAN           BRAD DAVIS                              180.8                                                                                                                           
           JAMES HOOG                                                  118.85                                                                                                                           
           JAMES HOOG           ERICA WILLIAMS                         118.85                                                                                                                           
           MARY JONES                                                  167.81                                                                                                                           
           MARY JONES           SEBASTIAN SMITH                        167.81                                                                                                                           
           GRAHAM ZUSI                                                  81.91                                                                                                                           
           GRAHAM ZUSI          SEBASTIAN SMITH                         81.91                                                                                                                           
           JULIAN GREEN                                                 39.96                                                                                                                           
           JULIAN GREEN         SEBASTIAN SMITH                         39.96                                                                                                                           
           NICK RIMANDO                                                 278.7                                                                                                                           
           NICK RIMANDO         ERICA WILLIAMS                          278.7                                                                                                                           
           GEOFF CAMERON                                               214.79                                                                                                                           
           GEOFF CAMERON        ERICA WILLIAMS                         214.79                                                                                                                           
           JOZY ALTIDORE                                               300.75                                                                                                                           
           JOZY ALTIDORE        BRAD DAVIS                             300.75                                                                                                                           
           FABIAN JOHNSON                                               97.91                                                                                                                           
           FABIAN JOHNSON       BRAD DAVIS                              97.91                                                                                                                           
         1                                                             597.45                                                                                                                           
         1                      BRAD DAVIS                             579.46                                                                                                                           
         1                      SEBASTIAN SMITH                         17.99                                                                                                                           
         1 BRAD GUZAN                                                   180.8                                                                                                                           
         1 BRAD GUZAN           BRAD DAVIS                              180.8                                                                                                                           
         1 GRAHAM ZUSI                                                  17.99                                                                                                                           
         1 GRAHAM ZUSI          SEBASTIAN SMITH                         17.99                                                                                                                           
         1 JOZY ALTIDORE                                               300.75                                                                                                                           
         1 JOZY ALTIDORE        BRAD DAVIS                             300.75                                                                                                                           
         1 FABIAN JOHNSON                                               97.91                                                                                                                           
         1 FABIAN JOHNSON       BRAD DAVIS                              97.91                                                                                                                           
         2                                                             612.34                                                                                                                           
         2                      ERICA WILLIAMS                         612.34                                                                                                                           
         2 JAMES HOOG                                                  118.85                                                                                                                           
         2 JAMES HOOG           ERICA WILLIAMS                         118.85                                                                                                                           
         2 NICK RIMANDO                                                 278.7                                                                                                                           
         2 NICK RIMANDO         ERICA WILLIAMS                          278.7                                                                                                                           
         2 GEOFF CAMERON                                               214.79                                                                                                                           
         2 GEOFF CAMERON        ERICA WILLIAMS                         214.79                                                                                                                           
         3                                                             271.69                                                                                                                           
         3                      SEBASTIAN SMITH                        271.69                                                                                                                           
         3 MARY JONES                                                  167.81                                                                                                                           
         3 MARY JONES           SEBASTIAN SMITH                        167.81                                                                                                                           
         3 GRAHAM ZUSI                                                  63.92                                                                                                                           
         3 GRAHAM ZUSI          SEBASTIAN SMITH                         63.92                                                                                                                           
         3 JULIAN GREEN                                                 39.96                                                                                                                           
         3 JULIAN GREEN         SEBASTIAN SMITH                         39.96                                                                                                                           

49 rows selected.


INCHARGE                       SUM(TURNAROUNDTIME)                                                                                                                                                      
------------------------------ -------------------                                                                                                                                                      
SEBASTIAN SMITH                                107                                                                                                                                                      


COUNT(ORDERID) TYPE                                                                                                                                                                                     
-------------- --------------------                                                                                                                                                                     
            18 NONVEG                                                                                                                                                                                   
            18 DRINKS                                                                                                                                                                                   


BRANCHNAME           AVG(RATING)                                                                                                                                                                        
-------------------- -----------                                                                                                                                                                        
ARLINGTONRESTAURANT   4.03571429                                                                                                                                                                        


BRANCHNAME           COUNT(C.CUSTOMERID)                                                                                                                                                                
-------------------- -------------------                                                                                                                                                                
IRVINGRESTAURANT                      28                                                                                                                                                                
ARLINGTONRESTAURANT                   28                                                                                                                                                                


INCHARGE                       COUNT(MISTAKES)                                                                                                                                                          
------------------------------ ---------------                                                                                                                                                          
BRAD DAVIS                                   2                                                                                                                                                          
SEBASTIAN SMITH                              2                                                                                                                                                          


NAME                     SALARY GENDER     GENDERTOTAL  AVGSALARY  MINSALARY  MAXSALARY                                                                                                                 
-------------------- ---------- ---------- ----------- ---------- ---------- ----------                                                                                                                 
ALEKHYA                    2000 F                    8       2625       2000       4000                                                                                                                 
PREETHI                    4000 F                    8       2625       2000       4000                                                                                                                 
MAMATHA                    2000 F                    8       2625       2000       4000                                                                                                                 
PRANATHI                   3000 F                    8       2625       2000       4000                                                                                                                 
ARCHANA                    2000 F                    8       2625       2000       4000                                                                                                                 
POORNIMA                   2000 F                    8       2625       2000       4000                                                                                                                 
BHOOMIKA                   2000 F                    8       2625       2000       4000                                                                                                                 
BINDU                      4000 F                    8       2625       2000       4000                                                                                                                 
VISHNU                     2000 M                   40       2650       2000       6000                                                                                                                 
ABHI                       2000 M                   40       2650       2000       6000                                                                                                                 
HANEESH                    2000 M                   40       2650       2000       6000                                                                                                                 
SUHAS                      2000 M                   40       2650       2000       6000                                                                                                                 
SWAROOP                    4000 M                   40       2650       2000       6000                                                                                                                 
ROOPESH                    2000 M                   40       2650       2000       6000                                                                                                                 
AKASH                      2000 M                   40       2650       2000       6000                                                                                                                 
CHANDRA                    4000 M                   40       2650       2000       6000                                                                                                                 
SEKHAR                     2000 M                   40       2650       2000       6000                                                                                                                 
HEMANTH                    2000 M                   40       2650       2000       6000                                                                                                                 
MASTHAN                    2000 M                   40       2650       2000       6000                                                                                                                 
BHAGAVATH                  4000 M                   40       2650       2000       6000                                                                                                                 
BALA                       2000 M                   40       2650       2000       6000                                                                                                                 
JASWANTH                   5000 M                   40       2650       2000       6000                                                                                                                 
NIKHIL                     2000 M                   40       2650       2000       6000                                                                                                                 
NITEESH                    4000 M                   40       2650       2000       6000                                                                                                                 
SAHITH                     4000 M                   40       2650       2000       6000                                                                                                                 
MANOHAR                    2000 M                   40       2650       2000       6000                                                                                                                 
SALMAN                     5000 M                   40       2650       2000       6000                                                                                                                 
CHANDHU                    2000 M                   40       2650       2000       6000                                                                                                                 
VAMSI                      2000 M                   40       2650       2000       6000                                                                                                                 
MUNEER                     3000 M                   40       2650       2000       6000                                                                                                                 
MAHANTH                    3000 M                   40       2650       2000       6000                                                                                                                 
PAVAN                      2000 M                   40       2650       2000       6000                                                                                                                 
GURU                       2000 M                   40       2650       2000       6000                                                                                                                 
DEVA                       2000 M                   40       2650       2000       6000                                                                                                                 
DILEEP                     2000 M                   40       2650       2000       6000                                                                                                                 
SAINATH                    2000 M                   40       2650       2000       6000                                                                                                                 
MADHU                      2000 M                   40       2650       2000       6000                                                                                                                 
BABU                       2000 M                   40       2650       2000       6000                                                                                                                 
MURALI                     2000 M                   40       2650       2000       6000                                                                                                                 
ROHITH                     6000 M                   40       2650       2000       6000                                                                                                                 
PRASAD                     2000 M                   40       2650       2000       6000                                                                                                                 
RAM                        2000 M                   40       2650       2000       6000                                                                                                                 
SAI                        2000 M                   40       2650       2000       6000                                                                                                                 
SREEKAR                    4000 M                   40       2650       2000       6000                                                                                                                 
BHANU                      2000 M                   40       2650       2000       6000                                                                                                                 
SALEEM                     2000 M                   40       2650       2000       6000                                                                                                                 
NITHIN                     2000 M                   40       2650       2000       6000                                                                                                                 
SURENDRA                   4000 M                   40       2650       2000       6000                                                                                                                 

48 rows selected.


ITEMNAME                                            TOTALCOST                                                                                                                                           
-------------------------------------------------- ----------                                                                                                                                           
MUTTONBIRYANI                                           17.99                                                                                                                                           
MUTTONBIRYANI                                           17.99                                                                                                                                           
MUSHROOMBIRYANI                                         16.99                                                                                                                                           
LAMBBIRYANI                                             16.99                                                                                                                                           
LAMBBIRYANI                                             16.99                                                                                                                                           
PANEER65                                                15.99                                                                                                                                           
PANEERBIRYANI                                           15.99                                                                                                                                           
PANEERBIRYANI                                           15.99                                                                                                                                           
PANEERBIRYANI                                           15.99                                                                                                                                           
PANEER65                                                15.99                                                                                                                                           

10 rows selected.

SQL> @myDBupdate

1 row updated.


1 row updated.


1 row updated.


5 rows updated.


1 row updated.

SQL> @myDBqueries

BRANCHNAME           CHEF                 INCHARGE                       AVG(RATING)                                                                                                                    
-------------------- -------------------- ------------------------------ -----------                                                                                                                    
FRISCORESTAURANT     MARY JONES           SEBASTIAN SMITH                 4.22222222                                                                                                                    
FRISCORESTAURANT     MARY JONES                                           4.22222222                                                                                                                    
FRISCORESTAURANT     GRAHAM ZUSI          SEBASTIAN SMITH                 3.66666667                                                                                                                    
FRISCORESTAURANT     GRAHAM ZUSI                                          3.66666667                                                                                                                    
FRISCORESTAURANT     JULIAN GREEN         SEBASTIAN SMITH                       3.75                                                                                                                    
FRISCORESTAURANT     JULIAN GREEN                                               3.75                                                                                                                    
FRISCORESTAURANT                                                          3.94736842                                                                                                                    
IRVINGRESTAURANT     JAMES HOOG           ERICA WILLIAMS                           3                                                                                                                    
IRVINGRESTAURANT     JAMES HOOG                                                    3                                                                                                                    
IRVINGRESTAURANT     NICK RIMANDO         ERICA WILLIAMS                        3.75                                                                                                                    
IRVINGRESTAURANT     NICK RIMANDO                                               3.75                                                                                                                    
IRVINGRESTAURANT     GEOFF CAMERON        ERICA WILLIAMS                  4.55555556                                                                                                                    
IRVINGRESTAURANT     GEOFF CAMERON                                        4.55555556                                                                                                                    
IRVINGRESTAURANT                                                          3.82142857                                                                                                                    
ARLINGTONRESTAURANT  BRAD GUZAN           BRAD DAVIS                             3.6                                                                                                                    
ARLINGTONRESTAURANT  BRAD GUZAN                                                  3.6                                                                                                                    
ARLINGTONRESTAURANT  GRAHAM ZUSI          SEBASTIAN SMITH                          4                                                                                                                    
ARLINGTONRESTAURANT  GRAHAM ZUSI                                                   4                                                                                                                    
ARLINGTONRESTAURANT  JOZY ALTIDORE        BRAD DAVIS                               4                                                                                                                    
ARLINGTONRESTAURANT  JOZY ALTIDORE                                                 4                                                                                                                    
ARLINGTONRESTAURANT  FABIAN JOHNSON       BRAD DAVIS                           4.625                                                                                                                    
ARLINGTONRESTAURANT  FABIAN JOHNSON                                            4.625                                                                                                                    
ARLINGTONRESTAURANT                                                       4.03571429                                                                                                                    
                                                                          3.93333333                                                                                                                    

24 rows selected.


  BRANCHID CHEF                 INCHARGE                       SUM(TOTALCOST)                                                                                                                           
---------- -------------------- ------------------------------ --------------                                                                                                                           
                                                                      1481.48                                                                                                                           
                                BRAD DAVIS                             579.46                                                                                                                           
                                ERICA WILLIAMS                         612.34                                                                                                                           
                                SEBASTIAN SMITH                        289.68                                                                                                                           
           BRAD GUZAN                                                   180.8                                                                                                                           
           BRAD GUZAN           BRAD DAVIS                              180.8                                                                                                                           
           JAMES HOOG                                                  118.85                                                                                                                           
           JAMES HOOG           ERICA WILLIAMS                         118.85                                                                                                                           
           MARY JONES                                                  167.81                                                                                                                           
           MARY JONES           SEBASTIAN SMITH                        167.81                                                                                                                           
           GRAHAM ZUSI                                                  81.91                                                                                                                           
           GRAHAM ZUSI          SEBASTIAN SMITH                         81.91                                                                                                                           
           JULIAN GREEN                                                 39.96                                                                                                                           
           JULIAN GREEN         SEBASTIAN SMITH                         39.96                                                                                                                           
           NICK RIMANDO                                                 278.7                                                                                                                           
           NICK RIMANDO         ERICA WILLIAMS                          278.7                                                                                                                           
           GEOFF CAMERON                                               214.79                                                                                                                           
           GEOFF CAMERON        ERICA WILLIAMS                         214.79                                                                                                                           
           JOZY ALTIDORE                                               300.75                                                                                                                           
           JOZY ALTIDORE        BRAD DAVIS                             300.75                                                                                                                           
           FABIAN JOHNSON                                               97.91                                                                                                                           
           FABIAN JOHNSON       BRAD DAVIS                              97.91                                                                                                                           
         1                                                             597.45                                                                                                                           
         1                      BRAD DAVIS                             579.46                                                                                                                           
         1                      SEBASTIAN SMITH                         17.99                                                                                                                           
         1 BRAD GUZAN                                                   180.8                                                                                                                           
         1 BRAD GUZAN           BRAD DAVIS                              180.8                                                                                                                           
         1 GRAHAM ZUSI                                                  17.99                                                                                                                           
         1 GRAHAM ZUSI          SEBASTIAN SMITH                         17.99                                                                                                                           
         1 JOZY ALTIDORE                                               300.75                                                                                                                           
         1 JOZY ALTIDORE        BRAD DAVIS                             300.75                                                                                                                           
         1 FABIAN JOHNSON                                               97.91                                                                                                                           
         1 FABIAN JOHNSON       BRAD DAVIS                              97.91                                                                                                                           
         2                                                             612.34                                                                                                                           
         2                      ERICA WILLIAMS                         612.34                                                                                                                           
         2 JAMES HOOG                                                  118.85                                                                                                                           
         2 JAMES HOOG           ERICA WILLIAMS                         118.85                                                                                                                           
         2 NICK RIMANDO                                                 278.7                                                                                                                           
         2 NICK RIMANDO         ERICA WILLIAMS                          278.7                                                                                                                           
         2 GEOFF CAMERON                                               214.79                                                                                                                           
         2 GEOFF CAMERON        ERICA WILLIAMS                         214.79                                                                                                                           
         3                                                             271.69                                                                                                                           
         3                      SEBASTIAN SMITH                        271.69                                                                                                                           
         3 MARY JONES                                                  167.81                                                                                                                           
         3 MARY JONES           SEBASTIAN SMITH                        167.81                                                                                                                           
         3 GRAHAM ZUSI                                                  63.92                                                                                                                           
         3 GRAHAM ZUSI          SEBASTIAN SMITH                         63.92                                                                                                                           
         3 JULIAN GREEN                                                 39.96                                                                                                                           
         3 JULIAN GREEN         SEBASTIAN SMITH                         39.96                                                                                                                           

49 rows selected.


INCHARGE                       SUM(TURNAROUNDTIME)                                                                                                                                                      
------------------------------ -------------------                                                                                                                                                      
SEBASTIAN SMITH                                107                                                                                                                                                      


COUNT(ORDERID) TYPE                                                                                                                                                                                     
-------------- --------------------                                                                                                                                                                     
            18 NONVEG                                                                                                                                                                                   
            18 DRINKS                                                                                                                                                                                   


BRANCHNAME           AVG(RATING)                                                                                                                                                                        
-------------------- -----------                                                                                                                                                                        
ARLINGTONRESTAURANT   4.03571429                                                                                                                                                                        


BRANCHNAME           COUNT(C.CUSTOMERID)                                                                                                                                                                
-------------------- -------------------                                                                                                                                                                
IRVINGRESTAURANT                      28                                                                                                                                                                
ARLINGTONRESTAURANT                   28                                                                                                                                                                


INCHARGE                       COUNT(MISTAKES)                                                                                                                                                          
------------------------------ ---------------                                                                                                                                                          
BRAD DAVIS                                   2                                                                                                                                                          
SEBASTIAN SMITH                              2                                                                                                                                                          


NAME                     SALARY GENDER     GENDERTOTAL  AVGSALARY  MINSALARY  MAXSALARY                                                                                                                 
-------------------- ---------- ---------- ----------- ---------- ---------- ----------                                                                                                                 
ALEKHYA                    2000 F                    8       2625       2000       4000                                                                                                                 
PREETHI                    4000 F                    8       2625       2000       4000                                                                                                                 
MAMATHA                    2000 F                    8       2625       2000       4000                                                                                                                 
PRANATHI                   3000 F                    8       2625       2000       4000                                                                                                                 
ARCHANA                    2000 F                    8       2625       2000       4000                                                                                                                 
POORNIMA                   2000 F                    8       2625       2000       4000                                                                                                                 
BHOOMIKA                   2000 F                    8       2625       2000       4000                                                                                                                 
BINDU                      4000 F                    8       2625       2000       4000                                                                                                                 
VISHNU                     2000 M                   40       2650       2000       6000                                                                                                                 
ABHI                       2000 M                   40       2650       2000       6000                                                                                                                 
HANEESH                    2000 M                   40       2650       2000       6000                                                                                                                 
SUHAS                      2000 M                   40       2650       2000       6000                                                                                                                 
SWAROOP                    4000 M                   40       2650       2000       6000                                                                                                                 
ROOPESH                    2000 M                   40       2650       2000       6000                                                                                                                 
AKASH                      2000 M                   40       2650       2000       6000                                                                                                                 
CHANDRA                    4000 M                   40       2650       2000       6000                                                                                                                 
SEKHAR                     2000 M                   40       2650       2000       6000                                                                                                                 
HEMANTH                    2000 M                   40       2650       2000       6000                                                                                                                 
MASTHAN                    2000 M                   40       2650       2000       6000                                                                                                                 
BHAGAVATH                  4000 M                   40       2650       2000       6000                                                                                                                 
BALA                       2000 M                   40       2650       2000       6000                                                                                                                 
JASWANTH                   5000 M                   40       2650       2000       6000                                                                                                                 
NIKHIL                     2000 M                   40       2650       2000       6000                                                                                                                 
NITEESH                    4000 M                   40       2650       2000       6000                                                                                                                 
SAHITH                     4000 M                   40       2650       2000       6000                                                                                                                 
MANOHAR                    2000 M                   40       2650       2000       6000                                                                                                                 
SALMAN                     5000 M                   40       2650       2000       6000                                                                                                                 
CHANDHU                    2000 M                   40       2650       2000       6000                                                                                                                 
VAMSI                      2000 M                   40       2650       2000       6000                                                                                                                 
MUNEER                     3000 M                   40       2650       2000       6000                                                                                                                 
MAHANTH                    3000 M                   40       2650       2000       6000                                                                                                                 
PAVAN                      2000 M                   40       2650       2000       6000                                                                                                                 
GURU                       2000 M                   40       2650       2000       6000                                                                                                                 
DEVA                       2000 M                   40       2650       2000       6000                                                                                                                 
DILEEP                     2000 M                   40       2650       2000       6000                                                                                                                 
SAINATH                    2000 M                   40       2650       2000       6000                                                                                                                 
MADHU                      2000 M                   40       2650       2000       6000                                                                                                                 
BABU                       2000 M                   40       2650       2000       6000                                                                                                                 
MURALI                     2000 M                   40       2650       2000       6000                                                                                                                 
ROHITH                     6000 M                   40       2650       2000       6000                                                                                                                 
PRASAD                     2000 M                   40       2650       2000       6000                                                                                                                 
RAM                        2000 M                   40       2650       2000       6000                                                                                                                 
SAI                        2000 M                   40       2650       2000       6000                                                                                                                 
SREEKAR                    4000 M                   40       2650       2000       6000                                                                                                                 
BHANU                      2000 M                   40       2650       2000       6000                                                                                                                 
SALEEM                     2000 M                   40       2650       2000       6000                                                                                                                 
NITHIN                     2000 M                   40       2650       2000       6000                                                                                                                 
SURENDRA                   4000 M                   40       2650       2000       6000                                                                                                                 

48 rows selected.


ITEMNAME                                            TOTALCOST                                                                                                                                           
-------------------------------------------------- ----------                                                                                                                                           
MUTTONBIRYANI                                           17.99                                                                                                                                           
MUTTONBIRYANI                                           17.99                                                                                                                                           
MUSHROOMBIRYANI                                         16.99                                                                                                                                           
LAMBBIRYANI                                             16.99                                                                                                                                           
LAMBBIRYANI                                             16.99                                                                                                                                           
PANEER65                                                15.99                                                                                                                                           
PANEERBIRYANI                                           15.99                                                                                                                                           
PANEERBIRYANI                                           15.99                                                                                                                                           
PANEERBIRYANI                                           15.99                                                                                                                                           
PANEER65                                                15.99                                                                                                                                           

10 rows selected.

SQL> spool off
