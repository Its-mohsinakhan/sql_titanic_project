# TITANIC DATABASE

-- 1. Select all columns for all passengers in the Titanic dataset. 
SELECT* FROM TITANIC;
-- 2. Display the number of passengers in each class (1st, 2nd, 3rd). 
SELECT PCLASS, COUNT(*) FROM TITANIC GROUP BY PCLASS;
-- 3. Find the number of male and female passengers. 
SELECT SEX,COUNT(SEX) FROM TITANIC GROUP BY SEX;
-- 4. Display the names of passengers who survived. 
 SELECT NAME,SURVIVED FROM TITANIC WHERE SURVIVED='SURVIVED';
-- 5. Find the average age of passengers.  
SELECT AVG(AGE) FROM TITANIC ;
-- 6. List the names and ages of passengers who were younger than 18.  
SELECT NAME,AGE FROM TITANIC WHERE AGE<18;
-- 7. Display the number of passengers in each embarkation port (C, Q, S). 
 SELECT EMBARKED,COUNT(*) FROM TITANIC GROUP BY EMBARKED;
-- 8. Find the highest fare paid by any passenger.  
SELECT NAME,FARE FROM TITANIC ORDER BY FARE  DESC LIMIT 1;
-- 9. List the average age of passengers for each class.  
SELECT PCLASS,AVG(AGE)FROM TITANIC GROUP BY PCLASS ORDER BY PCLASS;
-- 10. Display the passenger names and ages for those who survived and were in 1st class. 
SELECT NAME,AGE FROM TITANIC WHERE  PCLASS= 1 AND SURVIVED='SURVIVED';
-- 11. Find the number of passengers who paid more than 50 for their ticket. 
SELECT COUNT(*) FROM TITANIC WHERE FARE>50;
-- 12. List the names of passengers who did not survive and were in 3rd class.  
SELECT NAME FROM TITANIC WHERE SURVIVED != "SURVIVED" AND PCLASS=3;  
-- 13. Find the number of passengers with missing values in the "Age" column.  
SELECT COUNT(NAME) FROM TITANIC WHERE AGE IS NULL;
-- 14. Display the passenger names and ages for those who embarked at port 'S' and survived.  
SELECT NAME,AGE FROM TITANIC WHERE EMBARKED="S" AND SURVIVED="SURVIVED";
-- 15. Calculate the total number of passengers on board.  
SELECT COUNT(*) AS TotalPassengers
FROM titanic;
-- 16. List the average fare for each class.  
SELECT PCLASS ,AVG(FARE) FROM TITANIC GROUP BY PCLASS ORDER BY PCLASS;
-- 17. Display the passenger names and ages for those with a known age and a fare greater than 100. 
  SELECT NAME,AGE FROM TITANIC WHERE AGE IS NOT NULL AND FARE>100;
-- 18. Find the percentage of passengers who survived.  
SELECT 
    (SUM(CASE WHEN Survived = 'SURVIVED' THEN 1 ELSE 0 END) * 100.0 / COUNT(*)) AS SurvivalPercentage
FROM titanic;
-- 19. List the names of passengers who were in 2nd class and had a fare less than 20.  
SELECT NAME FROM TITANIC WHERE PCLASS=2 AND FARE<20;
-- 20. Display the passenger names and ages for those who did not survive and were in 1st class. 
 SELECT NAME,AGE FROM TITANIC WHERE SURVIVED="SURVIVED" AND PCLASS=1;
-- 21. Find the number of passengers for each combination of class and gender.
 SELECT PCLASS,SEX, COUNT(*) FROM TITANIC GROUP BY PCLASS ,SEX ORDER BY PCLASS;
-- 22. List the names of passengers who survived and were in 3rd class with an age less than 20.
SELECT NAME FROM TITANIC WHERE SURVIVED="SURVIVED" AND PCLASS=3 AND AGE<20;  
-- 23. Display the passenger names for those with the name starting with 'Mr.'  
SELECT NAME FROM TITANIC WHERE NAME LIKE "MR.%" ;
-- 24. Find the average age of male and female passengers. 
 SELECT SEX,AVG(AGE) FROM TITANIC GROUP BY SEX;
-- 25. List the names of passengers who paid the highest fare.  
SELECT NAME,FARE FROM TITANIC ORDER BY FARE DESC LIMIT  1;
-- 26. Find the number of passengers for each embarkation port and class.  
 SELECT EMBARKED,PCLASS,COUNT(*) FROM TITANIC GROUP BY EMBARKED,PCLASS ORDER BY EMBARKED,PCLASS; 
-- 27. Display the passenger names and ages for those who survived and paid more than 200 for their ticket.
SELECT NAME,AGE FROM TITANIC WHERE SURVIVED="SURVIVED" AND FARE>200;
-- 28. Find the average age of passengers who survived and those who did not.
SELECT SURVIVED, AVG(AGE) FROM TITANIC  GROUP BY SURVIVED; 
-- 29. List the names of passengers who were in 1st class and had an age greater than 50.  
  SELECT NAME FROM TITANIC WHERE PCLASS=1 AND AGE>50;
-- 30. Display the passenger names for those with the name ending with 'sson'.
SELECT NAME FROM TITANIC WHERE NAME LIKE"%SSON";