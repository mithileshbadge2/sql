--LOWER, UPPER , INITCAP

--LOWER
SELECT LOWER('ABC') FROM DUAL;

SELECT LOWER('SQL CLASS ON friday') FROM dual;

SELECT * FROM emp;
SELECT emp_id, emp_name, emp_sal, emp_doj from emp
where lower(EMP_NAME) = lower('SOHAM');

SELECT UPPER('sql class on monday') from dual;

SELECT emp_id, emp_name, emp_sal, emp_doj FROM emp
where upper(emp_name) = upper('Shobhit');

SELECT 'SQL', upper('sql'), lower('SQL'), initcap('sql') from dual;

select emp_id , emp_name, emp_sal, emp_doj from emp
where upper(EMP_NAME) = upper('maali');

--SELECT * FROM employees WHERE first_name = user_input;

SELECT * FROM employees WHERE first_name = 'Steven';

--SELECT * FROM employees WHERE first_name = Upper(user_input);
SELECT * FROM employees WHERE upper(FIRST_NAME) = upper('steven');
SELECT * FROM employees WHERE upper(FIRST_NAME) = 'STEVEN';

SELECT * FROM employees where lower(FIRST_NAME) = lower('Steven');
SELECT * FROM employees WHERE lower('Steven') = lower('STEVEN');

SELECT initcap('ABC XYZ') FROM dual;

SELECT FIRST_NAME, UPPER(FIRST_NAME) from employees;

