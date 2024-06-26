--AGGREGATE FUNCTIONS OR GROUP FUNCTIONS(GROUP BY)
SELECT * FROM VENDORS;
--MINIMUM
SELECT MIN(VENDOR_PRICE) FROM VENDORS;
SELECT MIN(VENDOR_ID) FROM VENDORS;
SELECT MIN(VENDOR_COUNTRY) FROM VENDORS;
SELECT MIN(VENDOR_NAME) FROM VENDORS;
--select MIN(VENDOR_PRICE),VENDOR_PRICE from vendors;
SELECT VENDOR_PRICE FROM VENDORS;

--MAXIMUM
SELECT MAX(VENDOR_PRICE) FROM VENDORS;
SELECT MAX(VENDOR_COUNTRY) FROM VENDORS;
SELECT MAX(VENDOR_ID) FROM VENDORS;

--SUM
SELECT SUM(VENDOR_PRICE)FROM VENDORS;
--SELECT SUM(VENDOR_COUNTRY) FROM VENDORS;
SELECT SUM(VENDOR_ID) FROM VENDORS;

--AVERAGE
SELECT AVG(VENDOR_PRICE) FROM VENDORS;
SELECT AVG(VENDOR_ID) FROM VENDORS;
--SELECT AVG(VENDOR_COUNTRY) FROM VENDORS;

SELECT AVG(VENDOR_PRICE) FROM VENDORS;
SELECT SUM(VENDOR_PRICE)FROM VENDORS;
SELECT 343000/12 FROM DUAL;
SELECT 343000/13 FROM DUAL;

--COUNT
SELECT COUNT(VENDOR_PRICE) FROM VENDORS;
SELECT COUNT(VENDOR_ID) FROM VENDORS;
SELECT COUNT(VENDOR_NAME) FROM VENDORS;
SELECT COUNT(VENDOR_COUNTRY) FROM VENDORS;
SELECT COUNT(*) FROM VENDORS;

SELECT AVG(VENDOR_PRICE) FROM VENDORS;
SELECT 28583.3333333333333333333333333333333333 - 10000 FROM DUAL;
SELECT 28583.3333333333333333333333333333333333 - 15000 FROM DUAL;

SELECT STDDEV(VENDOR_PRICE)FROM VENDORS;
--VARIANCE
SELECT VARIANCE(VENDOR_PRICE)FROM VENDORS;

SELECT * FROM EMPLOYEES;

SELECT MIN(HIRE_DATE) FROM EMPLOYEES;
SELECT MAX(HIRE_DATE) FROM EMPLOYEES;
SELECT COUNT(HIRE_DATE) FROM EMPLOYEES;
--SELECT SUM(HIRE_DATE) FROM employees;
--SELECT AVG(HIRE_DATE) FROM EMPLOYEES;

SELECT MIN(HIRE_DATE), MAX(HIRE_DATE), COUNT(HIRE_DATE) FROM EMPLOYEES;














