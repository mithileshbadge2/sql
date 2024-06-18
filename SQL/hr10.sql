--Constraints
--NOT NULL - COLUMN LEVEL
--UNIQUE   - COLUMN/TABLE LEVEL
--DEFAULT  - COLUMN LEVEL
-----------------------------------------
--DEFAULT  - COLUMN LEVEL
create table studentsinfo
(
student_id       NUMBER,
student_name     VARCHAR2(50),
student_dob      DATE,
student_country  VARCHAR2(50) DEFAULT 'India'
);
SELECT * FROM STUDENTSINFO;
Insert into studentsinfo (student_id,student_name,student_dob,student_country) 
values (1,'Mahesh',sysdate,'USA');
Insert into studentsinfo (student_id,student_name,student_dob) 
values (2,'Mahesh',sysdate);
Insert into studentsinfo (student_id,student_name,student_dob,student_country) 
values (NULL,'Mahesh',sysdate,null);
Insert into studentsinfo (student_id,student_name,student_dob) 
values (3,'Mahesh',sysdate);
Insert into studentsinfo (student_id,student_name,student_dob,student_country) 
values (4,'Mahesh',sysdate,' ');
------------------------------------------------------------------------------
drop table studentsinfo;
create table studentsinfo
(
student_id       NUMBER,
student_name     VARCHAR2(50),
student_dob      DATE DEFAULT SYSDATE,
student_country  VARCHAR2(50) DEFAULT 'India'
);
Insert into studentsinfo (student_id,student_name) 
values (2,'Mahesh');
----------------------------------------------------------------------
--Defaut constraint after table creation

create table studentsinfo
(
student_id       NUMBER,
student_name     VARCHAR2(50),
student_dob      DATE,
student_country  VARCHAR2(50) 
);

alter table studentsinfo modify student_country DEFAULT 'INDIA';
alter table studentsinfo modify student_country DEFAULT NULL;

Insert into studentsinfo (student_id,student_name) 
values (2,'Mahesh');
Insert into studentsinfo (student_id,student_name,student_dob,student_country) 
values (1,'Mahesh',null,null);
Insert into studentsinfo (student_id,student_name) 
values (1,'Mahesh');
--------------------------------------------------------------------------------
drop table studentsinfo;

create table studentsinfo
(
student_id       NUMBER,
student_name     VARCHAR2(50),
student_age      NUMBER,
student_country  VARCHAR2(50) 
);

Insert into studentsinfo (student_id,student_name,student_age,student_country) 
values (1,'Mahesh',150,'USA');
Insert into studentsinfo (student_id,student_name,student_age,student_country) 
values (2,'SURESH',-150,'USA');
--------------------------------------------------------------------------------
--At Column Level
drop table studentsinfo;
create table studentsinfo
(
student_id       NUMBER,
student_name     VARCHAR2(50),
student_age      NUMBER CHECK (STUDENT_AGE > 0 AND STUDENT_AGE < 125),
student_country  VARCHAR2(50) 
);

--INSERT INTO studentsinfo (student_id,student_name,student_age,student_country)
--VALUES (1,'SOMESH',150,'INDIA');

--INSERT INTO studentsinfo (student_id,student_name,student_age,student_country)
--VALUES (2,'SOMESH',-10,'INDIA');

INSERT INTO studentsinfo (student_id,student_name,student_age,student_country)
VALUES (3,'SOMESH',50,'INDIA');
-------------------------------------------------------------------------------
--At Table Level
drop table studentsinfo;

create table studentsinfo
(
student_id       NUMBER,
student_name     VARCHAR2(50),
student_age      NUMBER,
student_country  VARCHAR2(50),
CHECK (STUDENT_AGE > 0 AND STUDENT_AGE < 125 AND STUDENT_COUNTRY = 'INDIA')
);

--INSERT INTO studentsinfo(student_id,student_name,student_age,student_country)
--VALUES (1,'SURAJ',150,'USA');
--INSERT INTO studentsinfo(student_id,student_name,student_age,student_country)
--VALUES (2,'SURAJ',-12,'INDIA');
--INSERT INTO studentsinfo(student_id,student_name,student_age,student_country)
--VALUES (3,'SURAJ',25,'USA');
INSERT INTO studentsinfo(student_id,student_name,student_age,student_country)
VALUES (3,'SURAJ',124,'INDIA');

-------------------------------------------------------------------------------
--After Table Creation
DROP TABLE STUDENTSINFO;

create table studentsinfo
(
student_id       NUMBER,
student_name     VARCHAR2(50),
student_age      NUMBER,
student_country  VARCHAR2(50) 
);

ALTER TABLE STUDENTSINFO ADD CONSTRAINT CHECK_STD_AGE CHECK(STUDENT_AGE > 0 AND STUDENT_AGE < 125);
ALTER TABLE STUDENTSINFO DROP CONSTRAINT CHECK_STD_AGE;















































