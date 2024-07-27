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

--SELECT INSTR('THIS IS A PLAYLIST', 'ARE') FROM DUAL;

--SELECT INSTR('THIS IS A PLAYLIST' , 'IS',-1) FROM DUAL;

SELECT INSTR('THIS IS A PLAYLIST' , 'IS',-1,2) FROM DUAL;

SELECT INSTR('THIS IS A PLAYLIST' , 'IS' , -1,3) FROM DUAL;

--------------------------------------------------------------------------

CREATE TABLE MARKS (
    MARKS_1 NUMBER,
    MARKS_2 NUMBER,
    MARKS_3 NUMBER
);

INSERT INTO MARKS (MARKS_1, MARKS_2, MARKS_3) VALUES (85, 90, 78);
INSERT INTO MARKS (MARKS_1, MARKS_2, MARKS_3) VALUES (88, 92, 81);
INSERT INTO MARKS (MARKS_1, MARKS_2, MARKS_3) VALUES (75, 85, 80);

SELECT * FROM marks;

SELECT MAX(MARKS_1) FROM MARKS;

SELECT MARKS_1, MARKS_2, MARKS_3,
GREATEST (MARKS_1, MARKS_2, MARKS_3) GREATEST_VALUE,
LEAST(MARKS_1, MARKS_2, MARKS_3) LEAST_VALUE
FROM marks;








