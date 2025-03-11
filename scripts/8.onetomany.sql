use mydb;

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
)

select * from customer

select * from phone_number
