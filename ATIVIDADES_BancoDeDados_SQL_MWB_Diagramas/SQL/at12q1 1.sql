use senacc;
 
create table curso(
   codCurso int primary key not null,
   nomeCurso varchar(30),
   periodo tinyint,
   aluno int(5)
);
 
create table professor(
   matricula2 int(5) primary key not null,
   nome varchar(45) not null,
   telefone varchar(11),
   endereco varchar(45), 
   email varchar (30), 
   codCurso int not null,
   foreign key (codCurso) references curso(codCurso)
);
 
create table aluno(
   matricula int(5) primary key not null,
   nome varchar(45) not null,
   email varchar (30),
   matricula2 int not null,
   foreign key (matricula2) references professor (matricula2)
);
 
desc professor;
desc aluno;
desc curso;
alter table aluno add sexo varchar(20) after nome;
alter table aluno add endereco varchar(30) after email;
alter table professor add tipo_formacao varchar (30);
alter table professor modify column endereco varchar(100);
alter table curso change vargo_horaria cargo_horaria int (4);
alter table curso modify column nomeCurso varchar(200);
alter table curso modify column periodo varchar(30);