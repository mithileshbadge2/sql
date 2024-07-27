--to_char(date conversion)

SELECT * FROM employees;

SELECT sysdate, to_char(sysdate,'AD') from dual;
SELECT sysdate, to_char(sysdate,'A.D.') FROM dual;
SELECT sysdate, to_char(sysdate,'BC') from dual;
SELECT sysdate, to_char(sysdate,'B.C.') from dual;

SELECT EMPLOYEE_ID, SALARY, HIRE_DATE, TO_CHAR(HIRE_DATE,'BC')FROM employees;
--------------------------------------------------------------------------

--Meridian Indicator -am/pm

SELECT sysdate, to_char(sysdate,'AM') from dual;
SELECT sysdate, to_char(sysdate,'PM') from dual;

SELECT EMPLOYEE_ID, SALARY, HIRE_DATE, TO_CHAR(HIRE_DATE,'AM')FROM employees;
-----------------------------------------------------------------------------
--CENTURY INDICATOR --CC

SELECT sysdate, to_char(sysdate,'CC') FROM dual;
SELECT sysdate, to_char(sysdate,'CC-AD') FROM dual;

SELECT EMPLOYEE_ID, SALARY, HIRE_DATE, TO_CHAR(HIRE_DATE,'CC')FROM employees;
-----------------------------------------------------------------------------
--numeric week day indicator -D (1 to 7)

SELECT sysdate, to_char(sysdate,'D') from dual;

SELECT EMPLOYEE_ID, SALARY, HIRE_DATE, TO_CHAR(HIRE_DATE,'D') FROM employees;

-----------------------------------------------------------------------------
--WEEK DAY SPEELING INDICATOR -day/Day/DAY (1 to 7)

SELECT sysdate,to_char(sysdate,'Day') , to_char(sysdate,'DAY'), to_char(sysdate,'day') from dual;

SELECT employee_id , salary, hire_date, to_char(hire_date,'DAY'), to_char(hire_date,'Day'), to_char(hire_date,'day') from employees;

SELECT employee_id , salary, hire_date,to_char(hire_date,'DAY'), to_char(hire_date,'D') from employees;
----------------------------------------------------------------------------
--month day indicator-DD(1 to 31)

SELECT sysdate, to_char(sysdate,'DD') from dual;

SELECT sysdate, to_char(sysdate,'DD-DAY') from dual;

SELECT employee_id, salary, hire_date, to_char(hire_date,'DD') from employees;

SELECT employee_id , salary, hire_date, to_char(hire_date,'DD-DAY') from employees;

------------------------------------------------------------------------------------------
--year day indicator- DDD (1-366)

SELECT sysdate, to_char(sysdate,'DDD') from dual;

SELECT employee_id, salary, hire_date, to_char(hire_date,'DDD') FROM employees;

SELECT employee_id, salary, hire_date, to_char(hire_date,'DDD') FROM employees
WHERE to_char(hire_date,'DY') = 'MON';
------------------------------------------------------------------------
--julian day indicator--J
SELECT sysdate, to_char(sysdate,'J') FROM dual;

SELECT first_name,hire_date,to_char(hire_date,'J') from employees;

SELECT first_name,hire_date,to_char(hire_date,'J') from employees
WHERE department_id IN(10,20);

SELECT to_char(TO_DATE('27-OCT-2020','DD-MON-YYYY'),'J') julian_day FROM dual;
--------------------------------------------------------------------------
--number month indicator(MM)

SELECT sysdate,to_char(sysdate,'MM') from dual;

SELECT hire_date, to_char(hire_date,'MM') FROM employees;

-----------------------------------------------------------------------------