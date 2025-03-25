create database robinhood3;
use robinhood3;

create table CarteirasEstudantis1(
  ceMatricula int(10)primary key not null,
  ceInstituicao varchar(10),
  ceNivelensino varchar(15),
  ceEstudantenome varchar(30),
  ceDatanascimento date,
  ceSaldo varchar(10)
);

insert into carteirasestudantis1 values (20232001, 'UFRN','Superior','Marie Curie','1997-07-11', '20.00');
insert into CarteirasEstudantis1 values (20231002, 'IFRN','Técnico','Ada Silva','1995-10-12','15.00');
insert into CarteirasEstudantis1 values (20231003, 'SENAC','Técnico','Rita Costa','2007-04-22','10.00');
insert into CarteirasEstudantis1 values (20232004, 'UERN','Superior','José Ferreira','2001-07-18','12.00');
insert into CarteirasEstudantis1 values (20231005, 'UFERSA','Superior','Antônio Pereira','2005-01-28','23.00');
insert into CarteirasEstudantis1 values (20231006, 'SENAC','Técnico','MárioSouza','2008-09-15','35.00');
insert into CarteirasEstudantis1 values (20232007, 'IFRN','Técnico','Bia Lins','1990-06-01','28.00');
insert into CarteirasEstudantis1 values (20231008, 'UFRN','Técnico','Léo Mendes','2000-20-03','30.00');
select * from CarteirasEstudantis1;

select ceEstudantenome from CarteirasEstudantis1 where ceMatricula;
select ceEstudantenome, ceDatanascimento from CarteirasEstudantis1 where ceMatricula;
select * from CarteirasEstudantis1 where ceNivelensino like 'T%';
select ceEstudantenome, ceInstituicao from CarteirasEstudantis1 where ceInstituicao = 'SENAC' or  ceInstituicao = 'IFRN';
select * from  CarteirasEstudantis1 where year (ceDatanascimento) < 2000;
select ceEstudantenome, ceInstituicao from CarteirasEstudantis1 where  ceNivelensino = 'Superior' ;

update  CarteirasEstudantis1 set ceNivelensino  = 'Superior' where ceEstudantenome = 'Ada Silva' or ceEstudantenome = 'Bia Lins';
update  CarteirasEstudantis1 set ceInstituicao  = 'SENAC', ceNivelensino = 'Técnico' where ceEstudantenome = 'Antônio Pereira';
update  CarteirasEstudantis1 set ceEstudantenome = 'Beatriz Lins' where ceEstudantenome = 'Bia Lins';

delete from CarteirasEstudantis1 where ceEstudantenome = 'Léo Mendes';