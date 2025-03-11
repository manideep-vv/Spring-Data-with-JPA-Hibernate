use mydb

create table programmer(
id int PRIMARY KEY AUTO_INCREMENT,
name varchar(20),
salary int
)

create table project(
id int PRIMARY KEY AUTO_INCREMENT,
name varchar(20)
)

create table programmers_projects(
programmer_id int,
project_id int,
FOREIGN KEY (programmer_id)
REFERENCES programmer(id),
FOREIGN KEY (project_id)
REFERENCES project(id)
)


create table company(
id int PRIMARY KEY AUTO_INCREMENT,
name varchar(20),
emp_count int
)

create table vendor(
id int PRIMARY KEY AUTO_INCREMENT,
name varchar(20)
)



create table company_vendors(
company_id int ,
vendor_id int,
FOREIGN KEY (company_id) REFERENCES company(id),
FOREIGN key (vendor_id)  REFERENCES vendor(id)
)



select * from programmer
select * from project
select * from programmers_projects