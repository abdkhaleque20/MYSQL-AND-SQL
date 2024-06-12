create database bank_database_project;

use bank_database_project;

create table customer_personal_info(
customer_id int (5) primary key,
customer_name varchar(20),
date_of_birth date,
gurdian_name varchar (20),
address varchar (30),
contact_no varchar(10),
mail_id varchar(25),
gender varchar(12),
marital_status varchar(8),
id_doc_type varchar(10),
id_doc_number varchar(12),
citizenship varchar (10));

insert into  customer_personal_info 
values(001,'Khalek','2002-09-20','abdGafur','birbhum',7029931445,'abdkhalek415@gmail.com','M','NO','adhar','7577','india');
insert into  customer_personal_info 
values(002,'Rohit','2001-06-22','sanarul','birbhum',7029768372,'rrrohit41523@gmail.com','M','NO','adhar','5477','india');
insert into  customer_personal_info 
values(003,'royal','2004-3-2','nazir','birbhum',8769931445,'rroyal5@gmail.com','M','NO','adhar','4567','india');
insert into customer_personal_info  
values(004,'Khaleda','2002-09-19','abdGafur','birbhum',7029931672,'abdkhaleda215@gmail.com','F','YES','adhar','6177','india');

create table customer_ref_info(
customer_id int (5) ,
ref_ac_name varchar(25),
ref_ac_number varchar (25),
ref_ac_address varchar (30),
relation varchar(10),
foreign key (customer_id) references customer_personal_info (customer_id) 

);

insert into customer_ref_info (customer_id, ref_ac_name, ref_ac_number, ref_ac_address, relation)
values (001,'savings', 'ac001', 'delhi','active');  
insert into customer_ref_info (customer_id, ref_ac_name, ref_ac_number, ref_ac_address, relation)
values (002,'savings', 'ac002', 'mumbai','active'); 
insert into customer_ref_info (customer_id, ref_ac_name, ref_ac_number, ref_ac_address, relation)
values (003,'savings', 'ac003', 'kolkata','suspended'); 
insert into customer_ref_info (customer_id, ref_ac_name, ref_ac_number, ref_ac_address, relation)
values (004,'buisness', 'ac004', 'bengalore','terminated'); 

create table bank_info(
ifsc_code varchar(20) primary key,
bank_name varchar(10),
branch_name varchar(10));

insert into bank_info (ifsc_code, bank_name, branch_name) 
values ('CNB1','CANARA','BOLPUR');
insert into bank_info (ifsc_code, bank_name, branch_name) 
values ('CNB2','SBI','delhi');
insert into bank_info (ifsc_code, bank_name, branch_name) 
values ('CNB3','HDFC','kochin');
insert into bank_info (ifsc_code, bank_name, branch_name) 
values ('CNB4','IDFC','odisa');

create table account_info(
acc_number int (10) primary key,
customer_id int(5),
acc_type varchar (10),
reg_date date,
foreign key (customer_id) references customer_ref_info (customer_id)
);

insert into account_info (acc_number, customer_id,acc_type, reg_date)
values (1267, 001, 'regular', '2022-06-12');
insert into account_info (acc_number, customer_id,acc_type, reg_date)
values (1268, 002, 'regular', '2022-05-23');
insert into account_info (acc_number, customer_id,acc_type, reg_date)
values (1269, 003, 'regular', '2022-08-20');
insert into account_info (acc_number, customer_id,acc_type, reg_date)
values (1270, 004, 'irregular', '2022-03-16');


select * from customer_personal_info;
select * from customer_ref_info;
select * from  bank_info;
select * from account_info;

show tables;

