--substitution variables

select * from students_info_1;

insert into students_info_1 VALUES(1,'Dipak','Meshram',9168076805,'Manewada','Nagpur','India')
insert into students_info_1 VALUES(2,'Akash','Badge',9168076805,'Sadar','Nagpur','India')
insert into students_info_1 VALUES('&ID','&Name','&ParentName','&PhoneNumber','&Address','&City','&Country')
insert into students_info_1 VALUES('&ID','&Name','&ParentName','&PhoneNumber','&Address','&City','&&Country')
insert into students_info_1 VALUES('&ID','&Name','&ParentName','&PhoneNumber','&&Address','&City','&&Country')


--defining customised prompts
ACCEPT STUDENTID PROMPT 'Please Enter the Value for Student Id:'
ACCEPT STUDENTNAME PROMPT 'Please Enter the Value for Student Name:'
ACCEPT PHONENUMBER PROMPT 'Please Enter the value for MOBILE NUMBER:'

INSERT INTO students_info_1 (STUDENTID,STUDENTNAME,PHONENUMBER)
VALUES('&STUDENTID','&STUDENTNAME','&PHONENUMBER');