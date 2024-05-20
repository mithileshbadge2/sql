CREATE TABLE Studentsinfo3 (studentId        NUMBER,
                           studentName      VARCHAR2(50),
                           parentName       VARCHAR2(50),
                           phoneNumber      NUMBER,
                           addressofStudent VARCHAR2(100),
                           city             VARCHAR2(50),
                           country          VARCHAR2(50)
                           );
Pune,Maharashtra

select * from Studentsinfo3;
desc Studentsinfo3;

--ALTER  - ADD, MODIFY, RENAME,  DROP 
ALTER TABLE Studentsinfo3 ADD BloodGroup CHAR(20);
ALTER TABLE Studentsinfo3 MODIFY BloodGroup VARCHAR2(50);
ALTER TABLE Studentsinfo3 RENAME COLUMN BloodGroup TO BloodType;
ALTER TABLE Studentsinfo3 DROP COLUMN BloodType;

desc students_info_3;
select * from students_info_3;
RENAME Studentsinfo3 TO students_info_3;
DROP TABLE students_info_3;

TRUNCATE

DESC Studentsinfo3;
select * from Studentsinfo3;

INSERT INTO Studentsinfo3 VALUES (1,'MONTY','BADGE',83290988,'SADAR','NAGPUR','INDIA');
INSERT INTO Studentsinfo3 VALUES (1,'MONTY','BADGE',83290988,'SADAR','NAGPUR','INDIA');
INSERT INTO Studentsinfo3 VALUES (1,'MONTY','BADGE',83290988,'SADAR','NAGPUR','INDIA');
INSERT INTO Studentsinfo3 VALUES (1,'MONTY','BADGE',83290988,'SADAR','NAGPUR','INDIA');
INSERT INTO Studentsinfo3 VALUES (1,'MONTY','BADGE',83290988,'SADAR','NAGPUR','INDIA');

COMMIT;

TRUNCATE TABLE Studentsinfo3;

DESC Studentsinfo3;
select * from Studentsinfo3;

DROP TABLE Studentsinfo3;

SELECT LENGTH('Studentsinfo3_5555588855') from dual;

CREATE TABLE Students_info_3 (studentid        NUMBER,
                              StudentName      VARCHAR2(50),
                              ParentName       VARCHAR2(50),
                              PhoneNumber      NUMBER,
                              AddressofStudent VARCHAR2(50),
                              City             VARCHAR2(50),
                              Country          VARCHAR2(50)
                              );
                    
select * from Students_info_3;
DESC Students_info_3;
------------------------------------------------------------
--DML-DATA MANUPULATION LANGUAGE
INSERT
select * from Students_info_3;
DESC Students_info_3;

INSERT INTO Students_info_3(STUDENTID,STUDENTNAME,PARENTNAME,PHONENUMBER,ADDRESSOFSTUDENT,CITY,COUNTRY)
VALUES (1,'Saurabh','Bhosle',12345678,'Mankapur','Nagpur','India');

INSERT INTO Students_info_3 VALUES(2,'Mahesh','munde',12345678,'Mankapur','Nagpur','India');

insert into Students_info_3 VALUES(3,'Monty','Badge',12345678,'Mankapur','Nagpur','India');

insert into Students_info_3 VALUES(4,'durgesh','mohato',12345678,'Mankapur','Nagpur','India');

insert into Students_info_3 VALUES(5,'vishal','kamble',12345678,'Mankapur','Nagpur','India');

select * from Students_info_3;

--UPDATE

UPDATE Students_info_3 SET PHONENUMBER = 9168076805;
UPDATE Students_info_3 SET PHONENUMBER = 9168656805 WHERE STUDENTID = 3;

--DELETE
DELETE FROM Students_info_3 WHERE STUDENTID = 3;
DELETE FROM Students_info_3 WHERE STUDENTID IN (1,2);
DELETE FROM Students_info_3 WHERE STUDENTNAME in ('durgesh','vishal');

--INSERT ALL

INSERT INTO Students_info_3 VALUES (6,'Sauransh','More',78787878,'Hills','Nagpur','India')
INSERT INTO Students_info_3(STUDENTNAME,STUDENTID,PARENTNAME,ADDRESSOFSTUDENT,CITY,COUNTRY)
            VALUES   ('Ramesh',7,'Gaikwad','Futala','Nagpur','India')
INSERT INTO Studentsinfo3 VALUES(8,'Nirnay','bodele',7878787,'Mohan Nagar','Nagpur','India')

select * from Students_info_3;
select * from Studentsinfo3;

--DML - INSERT UPDATE  DELETE
--------------------------------------------------------------------------------------------
--TCL - TRANSACTIONAL CONTROL LANGUAGE
--ROLLBACK,COMMIT,SAVEPOINT

ROLLBACK
SELECT * FROM Students_info_3;
DELETE FROM Students_info_3 WHERE STUDENTID = 7;
ROLLBACK;

DELETE FROM Students_info_3 WHERE STUDENTID IN (4,6,7);
ROLLBACK;

UPDATE Students_info_3 SET PHONENUMBER = 23232323 WHERE STUDENTID IN (3,4);
ROLLBACK;

COMMIT;

INSERT
INSERT INTO Students_info_3 VALUES(2,'Rohan','Patel',12121212,'Civil lines','Nagpur','India')
INSERT into Students_info_3(STUDENTNAME,STUDENTID,PARENTNAME,ADDRESSOFSTUDENT,CITY,COUNTRY)
              VALUES('Raju',3,'Patel','Civil lines','Nagpur','India')
INSERT INTO Students_info_3(STUDENTNAME,STUDENTID,PARENTNAME,ADDRESSOFSTUDENT,CITY,COUNTRY)
              VALUES('Ram',4,'Patel','Civil lines','Nagpur','India')
select * from dual;
INSERT INTO Students_info_3 (STUDENTNAME,STUDENTID,PARENTNAME,ADDRESSOFSTUDENT,CITY,COUNTRY) 
           VALUES ('Raj',1,'Patel','Civil Lines','Mumbai','India')

COMMIT;

--SAVEPOINT

DELETE FROM Students_info_3 WHERE STUDENTID = 1;
DELETE FROM Students_info_3 WHERE STUDENTID IN (4,5);
SAVEPOINT S1;
DELETE FROM Students_info_3 WHERE STUDENTID = 2;
SAVEPOINT S2;
DELETE FROM Students_info_3 WHERE STUDENTID = 3;

ROLLBACK TO S2;
ROLLBACK TO S1;

COMMIT;
select * from Students_info_3;
-------------------------------------------------------
--DCL - DATA CONTROL LANGUAGE
--GRANT & REVOKE
-------------------------------------------------------
--DRL/DQL = DATA RETRIVAL LANGUAGE/DATA QUERY LANGUAGE
--SELECT - FETCH/READ/RETRIVE - DATA

SELECT * FROM Students_info_3;
SELECT STUDENTID, STUDENTNAME, PHONENUMBER FROM Students_info_3;
select PHONENUMBER, STUDENTID, STUDENTNAME  from Students_info_3;
select * from Students_info_3 where STUDENTID = 6;
SELECT PHONENUMBER, STUDENTNAME, STUDENTID FROM Students_info_3 where studentid = 2;
select 10 + 12 as RESULT from dual;
SELECT 20/2*22-8 as Calculation_result from dual;
select (50-10)*2 from dual;

select 'This is SQL % Class #' as Message from dual;

select * from dual;
desc dual;
-------------------------------------------------------------------------------------
--DDL
--DML
--TCL
--DQL/DRL
--DCL