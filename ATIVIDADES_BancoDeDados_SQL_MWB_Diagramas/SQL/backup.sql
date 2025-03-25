-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: empresa1
-- ------------------------------------------------------
-- Server version	5.7.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `departamentos`
--

DROP TABLE IF EXISTS `departamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `departamentos` (
  `Codigo` int(11) NOT NULL,
  `Nome` varchar(255) NOT NULL,
  `Localizacao` varchar(255) DEFAULT NULL,
  `QuantidadeFuncionario` int(11) DEFAULT NULL,
  PRIMARY KEY (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamentos`
--

LOCK TABLES `departamentos` WRITE;
/*!40000 ALTER TABLE `departamentos` DISABLE KEYS */;
INSERT INTO `departamentos` VALUES (101,'Vendas','São Paulo',25),(102,'Tecnologia da Informação','Rio de Janeiro',30),(103,'Recursos Humanos','Brasília',20),(104,'Produção','Belo Horizonte',40),(105,'Marketing','Salvador',15),(106,'Finanças','Porto Alegre',18),(107,'Logística','Curitiba',22),(108,'Atendimento ao Cliente','Fortaleza',28),(109,'Pesquisa e Desenvolvimento','Manaus',35),(110,'Jurídico','Recife',16),(111,'Compras','Campinas',24),(112,'Qualidade','Goiânia',19),(113,'Comunicação','Vitória',14),(114,'Educação Corporativa','Natal',32),(115,'Sustentabilidade','Maceió',27),(116,'Gerencia','Ribeirão Preto',1);
/*!40000 ALTER TABLE `departamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionarios`
--

DROP TABLE IF EXISTS `funcionarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funcionarios` (
  `Codigo` int(11) NOT NULL,
  `Nome` varchar(255) NOT NULL,
  `Sobrenome` varchar(255) NOT NULL,
  `DataNascimento` date DEFAULT NULL,
  `CPF` varchar(14) DEFAULT NULL,
  `RG` varchar(20) DEFAULT NULL,
  `Endereco` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Telefone` varchar(20) DEFAULT NULL,
  `CodigoDepartamento` int(11) DEFAULT NULL,
  `Funcao` varchar(255) DEFAULT NULL,
  `Salario` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`Codigo`),
  KEY `CodigoDepartamento` (`CodigoDepartamento`),
  CONSTRAINT `funcionarios_ibfk_1` FOREIGN KEY (`CodigoDepartamento`) REFERENCES `departamentos` (`Codigo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionarios`
--

LOCK TABLES `funcionarios` WRITE;
/*!40000 ALTER TABLE `funcionarios` DISABLE KEYS */;
INSERT INTO `funcionarios` VALUES (201,'João','Silva','1985-05-10','123.456.789-00','9876543','Rua A, 123','joao.silva@email.com','123-456-789',101,'Vendedor',14000.00),(202,'Maria','Souza','1990-08-15','987.654.321-00','1234567','Avenida B, 456','maria.souza@email.com','987-654-321',102,'Analista de Sistemas',7000.00),(203,'Carlos','Ferreira','1988-03-20','111.222.333-44','7654321','Rua C, 789','carlos.ferreira@email.com','111-222-333',103,'Recrutador',6000.00),(205,'Roberto','Martins','1980-12-05','999.888.777-66','8765432','Rua E, 202','roberto.martins@email.com','999-888-777',105,'Analista de Marketing',6500.00),(206,'Laura','Pereira','1987-07-18','777.888.999-00','3456789','Rua F, 303','laura.pereira@email.com','777-888-999',106,'Analista Financeiro',7200.00),(207,'Pedro','Lima','1993-02-12','222.333.444-55','8765422','Avenida G, 404','pedro.lima@email.com','222-333-444',107,'Coordenador de Logística',8500.00),(208,'Isabel','Costa','1982-09-28','444.555.666-77','1234567','Rua H, 505','isabel.costa@email.com','444-555-666',108,'Atendente',5000.00),(209,'Rafael','Almeida','1998-04-05','666.777.888-99','9976543','Avenida I, 606','rafael.almeida@email.com','666-777-888',109,'Engenheiro de Desenvolvimento',9000.00),(210,'Fernanda','Mendes','1984-01-30','888.999.000-11','2345678','Rua J, 707','fernanda.mendes@email.com','888-999-000',110,'Advogado',7800.00),(211,'Lucas','Santos','1991-06-22','333.444.555-66','7654321','Avenida K, 808','lucas.santos@email.com','333-444-555',111,'Comprador',6200.00),(212,'Carla','Rocha','1989-11-15','111.222.333-44','8765232','Rua L, 909','carla.rocha@email.com','111-222-333',112,'Analista de Qualidade',6900.00),(213,'Antonio','Oliveira','1996-08-08','555.666.777-88','2345678','Avenida M, 1010','antonio.oliveira@email.com','555-666-777',113,'Assessor de Comunicação',5800.00),(214,'Larissa','Ferreira','1983-03-12','999.888.777-66','7654321','Rua N, 1111','larissa.ferreira@email.com','999-888-777',114,'Instrutor de Treinamento',6700.00),(215,'Gabriel','Martins','1994-12-02','123.456.789-00','9872543','Avenida O, 1212','gabriel.martins@email.com','123-456-789',115,'Analista de Sustentabilidade',7300.00),(216,'Amanda','Silveira','1986-05-25','777.888.999-00','3456789','Rua P, 1313','amanda.silveira@email.com','777-888-999',101,'Vendedor',9500.00),(217,'Marcos','Rocha','1997-10-18','222.333.444-55','8765432','Avenida Q, 1414','marcos.rocha@email.com','222-333-444',102,'Desenvolvedor Full Stack',8200.00),(218,'Juliana','Oliveira','1981-07-28','444.555.666-77','1234567','Rua R, 1515','juliana.oliveira@email.com','444-555-666',103,'Recrutador',7200.00),(219,'Renato','Lima','1999-04-05','666.777.888-99','9876543','Avenida S, 1616','renato.lima@email.com','666-777-888',104,'Supervisor de Produção',8800.00),(220,'Camila','Ferreira','1980-11-30','888.999.000-11','2345678','Rua T, 1717','camila.ferreira@email.com','888-999-000',105,'Analista de Marketing',6900.00);
/*!40000 ALTER TABLE `funcionarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'empresa1'
--
/*!50003 DROP FUNCTION IF EXISTS `func_idmin` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `func_idmin`(nome varchar(55)) RETURNS varchar(55) CHARSET latin1
BEGIN 
     declare nov varchar(55);
     select nome into nov from funcionarios order by datanascimento desc limit 1;
 RETURN nov;
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `func_sm` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `func_sm`(id int) RETURNS decimal(10,0)
BEGIN 
     declare maximos decimal;
     select max(salario) into maximos 
     from funcionarios where codigodepartamento = id;
 RETURN maximos;
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `niveldep` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `niveldep`(id int, valor decimal(10, 2)) RETURNS varchar(55) CHARSET latin1
BEGIN 
     declare sal decimal(10, 2);
     declare nivel varchar(55);
     select sum(Salario) into sal
     from funcionarios where codigodepartamento = id;
     if sal < valor then
      set nivel = 'baixo';
	 elseif sal = valor then
      set nivel = 'medio';
	 else
      set nivel = 'maior';
     end if;
 RETURN nivel;
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `novosal` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `novosal`(id int, valor decimal(10, 2)) RETURNS varchar(55) CHARSET latin1
BEGIN 
     declare sal decimal(10, 2);
     declare certidao varchar(55);
     select salario into sal from funcionarios where codigo = id;
     if sal = valor then
      return 'deu erro';
	 else 
	   update funcionarios set salario = sal where codigo = id;
       return 'salario atualizado';
     end if;
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `soma_Deps` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `soma_Deps`(id int) RETURNS decimal(10,0)
BEGIN 
     declare soma decimal;
     select sum(funcionarios.salario) into soma
     from funcionarios where codigodepartamento = id;
 RETURN soma;
 END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `exc_Func` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `exc_Func`(in codfunc INT)
begin
  DELETE FROM funcionarios Where codigo = codfunc;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `func_salario` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `func_salario`(in salario decimal(10,2))
begin
  select funcionarios.nome, funcionarios.salario from funcionarios
  where funcionarios.salario >= salario order by funcionarios.salario;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Gerencia_Departamento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Gerencia_Departamento`(in coddep INT, in nome varchar(225), in loc varchar(225), in qf INT)
begin  
INSERT INTO departamentos values (coddep, nome,loc,qf);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `mudanca_departamento` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `mudanca_departamento`(in nome varchar(255),in quantidade int, in codigo int)
begin  
UPDATE departamentos SET departamentos.nome = nome,departamentos.QuantidadeFuncionario = quantidade where departamentos.Codigo = codigo;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-18 21:11:50
