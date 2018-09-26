SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`direccion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`direccion` (
  `idDireccion` INT(11) NOT NULL,
  `Calle` VARCHAR(45) NULL DEFAULT NULL,
  `Numero` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`idDireccion`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`alumnos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`alumnos` (
  `idAlumnos` INT(11) NOT NULL,
  `Nombre` VARCHAR(45) NULL DEFAULT NULL,
  `Apellido` VARCHAR(45) NULL DEFAULT NULL,
  `edad` INT(11) NULL DEFAULT NULL,
  `Direccion_idDireccion` INT(11) NOT NULL,
  PRIMARY KEY (`idAlumnos`),
  INDEX `fk_Alumnos_Direccion_idx` (`Direccion_idDireccion` ASC) ,
  CONSTRAINT `fk_Alumnos_Direccion`
    FOREIGN KEY (`Direccion_idDireccion`)
    REFERENCES `mydb`.`direccion` (`idDireccion`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`notas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`notas` (
  `idNotas` INT(11) NOT NULL,
  `Nota` INT(11) NULL DEFAULT NULL,
  `NotaAlf` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`idNotas`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`alumnos_has_notas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`alumnos_has_notas` (
  `Alumnos_idAlumnos` INT(11) NOT NULL,
  `Notas_idNotas` INT(11) NOT NULL,
  PRIMARY KEY (`Alumnos_idAlumnos`, `Notas_idNotas`),
  INDEX `fk_Alumnos_has_Notas_Notas1_idx` (`Notas_idNotas` ASC) ,
  INDEX `fk_Alumnos_has_Notas_Alumnos1_idx` (`Alumnos_idAlumnos` ASC) ,
  CONSTRAINT `fk_Alumnos_has_Notas_Alumnos1`
    FOREIGN KEY (`Alumnos_idAlumnos`)
    REFERENCES `mydb`.`alumnos` (`idAlumnos`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Alumnos_has_Notas_Notas1`
    FOREIGN KEY (`Notas_idNotas`)
    REFERENCES `mydb`.`notas` (`idNotas`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;


use mydb;
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (1, '9379 Rodriguez Common Suite 589', 7);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (2, '8212 Runolfsson Haven', 3);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (3, '15651 Verdie Way', 8);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (4, '343 Johnpaul Court', 6);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (5, '37157 Waino Courts', 0);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (6, '62410 Bradley Ferry Suite 749', 8);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (7, '73608 Schinner Run', 0);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (8, '59460 Abdiel Road', 4);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (9, '942 Rose Mountains', 1);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (10, '1974 Dickinson Stream Suite 196', 3);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (11, '689 Jayce Isle', 0);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (12, '512 Frankie Plaza', 6);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (13, '26415 Myron Expressway Suite 922', 3);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (14, '992 Satterfield Drive Apt. 517', 3);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (15, '2643 Zechariah Crescent', 4);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (16, '485 Wunsch Canyon Apt. 846', 0);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (17, '33672 Juana Meadow Apt. 661', 8);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (18, '591 Hansen Fords Suite 484', 1);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (19, '58898 Gerlach Forge', 0);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (20, '39048 Wayne Throughway Suite 507', 0);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (21, '09382 Kendra Radial Apt. 181', 5);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (22, '9029 Kaitlyn Springs Apt. 181', 8);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (23, '55805 Gutmann Plains Suite 394', 6);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (24, '37443 Creola Spring', 8);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (25, '599 Dietrich Loop Suite 824', 6);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (26, '0382 Kameron Walks Suite 936', 0);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (27, '4672 Sabina Road', 1);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (28, '76357 Lueilwitz Cliffs', 9);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (29, '8268 McCullough Streets Suite 299', 0);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (30, '1145 Dion Prairie', 0);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (31, '509 Ludie Gardens', 9);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (32, '697 Myriam Union Apt. 146', 8);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (33, '91027 Wolf Burg', 8);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (34, '971 Treutel Square Apt. 929', 4);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (35, '1199 Brakus Prairie Apt. 219', 0);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (36, '878 Dach Forges', 4);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (37, '56705 Metz Summit', 2);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (38, '5347 Maria Valleys', 4);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (39, '00474 Kihn Mall', 6);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (40, '7913 Gleichner Harbors Suite 099', 0);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (41, '4146 Lisandro Plains', 4);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (42, '6211 Arnulfo Pass Apt. 874', 6);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (43, '3223 Jazmin Forks', 2);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (44, '65498 Legros Extension Suite 814', 8);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (45, '4000 Kuhic Fords Suite 240', 6);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (46, '599 Naomie Ridges', 8);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (47, '876 Keon Harbors Suite 521', 8);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (48, '354 Hirthe Lane', 9);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (49, '7913 Aliyah Ports', 7);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (50, '4966 Gaylord Greens', 4);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (51, '265 Reba Curve Suite 357', 2);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (52, '4844 Henderson Squares Apt. 485', 6);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (53, '6582 Cayla Circle', 3);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (54, '001 Charlotte Pine', 9);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (55, '96990 Eusebio Freeway', 4);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (56, '3128 Jenkins Light', 9);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (57, '9954 Lane Unions', 5);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (58, '1113 Ronaldo Ramp Apt. 535', 8);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (59, '977 McLaughlin Lake Suite 966', 4);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (60, '492 Lavon Villages Suite 784', 3);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (61, '8674 White Run', 8);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (62, '986 Kristofer Knolls Apt. 212', 3);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (63, '3446 Travis Ridges Apt. 739', 3);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (64, '393 Altenwerth Prairie Suite 127', 7);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (65, '44119 Hane Ways Suite 382', 0);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (66, '769 Edd Views', 2);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (67, '878 Torp Vista Apt. 050', 6);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (68, '611 Zoila Hollow', 2);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (69, '3571 Schmitt Groves Apt. 101', 5);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (70, '7887 Devante Stravenue', 9);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (71, '57557 Bradtke Port', 7);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (72, '403 Olson Lane', 2);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (73, '83983 Mariane Lodge Suite 699', 2);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (74, '576 Lila Stream Suite 639', 1);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (75, '43460 Huel Ports', 6);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (76, '234 Rogahn Ridge Apt. 720', 8);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (77, '027 Kendrick Island', 1);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (78, '592 Smith Crossing Apt. 187', 0);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (79, '955 Lula Brook', 6);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (80, '205 Concepcion Junction', 2);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (81, '1964 Kira Loaf', 9);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (82, '781 Abshire Garden', 7);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (83, '0895 Otto Shore Suite 794', 0);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (84, '8733 Upton Fords Suite 689', 9);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (85, '5970 Bashirian Cape', 8);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (86, '76793 DuBuque Drive', 3);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (87, '406 Carol Lock Suite 907', 7);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (88, '60303 Dare Hills Apt. 791', 0);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (89, '04544 Cole Via Suite 026', 6);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (90, '0944 Hanna Plaza Apt. 124', 1);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (91, '37156 Gia Light', 2);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (92, '7715 Liana Tunnel', 1);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (93, '8955 Yvette Unions', 1);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (94, '70068 Upton Inlet Suite 595', 3);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (95, '61559 Rath Crescent Suite 802', 8);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (96, '967 Brown Cove', 6);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (97, '263 Larson Via', 3);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (98, '3488 Bergnaum Overpass', 9);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (99, '375 Dejon Mission', 2);
INSERT INTO `Direccion` (`idDireccion`, `Calle`, `Numero`) VALUES (100, '7057 Kristin Knolls', 1);
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (1, 4, ' bueno');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (2, 10, ' bueno');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (3, 8, ' bueno');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (4, 7, ' mal');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (5, 10, 'bien');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (6, 2, 'bien');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (7, 5, 'bien');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (8, 5, 'bien');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (9, 3, 'bien');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (10, 5, ' mal');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (11, 10, ' bueno');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (12, 3, 'bien');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (13, 3, ' bueno');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (14, 3, ' bueno');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (15, 2, ' mal');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (16, 2, 'bien');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (17, 8, ' mal');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (18, 9, ' bueno');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (19, 1, 'bien');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (20, 3, ' bueno');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (21, 3, ' mal');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (22, 1, ' mal');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (23, 5, ' bueno');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (24, 1, ' bueno');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (25, 4, ' mal');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (26, 10, ' bueno');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (27, 1, ' mal');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (28, 9, 'bien');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (29, 6, 'bien');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (30, 2, 'bien');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (31, 9, ' mal');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (32, 3, ' mal');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (33, 9, ' mal');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (34, 1, 'bien');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (35, 9, ' mal');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (36, 7, ' mal');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (37, 4, ' mal');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (38, 1, ' mal');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (39, 1, ' mal');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (40, 8, 'bien');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (41, 5, ' mal');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (42, 7, ' bueno');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (43, 5, 'bien');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (44, 2, ' mal');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (45, 4, ' bueno');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (46, 9, ' bueno');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (47, 4, ' bueno');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (48, 6, ' bueno');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (49, 6, 'bien');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (50, 6, ' mal');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (51, 4, 'bien');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (52, 8, ' mal');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (53, 10, ' bueno');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (54, 10, ' bueno');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (55, 5, ' mal');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (56, 1, ' mal');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (57, 5, 'bien');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (58, 7, ' mal');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (59, 10, ' bueno');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (60, 6, 'bien');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (61, 7, 'bien');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (62, 1, 'bien');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (63, 10, ' bueno');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (64, 7, 'bien');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (65, 10, 'bien');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (66, 8, 'bien');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (67, 10, ' bueno');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (68, 4, 'bien');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (69, 10, ' mal');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (70, 3, ' mal');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (71, 9, 'bien');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (72, 2, ' bueno');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (73, 3, 'bien');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (74, 5, ' bueno');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (75, 10, 'bien');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (76, 10, ' mal');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (77, 4, ' mal');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (78, 4, ' mal');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (79, 9, 'bien');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (80, 1, ' bueno');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (81, 8, 'bien');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (82, 3, 'bien');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (83, 9, ' bueno');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (84, 7, 'bien');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (85, 1, 'bien');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (86, 9, ' bueno');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (87, 1, ' mal');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (88, 6, 'bien');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (89, 5, 'bien');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (90, 8, 'bien');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (91, 7, ' mal');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (92, 6, 'bien');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (93, 2, ' bueno');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (94, 4, 'bien');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (95, 7, ' bueno');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (96, 3, ' mal');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (97, 4, ' bueno');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (98, 9, ' mal');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (99, 8, ' mal');
INSERT INTO `Notas` (`idNotas`, `Nota`, `NotaAlf`) VALUES (100, 3, ' bueno');
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (1, 'Jovanny', 'Stiedemann', 2, 32);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (2, 'Jaylin', 'Leuschke', 9, 72);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (3, 'Luella', 'McCullough', 2, 50);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (4, 'Simeon', 'Mueller', 5, 70);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (5, 'Clara', 'Murazik', 5, 34);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (6, 'Jefferey', 'Rogahn', 7, 23);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (7, 'Valentina', 'Hintz', 0, 51);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (8, 'Genoveva', 'Cole', 3, 16);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (9, 'Eleazar', 'Koss', 9, 28);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (10, 'Nicholaus', 'Littel', 6, 97);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (11, 'Amina', 'Stamm', 0, 89);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (12, 'Lisette', 'Schmitt', 2, 46);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (13, 'Alejandrin', 'Witting', 4, 10);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (14, 'Camden', 'McGlynn', 8, 93);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (15, 'Rickie', 'Schuster', 3, 24);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (16, 'Richie', 'Bins', 4, 99);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (17, 'Marina', 'Jacobs', 4, 52);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (18, 'Elliott', 'Gutkowski', 3, 91);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (19, 'Jerald', 'Bailey', 7, 42);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (20, 'Stone', 'Ward', 4, 12);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (21, 'Nicklaus', 'Fritsch', 4, 41);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (22, 'Robb', 'Murray', 1, 43);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (23, 'Christiana', 'Paucek', 3, 88);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (24, 'Kristian', 'Gottlieb', 5, 13);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (25, 'Helga', 'Gaylord', 4, 1);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (26, 'Dejon', 'Jacobi', 3, 95);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (27, 'Kolby', 'Torphy', 9, 30);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (28, 'Chester', 'Bode', 0, 77);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (29, 'Madisyn', 'King', 8, 65);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (30, 'Cristopher', 'Raynor', 6, 39);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (31, 'Elna', 'Jast', 3, 73);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (32, 'Daren', 'Ebert', 8, 26);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (33, 'Rhoda', 'Gutmann', 5, 53);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (34, 'Maddison', 'Konopelski', 9, 8);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (35, 'Dayne', 'Keeling', 3, 68);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (36, 'Josianne', 'Hane', 2, 44);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (37, 'Cleo', 'Braun', 9, 22);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (38, 'Fausto', 'Auer', 6, 78);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (39, 'Schuyler', 'Heller', 0, 96);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (40, 'Geovany', 'Lowe', 8, 84);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (41, 'Wendy', 'Howell', 9, 15);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (42, 'Litzy', 'Kshlerin', 1, 90);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (43, 'Nya', 'Gusikowski', 9, 18);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (44, 'Melisa', 'Keeling', 4, 48);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (45, 'Waldo', 'Rohan', 2, 86);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (46, 'Stephon', 'Rice', 6, 4);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (47, 'Rose', 'McClure', 8, 61);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (48, 'Priscilla', 'Okuneva', 4, 11);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (49, 'Domenico', 'Abbott', 9, 57);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (50, 'Felicita', 'Watsica', 2, 25);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (51, 'Scottie', 'Doyle', 2, 63);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (52, 'Gail', 'Thiel', 1, 45);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (53, 'Anthony', 'Hoppe', 0, 75);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (54, 'Ernestina', 'Pfannerstill', 7, 64);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (55, 'Annie', 'Kilback', 3, 55);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (56, 'Sim', 'Wiegand', 8, 14);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (57, 'Albertha', 'Hand', 5, 59);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (58, 'Liza', 'Swift', 1, 87);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (59, 'Onie', 'Koch', 3, 19);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (60, 'Bettie', 'Wuckert', 8, 94);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (61, 'Lamar', 'Wyman', 0, 58);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (62, 'Lance', 'Christiansen', 2, 47);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (63, 'Woodrow', 'O\'Keefe', 0, 62);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (64, 'Raleigh', 'Conn', 2, 2);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (65, 'Jodie', 'Blick', 4, 6);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (66, 'Delores', 'Schumm', 5, 33);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (67, 'Marisol', 'Watsica', 9, 49);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (68, 'Chelsea', 'Hammes', 6, 76);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (69, 'Cydney', 'Towne', 5, 5);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (70, 'Missouri', 'Cruickshank', 7, 31);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (71, 'Annetta', 'Graham', 5, 80);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (72, 'Sheldon', 'Satterfield', 2, 17);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (73, 'Hope', 'Hyatt', 2, 35);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (74, 'Lowell', 'Willms', 1, 20);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (75, 'Jadon', 'Waters', 4, 38);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (76, 'General', 'Torp', 8, 37);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (77, 'Jena', 'Ankunding', 6, 29);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (78, 'Alvis', 'Tromp', 5, 85);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (79, 'Reynold', 'Feeney', 0, 69);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (80, 'Marina', 'Wehner', 5, 100);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (81, 'Jeanie', 'Lynch', 2, 66);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (82, 'Destiny', 'Bartoletti', 6, 79);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (83, 'Matilda', 'Leuschke', 2, 7);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (84, 'Laura', 'Willms', 6, 98);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (85, 'Emerson', 'Mills', 3, 40);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (86, 'Dominic', 'Collins', 7, 21);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (87, 'Marcia', 'Stoltenberg', 7, 56);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (88, 'Hoyt', 'Kulas', 8, 36);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (89, 'Jackeline', 'Dooley', 1, 9);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (90, 'Agnes', 'Roob', 0, 3);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (91, 'Melba', 'Runte', 4, 27);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (92, 'Quinten', 'Botsford', 3, 83);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (93, 'Justyn', 'Ritchie', 9, 54);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (94, 'Dale', 'Haley', 3, 71);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (95, 'Susie', 'Renner', 3, 92);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (96, 'Ila', 'Erdman', 2, 60);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (97, 'Billie', 'Champlin', 7, 74);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (98, 'Estel', 'Nicolas', 6, 81);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (99, 'Savanna', 'Stamm', 4, 82);
INSERT INTO `Alumnos` (`idAlumnos`, `Nombre`, `Apellido`, `edad`, `Direccion_idDireccion`) VALUES (100, 'Jettie', 'Gibson', 6, 67);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (1, 1);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (2, 2);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (3, 3);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (4, 4);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (5, 5);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (6, 6);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (7, 7);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (8, 8);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (9, 9);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (10, 10);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (11, 11);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (12, 12);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (13, 13);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (14, 14);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (15, 15);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (16, 16);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (17, 17);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (18, 18);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (19, 19);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (20, 20);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (21, 21);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (22, 22);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (23, 23);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (24, 24);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (25, 25);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (26, 26);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (27, 27);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (28, 28);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (29, 29);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (30, 30);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (31, 31);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (32, 32);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (33, 33);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (34, 34);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (35, 35);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (36, 36);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (37, 37);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (38, 38);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (39, 39);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (40, 40);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (41, 41);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (42, 42);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (43, 43);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (44, 44);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (45, 45);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (46, 46);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (47, 47);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (48, 48);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (49, 49);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (50, 50);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (51, 51);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (52, 52);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (53, 53);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (54, 54);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (55, 55);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (56, 56);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (57, 57);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (58, 58);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (59, 59);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (60, 60);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (61, 61);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (62, 62);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (63, 63);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (64, 64);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (65, 65);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (66, 66);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (67, 67);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (68, 68);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (69, 69);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (70, 70);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (71, 71);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (72, 72);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (73, 73);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (74, 74);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (75, 75);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (76, 76);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (77, 77);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (78, 78);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (79, 79);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (80, 80);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (81, 81);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (82, 82);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (83, 83);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (84, 84);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (85, 85);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (86, 86);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (87, 87);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (88, 88);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (89, 89);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (90, 90);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (91, 91);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (92, 92);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (93, 93);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (94, 94);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (95, 95);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (96, 96);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (97, 97);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (98, 98);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (99, 99);
INSERT INTO `Alumnos_has_Notas` (`Alumnos_idAlumnos`, `Notas_idNotas`) VALUES (100, 100);