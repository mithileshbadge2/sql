--LIKE OPERATOR
--%(WILDCARD CHARACTER)
select * from students_info_3;

SELECT * FROM students_info_3 WHERE studentname like 'S%';

SELECT * FROM students_info_3 where studentname like '%s%';

SELECT * FROM students_info_3 where studentname like '%R%';

SELECT * FROM students_info_3 where studentname like '%h';

--_(WILDCARD CHARACTER)

select * from students_info_3 where studentname like '_onty';
select * from students_info_3 where addressofstudent like '_ank_pur';
SELECT * FROM students_info_3 where addressofstudent like '_ivil L_nes';
select * from students_info_3 where addressofstudent like '_uta_a';
SELECT * FROM students_info_3 where addressofstudent like '_a%'; 

-------------------------------------------------------------------------
--FUNCTIONS

--NVL
SELECT NVL(100,200) FROM DUAL;

SELECT NVL(NULL,200) FROM DUAL;

SELECT * FROM employees;
SELECT EMPLOYEE_ID, FIRST_NAME, JOB_ID, SALARY, COMMISSION_PCT FROM employees WHERE job_id LIKE 'IT_PROG';

SELECT EMPLOYEE_ID, FIRST_NAME, JOB_ID, SALARY, COMMISSION_PCT, (SALARY + COMMISSION_PCT) TOTAL_SALARY
FROM employees WHERE JOB_ID LIKE 'IT_PROG';

SELECT EMPLOYEE_ID, FIRST_NAME, JOB_ID, SALARY, COMMISSION_PCT, (SALARY + NVL(COMMISSION_PCT,0)) TOTAL_SALARY
FROM employees WHERE JOB_ID LIKE 'IT_PROG';

SELECT EMPLOYEE_ID, FIRST_NAME, JOB_ID, SALARY, COMMISSION_PCT, NVL((SALARY + COMMISSION_PCT),0) TOTAL_SALARY
FROM employees WHERE JOB_ID LIKE 'IT_PROG';

SELECT (SALARY + COMMISSION_PCT) TOTAL_SALARY
FROM employees WHERE job_id LIKE 'IT_PROG';

SELECT COMMISSION_PCT, NVL(COMMISSION_PCT,50) FROM employees;

SELECT * FROM employee1;

SELECT ELOCATION, NVL(ELOCATION,'N/A'), HIREDATE, NVL(HIREDATE,SYSDATE) FROM employee1;
-----------------------------------------------------------------------------------------
--NVL2
SELECT NVL2(100,1,2) FROM DUAL;
SELECT NVL2(NULL,1,2) FROM DUAL;

SELECT NVL2(NULL,'ABC','XYZ') FROM DUAL;
SELECT NVL2('MONTY','ABC','XYZ') FROM DUAL;

SELECT * FROM employee1;

SELECT ELOCATION, NVL2(ELOCATION,'NEPAL','INDIA') FROM employee1;
-----------------------------------------------------------------------
--NULLIF

SELECT NULLIF('ABC','ABC') FROM DUAL;
SELECT NULLIF('ABC','XYZ') FROM DUAL;

--SELECT NULLIF(NULL,'XYZ') FROM DUAL;
SELECT NULLIF('XYZ',NULL) FROM DUAL;

select * from employees;
SELECT FIRST_NAME, LAST_NAME, NULLIF(FIRST_NAME, LAST_NAME) FROM employees;
SELECT EMPLOYEE_ID,MANAGER_ID,NULLIF(EMPLOYEE_ID,MANAGER_ID) FROM employees;
---------------------------------------------------------------------------
--COALESCE

SELECT COALESCE(NULL,NULL,NULL,NULL,1) FROM DUAL;

SELECT COALESCE(2,NULL,NULL,NULL,1) FROM DUAL;

SELECT COALESCE(NULL,NULL,3,NULL,1) FROM DUAL;

select COALESCE(null,null,'A',null,'B') from dual;

--select COALESCE(null,1,'A') from dual;

--SELECT COALESCE(NULL,1,'A') FROM DUAL;

--select COALESCE(null,'A',1) from dual;
----------------------------------------------------------------------------
--Column Alias/ Table Alias
--COLUMN ALIAS
SELECT * FROM EMP;

--EMP_ID, EMP_NAME, EMP_SAL, EMP_DOJ
SELECT 
EMP_ID "employee_id", 
EMP_NAME "Employee_Name", 
EMP_SAL EMPLOYEE_SALARY, 
EMP_DOJ "EMPLOYEE DATE OF JOINING" 
from emp;

SELECT EMP_ID, EMP_NAME, EMP_SAL, EMP_DOJ FROM EMP;

SELECT
EMP_ID as "employee_id",
EMP_NAME as "Employee_Name",
EMP_SAL as EMPLOYEE_SALARY,
EMP_DOJ as "EMPLOYEE DATE OF JOINING"
from emp;

--TABLE ALIAS

SELECT * FROM employees;
SELECT e.EMPLOYEE_ID, e.MANAGER_ID, e.DEPARTMENT_ID, e.FIRST_NAME from employees e;

SELECT * FROM emp_log;
SELECT * FROM emp_details;

select el.emp_id, el.emp_name, ed.EMP_ID, ed.EMP_ADDRESS, ed.EMP_ADDRESS_CODE
FROM emp_log el INNER JOIN emp_details ed
on el.emp_id = ed.emp_id;