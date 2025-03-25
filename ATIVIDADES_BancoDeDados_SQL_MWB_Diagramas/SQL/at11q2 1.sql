use senacc;

create table Cantor(
  idCantor int primary key not null,
  Nome varchar(45)not null,
  CPF int not null
);
create table Gravacao(
  idGravacao int primary key not null,
  Gravacao varchar(45)not null,
  TipoGravacao varchar(45),
  idCantor int not null,
  foreign key (idCantor) references Cantor(idCantor)
);
create table Musica(
  idMusica int primary key not null,
  Titulo varchar(45)not null,
  Letra varchar(45)not null,
  idGravacao int not null,
  foreign key (idGravacao) references Gravacao(idGravacao)
);
create table Compositor(
  idCompositor int primary key not null,
  Nome varchar(45)not null,
  idMusica int not null,
  foreign key(idMusica) references Musica(idMusica)
);


desc Compositor;
desc Musica;
desc Gravacao;
desc Cantor