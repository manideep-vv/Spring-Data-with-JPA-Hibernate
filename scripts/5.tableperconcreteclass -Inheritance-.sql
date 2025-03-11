use mydb;

create table card(
id int PRIMARY KEY,
amount decimal(8,3),
cardNumber varchar(20)
)

create table bankcheque(
id int PRIMARY KEY,
amount decimal(8,3),
checkNumber varchar(20)
)
