-- MySQL Script generated by MySQL Workbench
-- Sat Jun  8 16:25:07 2024
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema StockAGranel
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `StockAGranel` ;

-- -----------------------------------------------------
-- Schema StockAGranel
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `StockAGranel` DEFAULT CHARACTER SET utf8 ;
USE `StockAGranel` ;

-- -----------------------------------------------------
-- Table `StockAGranel`.`PROVEEDORES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `StockAGranel`.`PROVEEDORES` (
  `CUIT` VARCHAR(15) NOT NULL,
  `proveedor` VARCHAR(45) NOT NULL,
  `direccion` VARCHAR(45) NULL,
  `telefono` VARCHAR(20) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `tiempoDeEntrega` INT NOT NULL,
  PRIMARY KEY (`CUIT`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `StockAGranel`.`CATEGORIAS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `StockAGranel`.`CATEGORIAS` (
  `idCategoria` INT NOT NULL AUTO_INCREMENT,
  `categoria` VARCHAR(45) NULL,
  PRIMARY KEY (`idCategoria`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `StockAGranel`.`PRODUCTOSAGRANEL`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `StockAGranel`.`PRODUCTOSAGRANEL` (
  `idProductoGranel` INT NOT NULL AUTO_INCREMENT,
  `descripcion` VARCHAR(45) NULL,
  `cantidad` INT NULL,
  `unidadMedida` VARCHAR(45) NULL,
  `cantidadMax` INT NOT NULL,
  `cantidadMin` INT NOT NULL,
  `idCategoria` INT NOT NULL,
  PRIMARY KEY (`idProductoGranel`),
  CONSTRAINT `fk_PRODUCTOSAGRANEL_CATEGORIA1`
    FOREIGN KEY (`idCategoria`)
    REFERENCES `StockAGranel`.`CATEGORIAS` (`idCategoria`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_PRODUCTOSAGRANEL_CATEGORIA1_idx` ON `StockAGranel`.`PRODUCTOSAGRANEL` (`idCategoria` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `StockAGranel`.`PRESENTACIONES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `StockAGranel`.`PRESENTACIONES` (
  `idProductoFracc` INT NOT NULL AUTO_INCREMENT,
  `cantidadMax` INT NOT NULL,
  `cantidadMin` INT NOT NULL,
  `unidadMedida` VARCHAR(45) NOT NULL,
  `idProductoGranel` INT NOT NULL,
  PRIMARY KEY (`idProductoFracc`),
  CONSTRAINT `fk_PRESENTACIONES_PRODUCTOSAGRANEL1`
    FOREIGN KEY (`idProductoGranel`)
    REFERENCES `StockAGranel`.`PRODUCTOSAGRANEL` (`idProductoGranel`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_PRESENTACIONES_PRODUCTOSAGRANEL1_idx` ON `StockAGranel`.`PRESENTACIONES` (`idProductoGranel` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `StockAGranel`.`VENTAS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `StockAGranel`.`VENTAS` (
  `idVenta` INT NOT NULL AUTO_INCREMENT,
  `fechaVenta` DATE NOT NULL,
  `cantidad` INT NULL,
  `idProductoFracc` INT NOT NULL,
  PRIMARY KEY (`idVenta`),
  CONSTRAINT `fk_VENTAS_PRESENTACIONES1`
    FOREIGN KEY (`idProductoFracc`)
    REFERENCES `StockAGranel`.`PRESENTACIONES` (`idProductoFracc`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_VENTAS_PRESENTACIONES1_idx` ON `StockAGranel`.`VENTAS` (`idProductoFracc` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `StockAGranel`.`PRODXPROV`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `StockAGranel`.`PRODXPROV` (
  `idProdIngreso` INT NOT NULL AUTO_INCREMENT,
  `fechaIngr` DATE NOT NULL,
  `fechaVto` DATE NOT NULL,
  `cantidad` INT NOT NULL,
  `CUIT` INT NOT NULL,
  `idProductoGranel` INT NOT NULL,
  PRIMARY KEY (`idProdIngreso`),
  CONSTRAINT `fk_PRODXPROV_PROVEEDORES`
    FOREIGN KEY (`CUIT`)
    REFERENCES `StockAGranel`.`PROVEEDORES` (`CUIT`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_PRODXPROV_PRODUCTOSAGRANEL1`
    FOREIGN KEY (`idProductoGranel`)
    REFERENCES `StockAGranel`.`PRODUCTOSAGRANEL` (`idProductoGranel`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_PRODXPROV_PROVEEDORES_idx` ON `StockAGranel`.`PRODXPROV` (`CUIT` ASC) VISIBLE;

CREATE INDEX `fk_PRODXPROV_PRODUCTOSAGRANEL1_idx` ON `StockAGranel`.`PRODXPROV` (`idProductoGranel` ASC) VISIBLE;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
