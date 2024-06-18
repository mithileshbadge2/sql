--WHERE CLAUSE

CREATE TABLE vendors
 (
    vendor_id NUMBER,
    vendor_name VARCHAR(100),
    vendor_country VARCHAR(100),
    vendor_price NUMBER
  );

INSERT INTO vendors VALUES (1,'ABC Corp', 'India', 10000);
INSERT INTO vendors VALUES (2,'M-net','Bangladesh', 15000);
INSERT INTO vendors VALUES (3,'ABC Corp', 'South Africa', 10000);
INSERT INTO vendors VALUES (4, null, 'Russia', 21000);
INSERT INTO vendors VALUES (5,'Synergy','USA', 29000);
INSERT INTO vendors VALUES (6,'M-net', null, 31000);
INSERT INTO vendors VALUES (7,'Synergy','Egypt', 45000);
INSERT INTO vendors VALUES (8,'Synergy','USA', 10000);
INSERT INTO vendors VALUES (9,'M-net', null, 5000);
INSERT INTO vendors VALUES (10,'Synergy','Angola', 54000);
INSERT INTO vendors VALUES (11, null, 'India', 65000);
INSERT INTO vendors VALUES (11, null, 'USA', 48000);

SELECT * FROM vendors;

-- Single Filter

select * from vendors where VENDOR_ID = 11;
select VENDOR_ID, VENDOR_NAME, VENDOR_COUNTRY from vendors where VENDOR_NAME = 'Synergy';

-- Multiple Filter
--select * from vendors where VENDOR_ID = 11 AND VENDOR_COUNTRY = 'Angola';
select * from vendors where VENDOR_NAME = 'Synergy' AND VENDOR_COUNTRY = 'USA';
select VENDOR_ID, VENDOR_NAME, VENDOR_COUNTRY from vendors where VENDOR_NAME = 'Synergy' AND VENDOR_PRICE = 10000;
select VENDOR_ID, VENDOR_NAME, VENDOR_COUNTRY from vendors where VENDOR_NAME = 'Synergy' AND VENDOR_PRICE = 10000 AND VENDOR_COUNTRY = 'USA';

-- Comparision Operator
select * from vendors where VENDOR_PRICE > 20000 ;
select * from vendors where VENDOR_ID > 5 
select * from vendors where VENDOR_ID < 5 ;
--select * from vendors where VENDOR_NAME > 'Synergy';
select * from vendors where VENDOR_PRICE >= 21000 AND VENDOR_COUNTRY = 'USA' ;

--Multiple condition using OR operator
select * from vendors where VENDOR_PRICE >= 21000 OR VENDOR_COUNTRY = 'USA' ;
--select * from vendors where VENDOR_PRICE = 11000 OR VENDOR_COUNTRY = 'UK' ;

--RANGE CONDITIONS
SELECT * FROM VENDORS WHERE VENDOR_PRICE BETWEEN 10000 AND 48000 ;

--Multiple inputs using IN Clause
select * from vendors where VENDOR_ID in (2,4,6,8,10);
--select * from vendors where VENDOR_ID = (2,4,6,8,10);
select * from vendors where VENDOR_NAME in ('ABC Corp','M-net');

--find records using string value % _
select * from vendors where vendor_name like 'Sy%';
select * from vendors where vendor_price like '10%';
select * from vendors where vendor_country like '%I%';



















