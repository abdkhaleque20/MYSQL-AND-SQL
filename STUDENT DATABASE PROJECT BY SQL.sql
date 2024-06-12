CREATE database IF NOT EXISTS student_management;
use student_management;

CREATE TABLE IF NOT EXISTS student_management.user_login (
	user_id varchar(20),
    user_password varchar (20),
    first_name varchar(20),
	last_name varchar(20),
	sign_up_on DATE,
	email_id varchar(20)
);


CREATE TABLE IF NOT EXISTS student_management.parent_details (
	parent_id varchar(20)PRIMARY KEY,
    father_first_name varchar(20),
	father_last_name varchar(20),
	father_email_id varchar(20),
	father_mobile varchar(20),
	father_occupation varchar(20),
	mother_first_name varchar(20),
	mother_last_name varchar(20),
	mother_email_id varchar(20),
	mother_mobile varchar(20),
	mother_occupation varchar(20)
);


CREATE TABLE IF NOT EXISTS student_management.teachers (
	teacher_id varchar(20) PRIMARY KEY,
    first_name varchar (20),
	last_name varchar(20),
	date_of_birth DATE,
	email_id varchar(20),
	contact varchar (20),
	registration_date DATE,
	registration_id varchar (20) UNIQUE
);


CREATE TABLE IF NOT EXISTS student_management.class_details (
	class_id varchar (20) PRIMARY KEY,
    class_teacher varchar(20), 
	class_year varchar (20),
    foreign key (class_teacher) REFERENCES student_management.teachers (teacher_id)
);


CREATE TABLE IF NOT EXISTS student_management.student_details (
	student_id varchar(20) PRIMARY KEY,
    first_name varchar (20),
	last_name varchar (20),
	date_of_birth DATE,
	class_id varchar(20) ,
	roll_no varchar(20),
	email_id varchar(20),
	parent_id varchar(20),
	registration_date DATE,
	registration_id varchar (20) UNIQUE,
    foreign key (class_id) REFERENCES student_management.class_details (class_id),
     foreign key (parent_id) REFERENCES student_management.parent_details (parent_id)
);


CREATE TABLE IF NOT EXISTS student_management.subject (
	subject_id varchar(20) PRIMARY KEY,
    subject_name varchar(20),
	class_year varchar(20),
	subject_head varchar(20), 
   foreign key (subject_head)  REFERENCES student_management.teachers (teacher_id)
);


CREATE TABLE IF NOT EXISTS student_management.subject_tutors (
	row_id varchar(20) PRIMARY KEY,
    subject_id varchar(20) ,
	teacher_id varchar(20) ,
	class_id varchar (20) , 
     foreign key (subject_id) REFERENCES student_management.subject (subject_id),
      foreign key (teacher_id) REFERENCES student_management.teachers (teacher_id),
      foreign key (class_id) REFERENCES student_management.class_details (class_id)
);
show tables;