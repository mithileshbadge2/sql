--substring
SELECT substr('oracle substring', 1,6) from dual; 

SELECT substr('Oracle SUBSTRING',-10,6) from dual;

SELECT substr('Oracle SUBSTRING',2) from dual;

SELECT substr('Oracle SUBSTRING',-9) from dual;

SELECT * from employees WHERE substr(JOB_ID,4) = UPPER('PROG');

SELECT * FROM employees WHERE substr(FIRST_NAME,4) = 'an';

SELECT * FROM employees where substr(FIRST_Name,4,2) = 'an';

--INSTRING

SELECT INSTR('THIS IS SQL CLASS' , 'IS') from dual;

SELECT INSTR('THIS IS SQL CLASS' , 'SQL') FROM DUAL;

SELECT INSTR('THIS IS A PLAYLIST' , 'IS',1,2) FROM DUAL;

SELECT INSTR('THIS IS A PLAYLIST' , 'IS',1,3) FROM DUAL;

--30



