--LTRIM
SELECT * FROM student;

SELECT LTRIM('ababORACLE','ab') from dual;

SELECT LTRIM('abxabORACLE','ab') from dual;

SELECT LTRIM('abxabORACLE','abx') from dual;

SELECT LTRIM('abxabORACLE','xab') from dual;

SELECT LTRIM('abxabORACLE','b') from dual;

SELECT SUBJECT, LTRIM(SUBJECT,'JA') from student;

SELECT LTRIM('A SQL CLASS', 'A'), LTRIM('ASQL CLASS','A') FROM dual;

--RTRIM

SELECT RTRIM('ababORACLEabab','ab') from dual;

SELECT RTRIM('ababORACLE','ab') from dual;

SELECT RTRIM('abxabORACLE','ab') from dual;

SELECT rtrim('abxabORACLE','abx') from dual;

select RTRIM('xyaxyORACLE','axy') from dual;

select RTRIM('xyaxyORACLE','y') from dual;

--TRIM

SELECT * FROM student;

SELECT subject, trim(subject) from student;

SELECT trim('P' FROM 'Python') from dual;

SELECT trim('P' FROM 'PythonP') from dual;

SELECT TRIM(LEADING 'P' FROM 'PythonP') from dual;

select LTRIM('Python','P') from dual;

SELECT TRIM(TRAILING 'P' FROM 'PythonP') from dual;

select RTRIM('Python','P') from dual;
