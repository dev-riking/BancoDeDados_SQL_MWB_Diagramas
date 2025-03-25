create database empresa;

use empresa;

-- Criação da tabela Departamentos
CREATE TABLE Departamentos (
    Codigo INT PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL,
    Localizacao VARCHAR(255),
    QuantidadeFuncionario INT
);

INSERT INTO Departamentos VALUES (101, 'Vendas', 'São Paulo', 25),
 (102, 'Tecnologia da Informação', 'Rio de Janeiro', 30),
 (103, 'Recursos Humanos', 'Brasília', 20),
 (104, 'Produção', 'Belo Horizonte', 40),
 (105, 'Marketing', 'Salvador', 15),
 (106, 'Finanças', 'Porto Alegre', 18),
 (107, 'Logística', 'Curitiba', 22),
 (108, 'Atendimento ao Cliente', 'Fortaleza', 28),
 (109, 'Pesquisa e Desenvolvimento', 'Manaus', 35),
 (110, 'Jurídico', 'Recife', 16),
 (111, 'Compras', 'Campinas', 24),
 (112, 'Qualidade', 'Goiânia', 19),
 (113, 'Comunicação', 'Vitória', 14),
 (114, 'Educação Corporativa', 'Natal', 32),
 (115, 'Sustentabilidade', 'Maceió', 27);

select * from departamentos;

-- Criação da tabela Funcionarios
CREATE TABLE Funcionarios (
    Codigo INT PRIMARY KEY,
    Nome VARCHAR(255) NOT NULL,
    Sobrenome VARCHAR(255) NOT NULL,
    DataNascimento DATE,
    CPF VARCHAR(14),
    RG VARCHAR(20),
    Endereco VARCHAR(255),
    Email VARCHAR(255),
    Telefone VARCHAR(20),
    CodigoDepartamento INT,
    Funcao VARCHAR(255),
    Salario DECIMAL(10, 2),
    FOREIGN KEY (CodigoDepartamento) REFERENCES Departamentos(Codigo)
);

INSERT INTO Funcionarios VALUES
    (201, 'João', 'Silva', '1985-05-10', '123.456.789-00', '9876543', 'Rua A, 123', 'joao.silva@email.com', '123-456-789', 101, 'Vendedor', 5000.00),
    (202, 'Maria', 'Souza', '1990-08-15', '987.654.321-00', '1234567', 'Avenida B, 456', 'maria.souza@email.com', '987-654-321', 102, 'Analista de Sistemas', 7000.00),
    (203, 'Carlos', 'Ferreira', '1988-03-20', '111.222.333-44', '7654321', 'Rua C, 789', 'carlos.ferreira@email.com', '111-222-333', 103, 'Recrutador', 6000.00),
    (204, 'Ana', 'Oliveira', '1995-11-25', '555.666.777-88', '2345678', 'Avenida D, 101', 'ana.oliveira@email.com', '555-666-777', 104, 'Supervisor de Produção', 8000.00),
    (205, 'Roberto', 'Martins', '1980-12-05', '999.888.777-66', '8765432', 'Rua E, 202', 'roberto.martins@email.com', '999-888-777', 105, 'Analista de Marketing', 6500.00),
    (206, 'Laura', 'Pereira', '1987-07-18', '777.888.999-00', '3456789', 'Rua F, 303', 'laura.pereira@email.com', '777-888-999', 106, 'Analista Financeiro', 7200.00),
    (207, 'Pedro', 'Lima', '1993-02-12', '222.333.444-55', '8765422', 'Avenida G, 404', 'pedro.lima@email.com', '222-333-444', 107, 'Coordenador de Logística', 8500.00),
    (208, 'Isabel', 'Costa', '1982-09-28', '444.555.666-77', '1234567', 'Rua H, 505', 'isabel.costa@email.com', '444-555-666', 108, 'Atendente', 5000.00),
    (209, 'Rafael', 'Almeida', '1998-04-05', '666.777.888-99', '9976543', 'Avenida I, 606', 'rafael.almeida@email.com', '666-777-888', 109, 'Engenheiro de Desenvolvimento', 9000.00),
    (210, 'Fernanda', 'Mendes', '1984-01-30', '888.999.000-11', '2345678', 'Rua J, 707', 'fernanda.mendes@email.com', '888-999-000', 110, 'Advogado', 7800.00),
    (211, 'Lucas', 'Santos', '1991-06-22', '333.444.555-66', '7654321', 'Avenida K, 808', 'lucas.santos@email.com', '333-444-555', 111, 'Comprador', 6200.00),
    (212, 'Carla', 'Rocha', '1989-11-15', '111.222.333-44', '8765232', 'Rua L, 909', 'carla.rocha@email.com', '111-222-333', 112, 'Analista de Qualidade', 6900.00),
    (213, 'Antonio', 'Oliveira', '1996-08-08', '555.666.777-88', '2345678', 'Avenida M, 1010', 'antonio.oliveira@email.com', '555-666-777', 113, 'Assessor de Comunicação', 5800.00),
    (214, 'Larissa', 'Ferreira', '1983-03-12', '999.888.777-66', '7654321', 'Rua N, 1111', 'larissa.ferreira@email.com', '999-888-777', 114, 'Instrutor de Treinamento', 6700.00),
    (215, 'Gabriel', 'Martins', '1994-12-02', '123.456.789-00', '9872543', 'Avenida O, 1212', 'gabriel.martins@email.com', '123-456-789', 115, 'Analista de Sustentabilidade', 7300.00),      
    (216, 'Amanda', 'Silveira', '1986-05-25', '777.888.999-00', '3456789', 'Rua P, 1313', 'amanda.silveira@email.com', '777-888-999', 101, 'Vendedor', 9500.00),
    (217, 'Marcos', 'Rocha', '1997-10-18', '222.333.444-55', '8765432', 'Avenida Q, 1414', 'marcos.rocha@email.com', '222-333-444', 102, 'Desenvolvedor Full Stack', 8200.00),
    (218, 'Juliana', 'Oliveira', '1981-07-28', '444.555.666-77', '1234567', 'Rua R, 1515', 'juliana.oliveira@email.com', '444-555-666', 103, 'Recrutador', 7200.00),
    (219, 'Renato', 'Lima', '1999-04-05', '666.777.888-99', '9876543', 'Avenida S, 1616', 'renato.lima@email.com', '666-777-888', 104, 'Supervisor de Produção', 8800.00),
    (220, 'Camila', 'Ferreira', '1980-11-30', '888.999.000-11', '2345678', 'Rua T, 1717', 'camila.ferreira@email.com', '888-999-000', 105, 'Analista de Marketing', 6900.00);


select * from funcionarios;

alter table funcionarios add tempo_servico tinyint after funcao;
alter table funcionarios add inicio_ferias date after tempo_servico;
alter table funcionarios add quantidade_filhos tinyint;

SELECT funcionarios.nome, departamentos.nome FROM funcionarios INNER JOIN departamentos ON funcionarios.CodigoDepartamento = departamentos.codigo ORDER BY funcionarios.nome;
SELECT funcionarios.nome, departamentos.nome FROM funcionarios LEFT JOIN departamentos ON funcionarios.CodigoDepartamento = departamentos.codigo
UNION
SELECT funcionarios.nome, departamentos.nome  FROM funcionarios RIGHT JOIN departamentos ON funcionarios.CodigoDepartamento = departamentos.codigo;
SELECT funcionarios.nome, departamentos.nome FROM funcionarios LEFT JOIN departamentos ON funcionarios.CodigoDepartamento = departamentos.codigo;
SELECT funcionarios.nome, departamentos.nome FROM funcionarios LEFT JOIN departamentos ON funcionarios.CodigoDepartamento = departamentos.codigo ORDER BY funcionarios.nome;
SELECT funcionarios.nome,funcionarios.sobrenome,funcionarios.cpf , departamentos.localizacao FROM funcionarios LEFT JOIN departamentos ON funcionarios.CodigoDepartamento = departamentos.codigo where funcionarios.sobrenome like '%oliveira';
SELECT departamentos.nome,funcionarios.nome, funcionarios.salario FROM funcionarios LEFT JOIN departamentos ON funcionarios.CodigoDepartamento = departamentos.codigo where funcionarios.salario > 7000;

SELECT departamentos.nome as departamentosnome, 
(select sum(salario) from funcionarios where departamentos.Codigo = funcionarios.codigoDepartamento)as salarios_pagos 
from funcionarios, departamentos where departamentos.Codigo = funcionarios.codigoDepartamento group by departamentos.nome;

select funcionarios.nome as nome_funcionarios, funcionarios.salario, departamentos.nome as departamentos_nome from funcionarios, departamentos 
where funcionarios.salario <= (select round(avg(funcionarios.salario),2) from funcionarios, departamentos 
where departamentos.Codigo = funcionarios.codigoDepartamento) and departamentos.Codigo = funcionarios.codigoDepartamento group by departamentos.nome;

select funcionarios.nome as nome_funcionarios, funcionarios.salario, departamentos.nome as departamentos_nome from funcionarios, departamentos 
where funcionarios.salario > (select round(min(funcionarios.salario),2) from funcionarios, departamentos 
where departamentos.Codigo = funcionarios.codigoDepartamento) and departamentos.Codigo = funcionarios.codigoDepartamento group by departamentos.nome;

create view quantidade_funcionarios as 
SELECT departamentos.nome, 
(select count(nome) from funcionarios where departamentos.Codigo = funcionarios.codigoDepartamento)as contigente_funcionarios, 
(select count(nome) from funcionarios) as total_funcionarios
from funcionarios, departamentos where departamentos.Codigo = funcionarios.codigoDepartamento group by departamentos.nome;

select * from quantidade_funcionarios;

drop view quantidade_funcionarios;

SHOW FULL TABLES WHERE TABLE_TYPE LIKE 'VIEW';

SELECT TABLE_SCHEMA, TABLE_NAME FROM information_schema.TABLES WHERE TABLE_TYPE LIKE 'VIEW';

create view Contatos_Funcionarios as 
select concat(nome,' ',sobrenome),email, telefone from funcionarios;

select * from Contatos_Funcionarios;

create view Aniversarios_Funcionarios as 
select nome, datanascimento from funcionarios;

select * from Aniversarios_Funcionarios;

create view Ferias_Futuras as 
select funcionarios.nome as nome_funcionarios, funcionarios.funcao, departamentos.nome as nome_departamentos
from funcionarios, departamentos where inicio_ferias > now();

select * from Ferias_Futuras;

create view Ferias_Concluidas as 
select funcionarios.nome as nome_funcionarios, funcionarios.funcao, departamentos.nome as nome_departamentos
from funcionarios, departamentos where inicio_ferias < now() and departamentos.Codigo = funcionarios.codigoDepartamento ;

select * from Ferias_Concluidas;

drop view Ferias_Concluidas;

create view quantidade_funcionarios_derpatamentos as 
select count(funcionarios.nome), departamentos.nome, (SELECT count(funcionarios.nome)  
FROM funcionarios left join departamentos on funcionarios.codigodepartamento = departamentos.codigo ) 
as totalfuncionarios from funcionarios,departamentos where funcionarios.codigodepartamento = departamentos.codigo group by departamentos.nome;

select * from quantidade_funcionarios_derpatamentos;

create view lista_departamento as 
select codigo,nome from departamentos;

select * from lista_departamento;

create view lista_funcionarios as 
select funcionarios.codigo as numero ,funcionarios.nome,departamentos.codigo,funcionarios.funcao,funcionarios.salario from funcionarios,departamentos 
where funcionarios.codigodepartamento = departamentos.codigo;

select * from lista_funcionarios;

insert into Lista_Funcionarios values(223, 'Aldalberto', 'Gomes', 105, 'Administrador', 2500);
insert into lista_funcionarios values(224, 'Roberto', 'Silva', 106, 'Coordenador', 2700);
select * from funcionarios;
select * from Lista_Funcionarios;

update Lista_Funcionarios set Funcao = 'Gerencia', Salario = 8500 where Funcao = 'Coordenador';
update Lista_Funcionarios set Funcao = 'Gerencia', Salario = 5000 where Funcao = 'Administrador';
select * from Lista_funcionarios;

select * from funcionarios;
select * from departamentos;

delete from Lista_Funcionarios where Nome = 'Robert';
select * from Lista_Funcionarios;

delete from Lista_Departamento where Nome = 'Economico';
select * from Lista_Departamento;
