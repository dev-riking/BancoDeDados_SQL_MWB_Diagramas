-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema erik
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema erik
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `erik` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `erik` ;

-- -----------------------------------------------------
-- Table `erik`.`BANCO`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `erik`.`BANCO` (
  `contato` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(45) NOT NULL,
  `rua` VARCHAR(45) NOT NULL,
  `numero` INT NOT NULL,
  `cep` INT NOT NULL,
  PRIMARY KEY (`contato`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `erik`.`AGENCIA BANCARIA`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `erik`.`AGENCIA BANCARIA` (
  `num.agencia` INT NOT NULL AUTO_INCREMENT,
  `rua` VARCHAR(45) NOT NULL,
  `numero` INT NOT NULL,
  `bairro` VARCHAR(45) NOT NULL,
  `cep` INT NOT NULL,
  `BANCO_contato` INT NOT NULL,
  PRIMARY KEY (`num.agencia`, `BANCO_contato`),
  INDEX `fk_AGENCIA BANCARIA_BANCO1_idx` (`BANCO_contato` ASC),
  CONSTRAINT `fk_AGENCIA BANCARIA_BANCO1`
    FOREIGN KEY (`BANCO_contato`)
    REFERENCES `erik`.`BANCO` (`contato`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `erik`.`CONTAS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `erik`.`CONTAS` (
  `numero` INT NOT NULL AUTO_INCREMENT,
  `saldo` INT NOT NULL,
  `tipo` VARCHAR(45) NOT NULL,
  `AGENCIA BANCARIA_num.agencia` INT NOT NULL,
  `AGENCIA BANCARIA_BANCO_contato` INT NOT NULL,
  PRIMARY KEY (`numero`, `AGENCIA BANCARIA_num.agencia`, `AGENCIA BANCARIA_BANCO_contato`),
  INDEX `fk_CONTAS_AGENCIA BANCARIA1_idx` (`AGENCIA BANCARIA_num.agencia` ASC, `AGENCIA BANCARIA_BANCO_contato` ASC),
  CONSTRAINT `fk_CONTAS_AGENCIA BANCARIA1`
    FOREIGN KEY (`AGENCIA BANCARIA_num.agencia` , `AGENCIA BANCARIA_BANCO_contato`)
    REFERENCES `erik`.`AGENCIA BANCARIA` (`num.agencia` , `BANCO_contato`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `erik`.`CLIENTES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `erik`.`CLIENTES` (
  `cpf` INT NOT NULL,
  `nome` VARCHAR(45) NULL,
  `rua` VARCHAR(45) NULL,
  `numero` INT NULL,
  `cep` INT NULL,
  PRIMARY KEY (`cpf`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `erik`.`TEL.AGB.CLIENTE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `erik`.`TEL.AGB.CLIENTE` (
  `telefone` INT NOT NULL AUTO_INCREMENT,
  `AGENCIA BANCARIA_num.agencia` INT NOT NULL,
  `CLIENTES_cpf` INT NOT NULL,
  PRIMARY KEY (`telefone`, `AGENCIA BANCARIA_num.agencia`, `CLIENTES_cpf`),
  INDEX `fk_TEL.AGENCIABANCARIA_AGENCIA BANCARIA1_idx` (`AGENCIA BANCARIA_num.agencia` ASC),
  INDEX `fk_TEL.AGENCIABANCARIA_CLIENTES1_idx` (`CLIENTES_cpf` ASC),
  CONSTRAINT `fk_TEL.AGENCIABANCARIA_AGENCIA BANCARIA1`
    FOREIGN KEY (`AGENCIA BANCARIA_num.agencia`)
    REFERENCES `erik`.`AGENCIA BANCARIA` (`num.agencia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_TEL.AGENCIABANCARIA_CLIENTES1`
    FOREIGN KEY (`CLIENTES_cpf`)
    REFERENCES `erik`.`CLIENTES` (`cpf`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `erik`.`CONTAS_has_CLIENTES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `erik`.`CONTAS_has_CLIENTES` (
  `CONTAS_numero` INT NOT NULL,
  `CONTAS_AGENCIA BANCARIA_num.agencia` INT NOT NULL,
  `CONTAS_AGENCIA BANCARIA_BANCO_contato` INT NOT NULL,
  `CLIENTES_cpf` INT NOT NULL,
  PRIMARY KEY (`CONTAS_numero`, `CONTAS_AGENCIA BANCARIA_num.agencia`, `CONTAS_AGENCIA BANCARIA_BANCO_contato`, `CLIENTES_cpf`),
  INDEX `fk_CONTAS_has_CLIENTES_CLIENTES1_idx` (`CLIENTES_cpf` ASC),
  INDEX `fk_CONTAS_has_CLIENTES_CONTAS1_idx` (`CONTAS_numero` ASC, `CONTAS_AGENCIA BANCARIA_num.agencia` ASC, `CONTAS_AGENCIA BANCARIA_BANCO_contato` ASC),
  CONSTRAINT `fk_CONTAS_has_CLIENTES_CONTAS1`
    FOREIGN KEY (`CONTAS_numero` , `CONTAS_AGENCIA BANCARIA_num.agencia` , `CONTAS_AGENCIA BANCARIA_BANCO_contato`)
    REFERENCES `erik`.`CONTAS` (`numero` , `AGENCIA BANCARIA_num.agencia` , `AGENCIA BANCARIA_BANCO_contato`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_CONTAS_has_CLIENTES_CLIENTES1`
    FOREIGN KEY (`CLIENTES_cpf`)
    REFERENCES `erik`.`CLIENTES` (`cpf`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `erik`.`table1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `erik`.`table1` (
)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `erik`.`table2`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `erik`.`table2` (
)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
