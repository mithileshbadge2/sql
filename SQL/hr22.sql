--CONVERSION FUNCTION

--1. TO_CHAR(NUMBER CONVERSION)
--2. TO_CHAR(DATE CONVERSION)

--TO_CHAR(NUMBER CONVERSION)
--select 1234,TO_CHAR(1234,'999D99') from dual;

--DECIMAL INDICATOR - D(.)
SELECT 1234,To_char(1234,'9999D99') from dual;

SELECT 1234,to_char(1234,'999999D99') FROM dual;

SELECT 1234,TO_CHAR(1234) FROM DUAL;

SELECT 1234.10,TO_CHAR(1234.10,'999999D9') FROM DUAL;

SELECT 1234.10, TO_CHAR(1234.10,'999999D999') FROM DUAL;

SELECT 1234.10, TO_CHAR(1234.10,'999999.999') FROM DUAL;

---------------------------------------------------------
--GROUP SEPARATOR - G (,)

SELECT '1,21,943' FROM DUAL;

SELECT 123456,TO_CHAR(123456,'9G99G999') FROM DUAL;

SELECT 123456,TO_CHAR(123456,'9,99,999') FROM DUAL;

SELECT * FROM employees;

SELECT FIRST_NAME,SALARY,TO_CHAR(SALARY,'9G99G999') FROM employees;


SELECT first_name,salary,to_char(salary,'9g999') from employees;

SELECT FIRST_name,salary,to_char(salary,'9,99,999') from employees;
----------------------------------------------------------------------------------
--LOCAL CURRENCY INDICATOR - L

SELECT 1234,to_char(1234,'L9999') from dual;

SELECT 1234,to_char(1234,'9999L') from dual;

SELECT first_name,salary,to_char(salary,'999999L') from employees;

SELECT first_name,salary,to_char(salary,'L9,99,999.00') from employees;

SELECT first_name,salary,to_char(salary,'L9G99G999D00') from employees;

----------------------------------------------------------------------------
--Trailing Minus Indicator - MI

SELECT -10000, to_char(-10000,'L99999MI') FROM DUAL;

SELECT -10000, TO_CHAR(10000,'L99999MI') FROM DUAL;

---------------------------------------------------------------------------
--NUMBER INDICATOR - PR(<>)
SELECT -10000, TO_CHAR(-10000,'L99999PR'),TO_CHAR(10000,'L99999PR') FROM DUAL;

SELECT SALARY, TO_CHAR(SALARY,'L999999PR') FROM employees;

--------------------------------------------------------------------------
--ROMAN NUMBER (rn)

SELECT 12, TO_CHAR(12,'RN') FROM DUAL;

SELECT 99,TO_CHAR(99,'RN') FROM DUAL;

---------------------------------------------------------------------------
--SIGN(S)

SELECT -10000,TO_CHAR(-10000,'S99999'),TO_CHAR(-10000,'99999S') FROM DUAL;

SELECT -10000,TO_CHAR(-10000,'S99999'),TO_CHAR(10000,'99999S') FROM DUAL;

SELECT SALARY,TO_CHAR(SALARY,'S9999999') FROM employees;

--------------------------------------------------------------------------
--DOLLAR $

SELECT 10000,TO_CHAR(10000,'$99999'),TO_CHAR(10000,'99999$') FROM DUAL;

SELECT -10000,TO_CHAR(-10000,'$99999'),TO_CHAR(-10000,'99999$') FROM DUAL;

SELECT SALARY,TO_CHAR(SALARY,'$9999999') FROM employees;
-------------------------------------------------------------------------------
--ISO CURRENCY(C)

SELECT 10000,TO_CHAR(10000,'L99999'),TO_CHAR(10000,'C99999') FROM DUAL;

SELECT SALARY,TO_CHAR(SALARY,'C9999999') FROM employees;
-------------------------------------------------------------------------------
--ZERO(0)
SELECT 50000,TO_CHAR(50000,'099999'),TO_CHAR(50000,'999990') FROM DUAL;

SELECT SALARY,TO_CHAR(SALARY,'09999999.00'),TO_CHAR(SALARY,'9999999.00') FROM employees;
--------------------------------------------------------------------------
--DIGIT PLACE MAKER(9)

SELECT 1000,
        600,
        TO_CHAR(1000-600,'9999'),
        TO_CHAR(600-1000,'9999'),
        TO_CHAR(30.90-29,'99999'),
        TO_CHAR(30.60-30,'99999')
  FROM DUAL;
  
SELECT 1000,
        600,
        LENGTH(TO_CHAR(1000-600,'9999')),
        TO_CHAR(1000-600,'9999'),
        LENGTH(TO_CHAR(600-1000,'9999')),
        TO_CHAR(600-1000,'9999'),
        LENGTH(TO_CHAR(20.55-19,'999999')),
        LENGTH(TO_CHAR(20.11-20,'99999')),
        LENGTH(TO_CHAR(20.11-19,'99999')),
        LENGTH(TO_CHAR(20.44-19,'99999'))
   FROM DUAL;