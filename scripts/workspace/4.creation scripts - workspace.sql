create table payment(
id int PRIMARY KEY NOT NULL AUTO_INCREMENT,
amount decimal(8,3)
);

create table card(
id int ,
cardnumber varchar(20),
 FOREIGN KEY (id)
REFERENCES payment(id)
) ;

create table bankcheque(
id int ,
checknumber varchar(20),
FOREIGN KEY (id)
REFERENCES payment(id)
);



create table hero(
id int PRIMARY KEY AUTO_INCREMENT,
name varchar(20)
);

create table phone_number(
id int primary KEY AUTO_INCREMENT,
hero_id int,
number int,
 FOREIGN KEY (hero_id)
REFERENCES hero(id)
);



create table company(
id int PRIMARY KEY AUTO_INCREMENT,
name varchar(20),
emp_count int
);

create table vendor(
id int PRIMARY KEY AUTO_INCREMENT,
name varchar(20)
);



create table company_vendors(
company_id int ,
vendor_id int,
FOREIGN KEY (company_id) REFERENCES company(id),
FOREIGN key (vendor_id)  REFERENCES vendor(id)
);


drop table heroin;
drop table passport;

create table heroine(
id int PRIMARY KEY AUTO_INCREMENT,
first_name varchar(20),
last_name varchar(20),
age int
) ;
create table bankaccount (accno int,lastname varchar(25),firstname varchar(25),bal int) ;

create table product(
id int PRIMARY KEY AUTO_INCREMENT,
name varchar(20),
description varchar(20),
price int
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




