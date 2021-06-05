/*SQL Coding for training with ORACAL "https://livesql.oracle.com/apex/f?p=590:1:11257469250555::NO:::"
I use Oracal for training with SQL Code. You can also find more informaion on der website https://www.w3schools.com/sql/sql_union.asp


The SQL WHERE Clause
The WHERE clause is used to filter records.
It is used to extract only those records that fulfill a specified condition.*/


--1 AND, IN, NOT EXISTS und OR Operator in the WHERE Clause
SELECT *
FROM HR.EMPLOYEES
WHERE SALARY > 10000 and Manager_ID = 100 and DEPARTMENT_ID = 90
ORDER BY SALARY DESC

SELECT *
FROM HR.EMPLOYEES
WHERE SALARY > 10000 or Manager_ID = 100 or not DEPARTMENT_ID = 90
ORDER BY SALARY DESC

SELECT *
FROM HR.DEPARTMENTS  --HR.EMPLOYEES
WHERE EXISTS (SELECT MANAGER_ID FROM HR.EMPLOYEES WHERE HR.EMPLOYEES.MANAGER_ID = HR.DEPARTMENTS.MANAGER_ID and SALARY < 17000);


/*The SQL UNION Operator

The UNION operator is used to combine the result-set of two or more SELECT statements.

    Every SELECT statement within UNION must have the same number of columns
    The columns must also have similar data types
    The columns in every SELECT statement must also be in the same order*/

--2 UNION, UNION ALL, MINUS, LIKE und INTERSECT Operatoren

SELECT MANAGER_ID  FROM HR.EMPLOYEES
UNION
SELECT MANAGER_ID FROM HR.DEPARTMENTS
