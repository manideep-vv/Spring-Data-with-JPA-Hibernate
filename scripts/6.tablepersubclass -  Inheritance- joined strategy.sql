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
)
