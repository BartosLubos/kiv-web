-- MySQL Script generated by MySQL Workbench
-- 11/28/16 17:57:49
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Table `username_prava`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `username_prava` ;

CREATE TABLE IF NOT EXISTS `username_prava` (
  `idprava` INT NOT NULL AUTO_INCREMENT,
  `nazev` VARCHAR(20) NOT NULL,
  `vaha` INT(2) NOT NULL,
  PRIMARY KEY (`idprava`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `username_uzivatele`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `username_uzivatele` ;

CREATE TABLE IF NOT EXISTS `username_uzivatele` (
  `iduzivatel` INT NOT NULL AUTO_INCREMENT,
  `jmeno` VARCHAR(60) NOT NULL,
  `login` VARCHAR(30) NOT NULL,
  `heslo` VARCHAR(40) NOT NULL,
  `email` VARCHAR(35) NOT NULL,
  `idprava` INT NOT NULL DEFAULT 3,
  PRIMARY KEY (`iduzivatel`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `username_kniha`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `username_kniha` ;

CREATE TABLE IF NOT EXISTS `username_kniha` (
  `idkniha` INT NOT NULL AUTO_INCREMENT,
  `clovek` VARCHAR(100) NOT NULL,
  `text` TEXT NOT NULL,
  PRIMARY KEY (`idkniha`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `username_prava`
-- -----------------------------------------------------
START TRANSACTION;
INSERT INTO `username_prava` (`idprava`, `nazev`, `vaha`) VALUES (1, 'Administrator', 10);
INSERT INTO `username_prava` (`idprava`, `nazev`, `vaha`) VALUES (2, 'Recenzent', 5);
INSERT INTO `username_prava` (`idprava`, `nazev`, `vaha`) VALUES (3, 'Autor', 2);

COMMIT;


-- -----------------------------------------------------
-- Data for table `username_uzivatele`
-- -----------------------------------------------------
START TRANSACTION;
INSERT INTO `username_uzivatele` (`iduzivatel`, `jmeno`, `login`, `heslo`, `email`, `idprava`) VALUES (1, 'Pokusný administrátor', 'admin', 'hesloadmina', 'pokus1@kiv.zcu.cz', 1);
INSERT INTO `username_uzivatele` (`iduzivatel`, `jmeno`, `login`, `heslo`, `email`, `idprava`) VALUES (2, 'Pokusný recenzent', 'recenzent', 'heslorecenzenta', 'pokus2@kiv.zcu.cz', 2);
INSERT INTO `username_uzivatele` (`iduzivatel`, `jmeno`, `login`, `heslo`, `email`, `idprava`) VALUES (3, 'Pokusný autor', 'autor', 'hesloautora', 'pokus3@kiv.zcu.cz', 3);
INSERT INTO `username_uzivatele` (`iduzivatel`, `jmeno`, `login`, `heslo`, `email`, `idprava`) VALUES (4, 'Emil Pokus', 'emil', 'tajneheslo', 'pokus3@kiv.zcu.cz', 3);

COMMIT; 


-- -----------------------------------------------------
-- Data for table `username_kniha`
-- -----------------------------------------------------
START TRANSACTION;
INSERT INTO `username_kniha` (`idkniha`, `clovek`, `text`) VALUES (1, 'František Novák', 'Čekal jsem, že na webu naleznu více informací, tak příliš spokojený nejsem.');
INSERT INTO `username_kniha` (`idkniha`, `clovek`, `text`) VALUES (2, 'Jana Tůmová', 'Váš web se mi velice líbil, děkuji.');

COMMIT;

