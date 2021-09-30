(:Query 1: Retrieve all employees whose address is in Elgin,IL::)

SELECT EMP_ID, F_NAME, L_NAME FROM EMPLOYEES WHERE ADDRESS  LIKE '%Elgin,IL%';

(:Query 2: Retrieve all employees who were born during the 1970'S:)

SELECT EMP_ID, F_NAME, L_NAME, B_DATE FROM EMPLOYEES WHERE B_DATE LIKE '197%';

(:Query 3: Retrieve all employees in department 5 whose salary is between 60000 and 70000 .
:)

SELECT EMP_ID, F_NAME, L_NAME, SALARY FROM EMPLOYEES WHERE (SALARY BETWEEN 60000 AND 70000) AND DEP_ID = 5;

(:Query 4A: Retrieve a list of employees ordered by department ID.:)

SELECT EMP_ID, F_NAME, L_NAME, DEP_ID FROM EMPLOYEES ORDER BY DEP_ID;

(:Query 4B: Retrieve a list of employees ordered in descending order by department ID and within each department ordered alphabetically in 
descending order by last name.:)

SELECT EMP_ID, F_NAME, L_NAME, DEP_ID FROM EMPLOYEES ORDER BY DEP_ID DESC, L_NAME DESC;

(:Query 5A: For each department ID retrieve the number of employees in the department.:)

SELECT DEP_ID, COUNT(*) "Quantidade de Funcinários" FROM EMPLOYEES GROUP BY DEP_ID;

(:Query 5B: For each department retrieve the number of employees in the department, and the average employees salary in the department:)

SELECT DEP_ID, COUNT(*) "NUM EMPLOYEES", AVG(SALARY) AS "AVG SALARY" 
FROM EMPLOYEES 
GROUP BY DEP_ID 
HAVING COUNT(*) < 4
ORDER BY AVG(SALARY);

(:Query 6: Similar to 4B but instead of department ID use department 
name. Retrieve a list of employees ordered by department name, and within 
each department ordered alphabetically in descending order by last name.:)

SELECT D.DEP_NAME , E.F_NAME, E.L_NAME FROM EMPLOYEES AS E, DEPARTMENTS AS D
WHERE E.DEP_ID = D.DEPT_ID_DEP
ORDER BY D.DEP_NAME, E.L_NAME DESC ;



