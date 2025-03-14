use mydb

create table person(
id int PRIMARY KEY AUTO_INCREMENT,
first_name varchar(20),
last_name varchar(20),
age int
)

create table license(
id int PRIMARY KEY AUTO_INCREMENT,
type varchar(20),
valid_from date,
valid_to date,
person_id int,
FOREIGN KEY (person_id)
REFERENCES person(id)
)

create table heroine(
id int PRIMARY KEY AUTO_INCREMENT,
first_name varchar(20),
last_name varchar(20),
age int
) ;

create table passport(
id int PRIMARY KEY AUTO_INCREMENT,
type varchar(20),
valid_from date,
valid_to date,
heroine_id int,
FOREIGN KEY (heroine_id)
REFERENCES heroine(id)
)

select * from person

select * from license
