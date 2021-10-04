(:Enter a failing (i.e. which gives an error) to retrieve all:)
(:employees whose salary is greater than the average salary:)

SELECT * FROM EMPLOYEES 
WHERE SALARY > (SELECT AVG(SALARY) FROM EMPLOYEES);

(:Enter a working query using a sub-select to retrieve all:)
(:employees whose salary is greater than the average salary):)

SELECT EMP_ID, F_NAME, L_NAME, SALARY FROM EMPLOYEES 
WHERE SALARY > (SELECT AVG(SALARY) FROM EMPLOYEES);

(:Enter a failing query (i.e. that gives an error):) 
(:that retrieves all employees records and average salary in every row:)

SELECT EMP_ID, SALARY,(SELECT AVG(SALARY) AS AVG_EMPLOYEES FROM EMPLOYEES) 
FROM EMPLOYEES;

(:Enter a Table Expression that retrieves only the columns with:)
(:non-sensitive employee data):)

SELECT * FROM (SELECT EMP_ID, F_NAME, L_NAME, DEP_ID FROM EMPLOYEES) AS EMP4ALL ;

(:Retrieve only the EMPLOYEES records that correspond to departments:)
(:in the DEPARTMENTS table:)

SELECT EMP_ID, F_NAME, L_NAME, DEP_ID FROM EMPLOYEES
WHERE DEP_ID IN (SELECT DEPT_ID_DEP FROM DEPARTMENTS);

(:Retrieve only the list of employees from location L0002:)

SELECT EMP_ID, F_NAME, L_NAME, DEP_ID FROM EMPLOYEES
WHERE DEP_ID IN (SELECT DEPT_ID_DEP FROM DEPARTMENTS WHERE LOC_ID = 'L0002'); 

(:Retrieve the department ID and name for employees who earn more than $70,000:)

SELECT DEPT_ID_DEP, DEP_NAME FROM DEPARTMENTS WHERE DEPT_ID_DEP IN(SELECT DEP_ID FROM EMPLOYEES WHERE SALARY > 70000);

(:Specify 2 tables in the FROM clause:)

SELECT * FROM DEPARTMENTS, EMPLOYEES;

(:Retrieve only the EMPLOYEES records that correspond to departments in:)
(:the DEPARTMENTS table:)

SELECT EMP_ID, F_NAME, DEP_ID, DEPT_ID_DEP FROM EMPLOYEES, DEPARTMENTS 
WHERE DEP_ID = DEPT_ID_DEP;

(:Use shorter aliases for table names:)

SELECT * FROM employees E, departments D WHERE E.DEP_ID = D.DEPT_ID_DEP;

(:In the above query specify the fully qualified column names with aliases:)
(:in the SELECT clause)

SELECT E.EMP_ID, D.DEP_NAME FROM employees E, departments D WHERE E.DEP_ID = D.DEPT_ID_DEP

