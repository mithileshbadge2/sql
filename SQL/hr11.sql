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
-------------------------------------------------------------------------------------------
--FOREIGN KEY
select * from EMPLOYEES;
SELECT * FROM DEPARTMENTS;
SELECT * FROM locations;
SELECT * FROM countries;

drop table vendors;
drop table vendors_groups;

--PARENT TABLE
create table vendor_groups
(
group_id   NUMBER PRIMARY KEY,
group_name VARCHAR2(100)
);

--CHILD TABLE
create table vendors
(
vendor_id   NUMBER PRIMARY KEY,
Vendor_name VARCHAR2(100),
Group_id    NUMBER,
CONSTRAINT FK_GROUP_ID FOREIGN KEY(Group_id)
REFERENCES vendor_groups (Group_id)
);

INSERT INTO vendor_groups (group_id,group_name) values (1,'Third-Party Vendors');
insert into vendor_groups (group_id,group_name) values (2,'Interco Vendors');
insert into vendor_groups (group_id,group_name) values (3,'One-Time Vendors');

select * from vendor_groups;
select * from vendors;

INSERT INTO vendors (vendor_id,Vendor_name,Group_id) values (1,'ABC Corp',1);
--INSERT INTO vendors (vendor_id,Vendor_name,Group_id) values (2,'XYZ Corp',4);
INSERT INTO vendors (vendor_id,Vendor_name,Group_id) values (2,'XYZ Corp',null);
INSERT INTO vendors (vendor_id,Vendor_name,Group_id) values (3,'ABC Corp',1);
--INSERT INTO vendors (vendor_id,Vendor_name,Group_id) values (4,'XYZ Corp',4);
--------------------------------------------------------------------------
UPDATE vendors SET group_id = 3 WHERE group_id IS NULL;

--delete from vendor_groups where group_id = 3;
DELETE from vendors where group_id = 3;
-------------------------------------------------------------------------
--on delete cascade
drop table vendors;
drop table vendor_groups;

--PARENT TABLE
create table vendor_groups
(
GROUP_ID   NUMBER PRIMARY KEY,
group_name VARCHAR2(100)
);

--child table
create TABLE vendors
(
VENDOR_ID   NUMBER PRIMARY KEY,
VENDOR_NAME VARCHAR2(100),
GROUP_ID    NUMBER,
CONSTRAINT  FK_GROUP_ID FOREIGN KEY(GROUP_ID)
REFERENCES  vendor_groups (GROUP_ID)
ON DELETE CASCADE
);

INSERT INTO vendor_groups (group_id,group_name) values (1,'Third-Party Vendors');
INSERT INTO vendor_groups (GROUP_ID,group_name) values (2,'Interco Vendors');
INSERT INTO vendor_groups (GROUP_ID,group_name) values (3,'One-Time Vendors');

select * from vendor_groups;
select * from vendors;

INSERT INTO vendors (vendor_id,Vendor_name,Group_id) values (1,'ABC Corp',1);
INSERT INTO vendors (vendor_id,Vendor_name,Group_id) values (2,'XYZ Corp',null);
INSERT INTO vendors (vendor_id,Vendor_name,Group_id) values (3,'ABC Corp',1);
INSERT INTO vendors (vendor_id,Vendor_name,Group_id) values (4,'XYZ Corp',3);
INSERT INTO vendors (vendor_id,Vendor_name,Group_id) values (5,'XYZ Corp',2);


delete from vendor_groups where GROUP_ID = 3;
delete from vendor_groups where GROUP_ID = 2;
--------------------------------------------------------------------------------
--on delete set null
drop table vendor_groups;
drop table vendors;

--parent table
create table vendor_groups
(
group_id    NUMBER Primary Key,
group_name  VARCHAR2(100)
);
--CHILD TABLE
CREATE TABLE VENDORS
(
vendor_id   NUMBER PRIMARY KEY,
vendor_name VARCHAR2(100),
group_id    NUMBER,
CONSTRAINT  FK_GROUP_ID FOREIGN KEY(Group_id)
REFERENCES  vendor_groups (group_id)
ON DELETE SET NULL
);

INSERT INTO vendor_groups (group_id,group_name) VALUES (1,'Third-Party Vendors');
INSERT INTO vendor_groups (group_id,group_name) VALUES (2,'Interco Vendors');
INSERT INTO vendor_groups (group_id,group_name) VALUES (3,'One-Time Vendors');
INSERT INTO vendor_groups (group_id,group_name) VALUES (4,'Multi Vendors');

select * from vendor_groups;
select * from vendors;

insert into vendors (vendor_id,vendor_name,Group_id) values (1,'ABC Corp',1);
insert into vendors (vendor_id,vendor_name,Group_id) values (2,'XYZ Corp',null);
insert into vendors (vendor_id,vendor_name,Group_id) values (3,'ABC Corp',1);
insert into vendors (vendor_id,vendor_name,Group_id) values (4,'xyz Corp',3);
insert into vendors (vendor_id,vendor_name,Group_id) values (5,'ABC Corp',2);

DELETE FROM vendor_groups WHERE group_id = 3; 
delete from vendor_groups where group_id = 2;

update vendors set GROUP_ID = 1 where VENDOR_ID = 5;
update vendors set GROUP_ID = 4 where vendor_id = 4;

--FK after table created




























