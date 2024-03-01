-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `mydb` ;

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`Personas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Personas` (
  `idPersona` INT NOT NULL,
  `Nombre` VARCHAR(45) NOT NULL,
  `Apellido` VARCHAR(45) NOT NULL,
  `Teléfono` VARCHAR(11) NOT NULL,
  `Email` VARCHAR(45) NOT NULL,
  `DNI` VARCHAR(8) NOT NULL,
  `Dirección` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idPersona`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Artesanos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Artesanos` (
  `idArtesano` INT NOT NULL,
  `idPersona` INT NOT NULL,
  PRIMARY KEY (`idArtesano`),
  CONSTRAINT `fk_Artesanos_Personas1`
    FOREIGN KEY (`idPersona`)
    REFERENCES `mydb`.`Personas` (`idPersona`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_Artesanos_Personas1_idx` ON `mydb`.`Artesanos` (`idPersona` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `mydb`.`Admins`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Admins` (
  `idAdmin` INT NOT NULL,
  `idPersona` INT NOT NULL,
  PRIMARY KEY (`idAdmin`),
  CONSTRAINT `fk_Admins_Personas1`
    FOREIGN KEY (`idPersona`)
    REFERENCES `mydb`.`Personas` (`idPersona`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_Admins_Personas1_idx` ON `mydb`.`Admins` (`idPersona` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `mydb`.`Ferias`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Ferias` (
  `idFeria` INT NOT NULL,
  `Nombre` VARCHAR(45) NOT NULL,
  `Dirección` VARCHAR(45) NOT NULL,
  `CantPuestos` VARCHAR(45) NOT NULL,
  `FechaRealización` DATETIME NOT NULL,
  PRIMARY KEY (`idFeria`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Inscripciones`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Inscripciones` (
  `idInscripción` INT NOT NULL,
  `idArtesano` INT NOT NULL,
  `idFeria` INT NOT NULL,
  `Puesto` VARCHAR(45) NOT NULL,
  `Precio` DECIMAL NOT NULL,
  `FecInscripción` DATETIME NOT NULL,
  PRIMARY KEY (`idInscripción`),
  CONSTRAINT `fk_Inscripciones_Artesanos`
    FOREIGN KEY (`idArtesano`)
    REFERENCES `mydb`.`Artesanos` (`idArtesano`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Inscripciones_Ferias1`
    FOREIGN KEY (`idFeria`)
    REFERENCES `mydb`.`Ferias` (`idFeria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_Inscripciones_Artesanos_idx` ON `mydb`.`Inscripciones` (`idArtesano` ASC) VISIBLE;

CREATE INDEX `fk_Inscripciones_Ferias1_idx` ON `mydb`.`Inscripciones` (`idFeria` ASC) VISIBLE;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
