drop table id_gen;
drop table product;


use aims;
drop table bankcheck;
drop table bankcheque;
drop table card;
drop table payment;

truncate table payment ;
drop table phone_number;
drop table hero;



delete from vendor where id in(52,53) ;

delete from company_vendors where vendor_id in(52,53)
