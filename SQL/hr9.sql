--CONSTRAINTS
--1.NOT NULL
CREATE TABLE STUDENTSINFO ( STUDENT_ID       NUMBER NOT NULL,
                            STUDENT_NAME     VARCHAR2(50),
                            PARENT_NAME      VARCHAR2(50),
                            STUDENT_PHONE_NO NUMBER
                           );

INSERT INTO STUDENTSINFO (STUDENT_ID, STUDENT_NAME, PARENT_NAME, STUDENT_PHONE_NO)
VALUES (1,'MITHILESH','BADGE',9168076805);

INSERT INTO STUDENTSINFO (STUDENT_ID, student_name,parent_name,student_phone_no)
VALUES (2,'SOMESH','MAHOTO',7878965412);

--INSERT INTO STUDENTSINFO (STUDENT_ID, student_name,parent_name,student_phone_no)
--VALUES (NULL,'SOMESH','MAHOTO',7878965412);
--INSERT INTO STUDENTSINFO (student_name,parent_name,student_phone_no)
--VALUES ('SOMESH','MAHOTO',7878965412);

INSERT INTO STUDENTSINFO (STUDENT_ID, student_name,parent_name,student_phone_no)
VALUES (0,'SOMESH','MAHOTO',7878965412);

SELECT * FROM STUDENTSINFO;
------------------------------------------------------------------------------
DROP TABLE STUDENTSINFO;

CREATE TABLE STUDENTSINFO
(
STUDENT_ID         NUMBER NOT NULL,
STUDENT_NAME       VARCHAR2(50),
PARENT_NAME        VARCHAR2(50),
STUDENT_PHONE_NO   NUMBER NOT NULL
);

INSERT INTO STUDENTSINFO (student_id,student_name,parent_name,student_phone_no)
VALUES (1,'MANGESH','RAUT',8978456521);
--INSERT INTO STUDENTSINFO (student_id,student_name,parent_name,student_phone_no)
--VALUES (NULL,'MANGESH','RAUT',8978456521);
--INSERT INTO STUDENTSINFO (student_id,student_name,parent_name,student_phone_no)
--VALUES (2,'MANGESH','RAUT',NULL);
--INSERT INTO STUDENTSINFO (student_name,parent_name)
--VALUES ('MANGESH','RAUT');
INSERT INTO STUDENTSINFO (student_id,student_name,parent_name,student_phone_no)
VALUES (0,'MANGESH','RAUT',8978456521);

INSERT INTO STUDENTSINFO (student_id,student_name,parent_name,student_phone_no)
VALUES (' ','MANGESH','RAUT',' ');

SELECT * FROM STUDENTSINFO;
--------------------------------------------------------------------------------
DROP TABLE STUDENTSINFO;

CREATE TABLE STUDENTSINFO (STUDENT_ID       NUMBER,
                           STUDENT_NAME     VARCHAR2(50),
                           PARENT_NAME      VARCHAR2(50),
                           STUDENT_PHONE_NO NUMBER
                           );
                        
SELECT * FROM STUDENTSINFO;
DESC STUDENTSINFO;

ALTER TABLE STUDENTSINFO MODIFY (STUDENT_PHONE_NO NOT NULL);

INSERT INTO STUDENTSINFO( student_id,student_name,parent_name,student_phone_no)
VALUES (1,'RAHUL','PAWAR',7774861900);
INSERT INTO STUDENTSINFO(student_id,student_name,parent_name,student_phone_no)
VALUES (1,'RAHUL','PAWAR',NULL);

Update studentsinfo set student_phone_no = null; --RUN LINE 66
delete from studentsinfo where student_phone_no is null; --RUN LINE 66

--ALTER TABLE STUDENTSINFO MODIFY ( STUDENT_PHONE_NO NULL);
-------------------------------------------------------------------------------

--2.UNIQUE 
DROP TABLE studentsinfo;

CREATE TABLE studentsinfo
(
STUDENT_ID       NUMBER UNIQUE,
STUDENT_NAME     VARCHAR2(50),
PARENT_NAME      VARCHAR2(50),
STUDENT_PHONE_NO NUMBER
);

INSERT INTO studentsinfo(STUDENT_ID,student_name,parent_name,student_phone_no)
VALUES (1,'SAURABH','BUCHAL',9225211438);
--INSERT INTO studentsinfo(STUDENT_ID,student_name,parent_name,student_phone_no)
--VALUES (1,'SAURABH','BUCHAL',NULL);
INSERT INTO studentsinfo(STUDENT_ID,student_name,parent_name,student_phone_no)
VALUES (NULL,'SAURABH','BUCHAL',NULL);

SELECT * FROM STUDENTSINFO;
DESC STUDENTSINFO;
-------------------------------------------------------------------------------------
create table studentsinfo (student_id NUMBER UNIQUE,
                           student_name VARCHAR2(50),
                           parent_name VARCHAR2(50),
                           student_phone_no NUMBER UNIQUE
                           );
                           
insert into studentsinfo (student_id,student_name,parent_name,student_phone_no)                        
values (1,'kunal','gawande',8989898989);
--insert into studentsinfo (student_id,student_name,parent_name,student_phone_no)                        
--values (1,'kunal','gawande',8989898989);
--insert into studentsinfo (student_id,student_name,parent_name,student_phone_no)                        
--values (1,'kunal','gawande',1234567890);
--insert into studentsinfo (student_id,student_name,parent_name,student_phone_no)                        
--values (2,'kunal','gawande',8989898989);
insert into studentsinfo (student_id,student_name,parent_name,student_phone_no)                        
values (NULL,'kunal','gawande',null);

select * from studentsinfo;
--------------------------------------------------------------------------------
--unique constraints on one field #table level

drop table studentsinfo;

create table studentsinfo (student_id        NUMBER,
                           student_name      VARCHAR2(50),
                           parent_name       VARCHAR2(50),
                           student_phone_no  NUMBER,
                           UNIQUE(student_id)
                           );
insert into studentsinfo(student_id, student_name,parent_name,student_phone_no)
values (1,'monty','badge',9168076805);
--insert into studentsinfo(student_id, student_name,parent_name,student_phone_no)
--values (1,'monty','badge',9168076805);
insert into studentsinfo(student_id, student_name,parent_name,student_phone_no)
values (2,'monty','badge',9168076805);
insert into studentsinfo(student_id, student_name,parent_name,student_phone_no)
values (null,'monty','badge',null);
select * from studentsinfo;
drop table studentsinfo;

-------------------------------------------------------------------------------
--Unique Constraint on multiple fields #table level
create table studentsinfo
(
student_id       NUMBER,
student_name     VARCHAR2(50),
parent_name      VARCHAR2(50),
student_phone_no NUMBER,
UNIQUE(student_id,student_phone_no)
);

insert into studentsinfo(student_id,student_name,parent_name,student_phone_no)
VALUES(1,'mithilesh','badge',8989898989);
--insert into studentsinfo(student_id,student_name,parent_name,student_phone_no)
--VALUES(1,'mithilesh','badge',8989898989);
insert into studentsinfo(student_id,student_name,parent_name,student_phone_no)
VALUES(1,'mithilesh','badge',8989898986);
insert into studentsinfo(student_id,student_name,parent_name,student_phone_no)
VALUES(2,'mithilesh','badge',8989898989);
insert into studentsinfo(student_id,student_name,parent_name,student_phone_no)
VALUES(null,'mithilesh','badge',null);
drop table studentsinfo;
-------------------------------------------------------------------------------
--#column level
create table studentsinfo
(
student_id   NUMBER UNIQUE,
student_name VARCHAR2(50),
parent_name  VARCHAR2(50),
student_phone_no NUMBER UNIQUE
);
drop table studentsinfo;
-------------------------------------------------------------------------------
--Apply Unique Constraint after table created at column level
create table studentsinfo
(
student_id       NUMBER,
student_name     VARCHAR2(50),
parent_name      VARCHAR2(50),
student_phone_no NUMBER
);
ALTER TABLE studentsinfo ADD CONSTRAINT Unique_student_id UNIQUE(student_id);

insert into studentsinfo(student_id,student_name,parent_name,student_phone_no)
VALUES(1,'mithilesh','badge',8989898989);
--insert into studentsinfo(student_id,student_name,parent_name,student_phone_no)
--VALUES(1,'mithilesh','badge',8989898989);
--insert into studentsinfo(student_id,student_name,parent_name,student_phone_no)
--VALUES(1,'mithilesh','badge',5656565656);
insert into studentsinfo(student_id,student_name,parent_name,student_phone_no)
VALUES(2,'mithilesh','badge',8989898989);
insert into studentsinfo(student_id,student_name,parent_name,student_phone_no)
VALUES(null,'mithilesh','badge',null);
drop table studentsinfo;
-------------------------------------------------------------------------------
--Apply Unique Constraint after table created at Table level
create table studentsinfo
(
student_id       NUMBER,
student_name     VARCHAR2(50),
parent_name      VARCHAR2(50),
student_phone_no NUMBER
);

ALTER TABLE studentsinfo ADD CONSTRAINT Unique_student_id UNIQUE(student_id,student_phone_no);

--ALTER TABLE studentsinfo ADD CONSTRAINT Unique_student_id UNIQUE(student_id);
--ALTER TABLE studentsinfo ADD CONSTRAINT Unique_student_id UNIQUE(student_phone_no);

insert into studentsinfo(student_id,student_name,parent_name,student_phone_no)
VALUES(1,'mithilesh','badge',8989898989);
--insert into studentsinfo(student_id,student_name,parent_name,student_phone_no)
--VALUES(1,'mithilesh','badge',8989898989);
insert into studentsinfo(student_id,student_name,parent_name,student_phone_no)
VALUES(1,'mithilesh','badge',5656565656);
insert into studentsinfo(student_id,student_name,parent_name,student_phone_no)
VALUES(2,'mithilesh','badge',8989898989);
insert into studentsinfo(student_id,student_name,parent_name,student_phone_no)
VALUES(null,'mithilesh','badge',null);
--------------------------------------------------------------------------------
--Drop Unique constraints
ALTER TABLE studentsinfo ADD CONSTRAINT UNIQUE_STUDENT_ID UNIQUE(STUDENT_ID,STUDENT_PHONE_NO);

ALTER TABLE studentsinfo DROP CONSTRAINT UNIQUE_STUDENT_ID;
--ALTER TABLE studentsinfo DROP CONSTRAINT SYS_C007073;








                           
                           















