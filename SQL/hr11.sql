--primary key constraint
--pk at column level
drop table studentsinfo;

create table studentsinfo
(
student_id        NUMBER PRIMARY KEY,
STUDENT_NAME      VARCHAR2(50),
PARENT_NAME       VARCHAR2(50),
STUDENT_PHONE_NO  NUMBER
);

INSERT INTO studentsinfo(student_id,student_name,parent_name,student_phone_no)
VALUES (1,'RAHUL','SAHU',8989898989);
--INSERT INTO studentsinfo(student_id,student_name,parent_name,student_phone_no)
--VALUES (1,'RAHUL','SAHU',8989898989);
INSERT INTO studentsinfo(student_id,student_name,parent_name,student_phone_no)
VALUES (NULL,'RAHUL','SAHU',5656565656);
INSERT INTO studentsinfo(student_id,student_name,parent_name,student_phone_no)
VALUES (2,'RAHUL','SAHU',5656565656);

SELECT * FROM STUDENTSINFO;

-----------------------------------------------------------------------------
--PK AT TABLE LEVEL

DROP TABLE STUDENTSINFO;

CREATE TABLE STUDENTSINFO
(
STUDENT_ID     NUMBER,
STUDENT_NAME   VARCHAR2(50),
PARENT_NAME    VARCHAR2(50),
STUDENT_PHONE_NO NUMBER,
PRIMARY KEY (STUDENT_ID,STUDENT_NAME)
);

INSERT INTO STUDENTSINFO(student_id,student_name,parent_name,student_phone_no)
VALUES (1,'VEDANT','GAIKWAD',5656565656);
--INSERT INTO STUDENTSINFO(student_id,student_name,parent_name,student_phone_no)
--VALUES (1,'VEDANT','GAIKWAD',5656565656);
INSERT INTO STUDENTSINFO(student_id,student_name,parent_name,student_phone_no)
VALUES (2,'VEDANT','GAIKWAD',5656565656);

--INSERT INTO STUDENTSINFO(student_id,student_name,parent_name,student_phone_no)
--VALUES (NULL,'VEDANT','GAIKWAD',2121212121);
INSERT INTO STUDENTSINFO(student_id,student_name,parent_name,student_phone_no)
VALUES (2,'AMOL','GAIKWAD',2121212121);
--INSERT INTO STUDENTSINFO(student_id,student_name,parent_name,student_phone_no)
--VALUES (2,NULL,'GAIKWAD',2121212121);
--INSERT INTO STUDENTSINFO(student_id,student_name,parent_name,student_phone_no)
--VALUES (NULL,NULL,'GAIKWAD',2121212121);
INSERT INTO STUDENTSINFO(student_id,student_name,parent_name,student_phone_no)
VALUES (1,'AMOL','GAIKWAD',2121212121);
------------------------------------------------------------------------------
--PK at column level after table creation
DROP TABLE STUDENTSINFO;

create table studentsinfo
(
student_id       NUMBER ,
student_name     VARCHAR2(50),
parent_name      VARCHAR2(50),
student_phone_no NUMBER
);

--ALTER TABLE studentsinfo ADD CONSTRAINT PK_STUDENT_ID PRIMARY KEY (student_id);
--ALTER TABLE studentsinfo ADD CONSTRAINT PK_STUDENT_ID PRIMARY KEY (student_phone_no);
--------------------------------------------------------------------------------------
--PK at table level after table creation
DROP TABLE studentsinfo;

create table studentsinfo
(
student_id       NUMBER ,
student_name     VARCHAR2(50),
parent_name      VARCHAR2(50),
student_phone_no NUMBER
);

ALTER TABLE studentsinfo ADD CONSTRAINT PK_STUDENT_ID PRIMARY KEY (student_id,student_phone_no);

--drop constraint
alter table studentsinfo drop CONSTRAINT pk_student_id;
--------------------------------------------------------------------------------------------------
select * from user_constraints where table_name = 'studentsinfo';

select * from user_cons_columns where TABLE_NAME = 'STUDENTSINFO';









