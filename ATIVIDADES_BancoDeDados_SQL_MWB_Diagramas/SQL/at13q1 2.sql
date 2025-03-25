use at11q1;
 
create table curso(
   codCurso int primary key not null,
   nomeCurso varchar(30),
   periodo varchar(45)
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
   telefone int(11),
   endereco varchar(45),
   email varchar (30),
   matricula2 int not null,
   foreign key (matricula2) references professor (matricula2)
);

alter table aluno drop telefone;
alter table aluno modify column telefone varchar(15);

desc professor;
desc aluno;
desc curso;

insert into Curso values (1, 'ciências da computação', 'noturno');
insert into Curso values (2, 'engenharia civil', 'diurno');
insert into Curso values (3, 'administração', 'noturno');
insert into Curso values (4, 'psicologia', 'noturno');
insert into Curso values (5, 'engenhria elétrica', 'diurno');
insert into Curso values (6, 'marketing', 'noturno');
select * from Curso;

insert into Professor values (201, 'ana souza', 1112223333, 'rua X, 789', 'ana@gmail.com', 1);
insert into Professor values (202, 'pedro rocha', 4445556666, 'avenida Y, 456', 'pedro@gmail.com', 2);
insert into Professor values (203, 'laura lima', 9998887777, 'praça Z, 123', 'laura@gmail.com', 3);
insert into Professor values (204, 'rodrigo lima', 5556667777, 'rua W, 432', 'rodrigo@gmail.com', 4);
insert into Professor values (205, 'mariana rocha', 1115559999, 'avenida V, 876', 'mariana@gmail.com', 5);
insert into Professor values (206, 'lucas pereira', 7773332222, 'praça U, 123', 'lucas@gmail.com', 6);
select * from Professor;

insert into Aluno values (101, 'joão silva',1234567890, 'rua A, 123', 'joao@gmail.com', 201);
insert into Aluno values (102, 'maria oliveira',9876543210, 'avenida B, 456', 'maria@gmail.com', 202);
insert into Aluno values (103, 'carlos santos',5551234567, 'praça C, 789', 'carlos@gmail.com', 203);
insert into Aluno values (104, 'fernanda costa',7778889999, 'rua D, 567', 'fernanda@gmail.com', 204);
insert into Aluno values (105, 'rafael santos',2223334444, 'avenida E, 890', 'rafael@gmail.com', 205);
insert into Aluno values (106, 'juliana oliveira',8887776666, 'praça F, 234', 'juliana@gmail.com', 206);
select * from Aluno;

update Curso set periodo = 'diurno' where codCurso = 1;
update Curso set periodo = 'diurno' where codCurso = 4;
update Curso set nomeCurso = 'enfermagem' where codCurso = 5;
update Professor set codCurso = 1 where  matricula2 = 204;
update Professor set codCurso = 5 where  matricula2 = 202;
update Professor set endereco = 'avenida brasil, 1010', codCurso = 5  where  matricula2 = 203;
update Professor set email = 'mariana.rocha@gmail.com' where  matricula2 = 205;
update Aluno set matricula2 = 204 where  matricula = 101;
update Aluno set endereco = 'Rua dom João XXIII, 3523' where  matricula = 102;
update Aluno set email = 'carlos.santos@gmail.com' where  matricula = 103;

delete from Curso where codCurso = 3;
delete from Professor where matricula2 = 206;
delete from Aluno where matricula = 106;