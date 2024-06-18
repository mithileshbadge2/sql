CURRVAL and NEXTVAL
create table student (std_id NUMBER, std_name VARCHAR2(30), std_Marks NUMBER(6), std_DOJ DATE);
create table emp (emp_id NUMBER, emp_name VARCHAR2(30), emp_sal NUMBER(6), emp_DOJ DATE);

SELECT * FROM student;
SELECT * FROM emp;

create sequence seq_id;

insert into student values (seq_id.NEXTVAL,'Mohit',98,sysdate);
insert into emp values (seq_id.NEXTVAL,'Soham',80000,sysdate);
insert into emp values (seq_id.NEXTVAL,'Soham',90000,sysdate);
insert into emp values (seq_id.NEXTVAL,'Soham',100000,sysdate);

insert into student values (503,'Mohit',98,sysdate);
SELECT * FROM student;
select seq_student_id.CURRVAL from dual;
select seq_student_id.NEXTVAL from dual;

drop sequence SEQ_STUDENT_ID;

create sequence SEQ_STUDENT_ID;

 CREATE SEQUENCE  SEQ_STUDENT_ID
select seq_student_id.NEXTVAL from dual;
select seq_student_id.CURRVAL from dual;
--------------------------------------------
CREATE SEQUENCE SEQ_STUDENT_ID;

select SEQ_STUDENT_ID.NEXTVAL from dual;
select SEQ_STUDENT_ID.CURRVAL from dual;

CREATE OR REPLACE PROCEDURE proc_emp_details
   ( p_emp_name       VARCHAR2,
     p_emp_sal        Number
    )
IS BEGIN
INSERT INTO EMP(emp_id , emp_name , emp_sal , emp_DOJ)
values (SEQ_ID.NEXTVAL,p_emp_name,p_emp_sal,SYSDATE);

Commit;
END proc_emp_details;

execute proc_emp_details('Shobhit',75000);
SELECT * FROM emp;
------------------------------------------------------------
select * from Students_info_3;

insert into Students_info_3 values (1,'Dipak','Mishra',78787878,'Civil Lines','Mumbai','India');
insert into Students_info_3 values (1,'Dipak','Mishra',78787878,'Civil Lines','Mumbai','India');
commit;

DELETE FROM Students_info_3 WHERE STUDENTID = 1;

select rowid,STUDENTID, STUDENTNAME, PARENTNAME, PHONENUMBER, ADDRESSOFSTUDENT, CITY, COUNTRY
from Students_info_3 ;

DELETE FROM Students_info_3 WHERE ROWID = 'AAAFM7AAEAAAAF/AAG';

SELECT LENGTH('AAAFM7AAEAAAAF9AAE') FROM DUAL;

SELECT SYSDATE FROM DUAL;

ALTER SESSION SET NLS_DATE_FORMAT = 'YYYY-MON-DD';
------------------------------------------------------------------------------------------------
--ROWNUM
select rowid,STUDENTID, STUDENTNAME, PARENTNAME, PHONENUMBER, ADDRESSOFSTUDENT, CITY, COUNTRY
from Students_info_3 ;

select rownum, STUDENTID, STUDENTNAME, PARENTNAME, PHONENUMBER, ADDRESSOFSTUDENT, CITY, COUNTRY
from Students_info_3 ;

select rownum, STUDENTID, STUDENTNAME, PARENTNAME, PHONENUMBER, ADDRESSOFSTUDENT, CITY, COUNTRY
from Students_info_3 order by STUDENTID;

select rownum, STUDENTID, STUDENTNAME, PARENTNAME, PHONENUMBER, ADDRESSOFSTUDENT, CITY, COUNTRY
from Students_info_3 where ROWNUM = 1;

select rownum, STUDENTID, STUDENTNAME, PARENTNAME, PHONENUMBER, ADDRESSOFSTUDENT, CITY, COUNTRY
FROM Students_info_3 WHERE ROWNUM <=2;

select rownum, STUDENTID, STUDENTNAME, PARENTNAME, PHONENUMBER, ADDRESSOFSTUDENT, CITY, COUNTRY
FROM Students_info_3 WHERE ROWNUM <=3;

DELETE FROM Students_info_3 WHERE STUDENTID = 4;
-------------------------------------------------------------------------------------------------
SELECT USER FROM DUAL;
SHOW USER;

SELECT * FROM STUDENT;

INSERT INTO STUDENT VALUES (2,USER,75,SYSDATE);
----------------------------------------------------------------------
SELECT * FROM EMPLOYEES;

SELECT EMPLOYEE_ID, MANAGER_ID, FIRST_NAME, LAST_NAME
FROM EMPLOYEES
START WITH FIRST_NAME = 'Daniel'
connect by prior EMPLOYEE_ID = MANAGER_ID;

select EMPLOYEE_ID, FIRST_NAME, level, sys_connect_by_path(FIRST_NAME, '=') path
from employees
start with FIRST_NAME = 'Lex'
connect by prior EMPLOYEE_ID = MANAGER_ID
order by level;

select level
from dual
connect by level <=12;

select level + 6
from dual
connect by level <=12;

select SYSDATE FROM DUAL;
SELECT SYSTIMESTAMP FROM DUAL;

SELECT * FROM studentsinfo_3;

DESC studentsinfo_3;




