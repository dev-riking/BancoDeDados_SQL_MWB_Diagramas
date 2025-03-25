use senacc;

create table Banco(
  Codigo int(4)primary key not null,
  Nome varchar(50)not null,
  Telefone varchar(15),
  Endereco varchar(100) 
);
create table Agencia(
  codAgencia int(4)primary key not null,
  Endereco varchar(100)not null,
  Telefone varchar(15),
  Codigo int not null,
  foreign key (Codigo) references Banco(Codigo)
);
create table Contas(
  Numero int primary key not null,
  Saldo decimal(8,2)not null,
  Tipo varchar(20)not null,
  codAgencia int not null,
  foreign key (codAgencia) references Agencia(codAgencia)
);
create table Clientes(
  CPF int(11)primary key not null,
  Nome varchar(50)not null,
  Endereco varchar(100)not null,
  Telefone varchar(11)not null,
  Numero int not null,
  foreign key(Numero) references Contas(Numero)
);


desc Banco;
desc Agencia;
desc Contas;
desc Clientes;
alter table Agencia add gerente varchar(30) after codAgencia;
alter table Banco add Data_Fundacao date;
alter table Clientes add Data_Nascimento date after nome;
alter table Clientes add email varchar(50);
alter table Contas add Data_Abertura date;
alter table Contas modify column numero int(5);