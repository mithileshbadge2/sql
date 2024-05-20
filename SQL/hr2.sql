--CREATE TABLE studentinfo_2(studentid      NUMBER,
--                          StudentName_1   CHAR(10),
--                          StudentName_2   NCHAR(10),
--                          StudentName_3   VARCHAR2(10),
--                          StudentName_4   NVARCHAR2(10),
--                          GENDER          CHAR(1)
--                          );
--insert into studentinfo_2 values(1,'monty','monty','monty','monty','m');
--select * from studentinfo_2;
--
--select StudentName_1, length(StudentName_1),
--       StudentName_2, length(StudentName_2),
--       StudentName_3, length(StudentName_3),
--       StudentName_4, length(StudentName_4)
--from studentinfo_2;
--
--select length('good night') from dual;

--CREATE TABLE studentinfo_3 (studentid     NUMBER,
--                            StudentName_1 CHAR(10)
--                            );
--CREATE TABLE student_info_3 (student_fees     NUMBER(8,2),
--                            StudentName_1    CHAR(10)
--                            );
--drop table studentinfo_3;

CREATE TABLE studentsinfo_3 (student_fees          NUMBER(8),
                             StudentName_1         CHAR(10)
                            );

CREATE TABLE studentsinfo_3 (student_fees          INTEGER,
                             StudentName_1         CHAR(10)
                            );
                            
insert into studentsinfo_3 values (457458, 'piyush');
insert into studentsinfo_3 values (457458.4587, 'piyush');
insert into studentsinfo_3 values (8574, 'piyush');
insert into studentsinfo_3 values (457459.4527, 'piyush');
DELETE FROM studentsinfo_3 WHERE STUDENTNAME_1 IN ('vedant');

select * from studentsinfo_3;
-------------------------------------------------------------
select sysdate from dual;
select systimestamp from dual;

CREATE TABLE studentsinfo_5 (student_DOJ     DATE,
                             studentName_1   CHAR(10)
                             );
select * from studentsinfo_5;      
insert into studentsinfo_5 values ('01-06-24','Ayush');
insert into studentsinfo_5 values (sysdate,'Ayush');
DELETE FROM studentsinfo_5 WHERE Student_DOJ IN ('01-06-24');

insert into studentsinfo_5 values ('29-11-24','monty');

drop table studentsinfo_5;

CREATE TABLE studentsinfo_5 (student_login_time   TIMESTAMP,
                             StudentName_1        CHAR(10)
                            );
select * from studentsinfo_5;    
INSERT into studentsinfo_5 values (systimestamp,'AYUSH');
drop table studentsinfo_5;

-------------------------------------------------------------
CREATE TABLE studentsinfo_5 (student_Image         CLOB,
                             StudentName_1         CHAR(10)
                            );