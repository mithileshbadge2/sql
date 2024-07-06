--INNER JOIN
--OUTER JOIN
--    LEFT OUTER JOIN
--    RIGHT OUTER JOIN
--    FULL OUTER JOIN

--INNER JOIN
--select * from emp_log;
--select * from emp_details;
--select * from address_code_name;

CREATE TABLE emp_log
(
    emp_id   NUMBER PRIMARY KEY,
    emp_name VARCHAR2(100)
);
INSERT INTO emp_log VALUES (1,'John');
INSERT INTO emp_log VALUES (2,'Lilly');
INSERT INTO emp_log VALUES (3,'Peter');
INSERT INTO emp_log VALUES (4,'Roy');
INSERT INTO emp_log VALUES (8,'Nick');
INSERT INTO emp_log VALUES (9,'Sam');
INSERT INTO emp_log VALUES (10,'Rock');

select * from emp_log;

COMMIT;

CREATE TABLE emp_details
(
    emp_id            NUMBER PRIMARY KEY,
    emp_address       VARCHAR2(100),
    emp_address_code  NUMBER
);

INSERT INTO emp_details VALUES(1,'India',4444);
INSERT INTO emp_details VALUES(2,'USA',5555);
INSERT INTO emp_details VALUES(3,'Russia',6666);
INSERT INTO emp_details VALUES(4,'South Africa',7777);
INSERT INTO emp_details VALUES(5,'Uk',8888);
INSERT INTO emp_details VALUES(6,'Brazil',9999);
INSERT INTO emp_details VALUES(7,'New Zealand',2222);
INSERT INTO emp_details VALUES(11,'Peru',0003);
INSERT INTO emp_details VALUES(12,'Cuba',0002);
INSERT INTO emp_details VALUES(13,'Norway',0001);
INSERT INTO emp_details VALUES(14,'Singapore',0000);

select * from emp_details;

commit;

CREATE TABLE address_code_name
(
add_code       NUMBER PRIMARY KEY,
add_code_name  VARCHAR2(100)
);

INSERT INTO address_code_name VALUES(4444,'Asia');
INSERT INTO address_code_name VALUES(5555,'North America');
INSERT INTO address_code_name VALUES(6666,'Europe');
INSERT INTO address_code_name VALUES(7777,'Africa');
INSERT INTO address_code_name VALUES(8888,'Antarctica');
INSERT INTO address_code_name VALUES(9999,'South America');
INSERT INTO address_code_name VALUES(2222,'Australia');
INSERT INTO address_code_name VALUES(1111,'Asia-1');
INSERT INTO address_code_name VALUES(3333,'Europe-2');

select * from address_code_name;

commit;
----------------------------------------------------------------------------------

--select emp_id, emp_name,emp_id,emp_address,emp_address_code
--from emp_log INNER JOIN emp_details
--on EMP_ID = EMP_ID;

select el.emp_id, el.emp_name, ed.emp_id emp_details_emp_id, ed.emp_address, ed.emp_address_code
from emp_log el INNER JOIN emp_details ed
on el.EMP_ID = ed.EMP_ID;

--select emp_id,emp_name,employee_id,emp_address,emp_address_code
--from emp_log INNER JOIN emp_details
--on EMP_ID = employee_ID;

select el.emp_id,el.emp_name,ed.emp_id emp_details_emp_id,ed.emp_address,ed.emp_address_code
from emp_log el , emp_details ed
WHERE el.EMP_ID = ed.emp_ID;

---------------------------------------------------------------------------------------------
SELECT el.emp_id,
       el.emp_name,
       ed.emp_id emp_details_emp_id,
       ed.emp_address,
       ed.emp_address_code,
       acn.add_code,
       acn.add_code_name
 FROM emp_log el INNER JOIN emp_details ed
  ON  el.emp_id = ed.emp_id
  INNER JOIN address_code_name acn
  ON ed.emp_address_code = acn.add_code;

SELECT el.emp_id,
       el.emp_name,
       ed.emp_id emp_details_emp_id,
       ed.emp_address,
       ed.emp_address_code,
       acn.add_code,
       acn.add_code_name
FROM emp_log el, emp_details ed, address_code_name acn
WHERE el.emp_id = ed.emp_id
AND ed.emp_address_code = acn.add_code;

--------------------------------------------------------------------------
--OUTER Join
-- LEFT OUTER JOIN
-- RIGHT OUTER JOIN
-- FULL OUTER JOIN

-- LEFT OUTER JOIN
select el.emp_id,
       el.emp_name,
       ed.emp_id  EMP_DETAILS_EMP_ID,
       ed.emp_address,
       ed.emp_address_code
    from emp_log el LEFT JOIN emp_details ed
    ON el.emp_id = ed.emp_id;

select el.emp_id,
       el.emp_name,
       ed.emp_id  emp_details_emp_id,
       ed.emp_address,
       ed.emp_address_code
    from emp_log el, emp_details ed
    where el.emp_id = ed.emp_id(+);
    
select el.emp_id,
       el.emp_name,
       ed.emp_id  emp_details_emp_id,
       ed.emp_address,
       ed.emp_address_code,
       acn.add_code,
       acn.add_code_name
    from emp_log el LEFT JOIN emp_details ed
    ON el.emp_id = ed.emp_id
    LEFT JOIN address_code_name acn
    ON ed.emp_address_code = acn.add_code
    
 --RIGHT OUTER JOIN

SELECT el.EMP_ID,
       el.EMP_NAME,
       ed.EMP_ID EMP_DETAILS_EMP_ID,
       ed.EMP_ADDRESS,
       ed.EMP_ADDRESS_CODE
    FROM EMP_LOG el RIGHT JOIN emp_details ed
    ON el.EMP_ID = ed.EMP_ID;

SELECT el.EMP_ID,
       el.EMP_NAME,
       ed.EMP_ID EMP_DETAILS_EMP_ID,
       ed.EMP_ADDRESS,
       ed.EMP_ADDRESS_CODE
    from emp_log el , emp_details ed
    WHERE el.EMP_ID(+) = ed.EMP_ID;
       
select el.EMP_ID,
       el.EMP_NAME,
       ed.EMP_ID EMP_DETAILS_EMP_ID,
       ed.EMP_ADDRESS,
       ed.EMP_ADDRESS CODE,
       acn.add_code,
       acn.add_code_name
    from emp_log el RIGHT JOIN emp_details ed
    ON el.EMP_ID = ed.EMP_ID
    RIGHT JOIN address_code_name acn
    ON ed.emp_address_code = acn.add_code;
--------------------------------------------------------------
--FULL OUTER JOIN

SELECT el.emp_id,
       el.emp_name,
       ed.emp_id emp_details_emp_id,
       ed.emp_address,
       ed.emp_address_code
    from emp_log el FULL OUTER JOIN emp_details ed
    ON el.emp_id = ed.emp_id;
    
select el.emp_id,
       el.emp_name,
       ed.emp_id emp_details_emp_id,
       ed.emp_address,
       ed.emp_address_code,
       acn.add_code,
       acn.add_code_name
    from emp_log el FULL OUTER JOIN emp_details ed
    ON el.emp_id = ed.emp_id
    full join address_code_name acn
    on ed.emp_address_code = acn.add_code;
--------------------------------------------------------------------------
--EQUI JOIN

SELECT el.EMP_ID,
       el.EMP_NAME,
       ed.EMP_ID EMP_DETAILS_EMP_ID,
       ed.emp_address,
       ed.emp_address_code
    from emp_log el , emp_details ed
    where el.emp_id = ed.emp_id;

--Inner join   = < >    
select el.emp_id,
       el.emp_name,
       ed.emp_id emp_details_emp_id,
       ed.emp_address,
       ed.emp_address_code
    from emp_log el , emp_details ed
    where el.emp_id > ed.emp_id;
    
----------------------------------------------------------------
--self join (inner join & left outer join)
CREATE TABLE EMP_MAN 
(EMP_ID         NUMBER, 
 EMP_NAME       VARCHAR2(10),
 MAN_ID         NUMBER);
 
INSERT INTO EMP_MAN VALUES (1,'RAHUL',3);
INSERT INTO EMP_MAN VALUES (2,'JAY',3);
INSERT INTO EMP_MAN VALUES (3,'SONAM',4);
INSERT INTO EMP_MAN VALUES (4,'KUNAL',5);
INSERT INTO EMP_MAN VALUES (5,'AMOL',NULL);

SELECT * FROM EMP_MAN;

SELECT E.EMP_NAME EMP_NAME, M.EMP_NAME MANAGER
FROM EMP_MAN e inner join emp_man M
on e.man_id = m.emp_id;

----------------------------------
SELECT E.EMP_NAME EMP_NAME, M.EMP_NAME MANAGER
FROM EMP_MAN E Left outer join  EMP_MAN M
ON E.MAN_ID = M.EMP_ID;

---------------------------------------------------
--CROSS JOIN (CARTESIAN PRODUCT)

SELECT el.emp_id,
       el.emp_name,
       ed.emp_id emp_details_emp_id,
       ed.emp_address,
       ed.emp_address_code
    from emp_log el CROSS JOIN emp_details ed;


select * from emp_log;
select * from emp_details;

--NATURAL JOIN (INNER JOIN)
select emp_id,
       emp_name,
       emp_id emp_details_emp_id,
       emp_address,
       emp_address_code
    from emp_log NATURAL JOIN emp_details;
    
select el.emp_id,
       el.emp_name,
       ed.emp_id emp_details_emp_id,
       ed.emp_address,
       ed.emp_address_code
FROM emp_log el INNER JOIN emp_details ed
    ON el.emp_id = ed.emp_id;

select * from emp_log;
select * from emp_details;
