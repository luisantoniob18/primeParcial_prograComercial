-- --------------------------------------------------------
-- Host:                         localhost
-- Versión del servidor:         8.4.3 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para primer_parcial
CREATE DATABASE IF NOT EXISTS `primer_parcial` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `primer_parcial`;

-- Volcando estructura para tabla primer_parcial.empleado
CREATE TABLE IF NOT EXISTS `empleado` (
  `idEmpleado` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `fechaNacimiento` datetime NOT NULL,
  `lugarN` varchar(255) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `proyectoIdProyecto` int DEFAULT NULL,
  PRIMARY KEY (`idEmpleado`),
  KEY `FK_6f47627f37f2f70f51161d19ec0` (`proyectoIdProyecto`),
  CONSTRAINT `FK_6f47627f37f2f70f51161d19ec0` FOREIGN KEY (`proyectoIdProyecto`) REFERENCES `proyecto` (`idProyecto`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3;

-- Volcando datos para la tabla primer_parcial.empleado: ~26 rows (aproximadamente)
INSERT INTO `empleado` (`idEmpleado`, `nombre`, `apellido`, `fechaNacimiento`, `lugarN`, `createdAt`, `updatedAt`, `proyectoIdProyecto`) VALUES
	(1, 'Luis Antonio', 'Baquiax', '1995-08-21 18:00:00', 'Totonicapan', '2025-08-22 18:54:08', '2025-08-22 18:54:08', 1),
	(2, 'Luis Antonio', 'Baquiax', '1995-08-22 00:00:00', 'Totonicapan', '2025-08-22 18:58:21', '2025-08-22 18:58:21', 1),
	(3, 'María Elena', 'García', '1990-05-15 00:00:00', 'Quetzaltenango', '2025-08-22 18:58:21', '2025-08-22 18:58:21', 1),
	(4, 'Juan Carlos', 'López', '1988-12-10 00:00:00', 'Huehuetenango', '2025-08-22 18:58:21', '2025-08-22 18:58:21', 1),
	(5, 'Ana Sofía', 'Martínez', '1992-03-25 00:00:00', 'Sololá', '2025-08-22 18:58:21', '2025-08-22 18:58:21', 1),
	(6, 'Carlos Manuel', 'Rodríguez', '1985-07-18 00:00:00', 'Chimaltenango', '2025-08-22 18:58:21', '2025-08-22 18:58:21', 1),
	(7, 'Laura Patricia', 'Hernández', '1993-11-30 00:00:00', 'Sacatepéquez', '2025-08-22 18:58:21', '2025-08-22 18:58:21', 1),
	(8, 'José Luis', 'Pérez', '1987-02-14 00:00:00', 'Escuintla', '2025-08-22 18:58:21', '2025-08-22 18:58:21', 1),
	(9, 'Gabriela María', 'González', '1994-09-05 00:00:00', 'Retalhuleu', '2025-08-22 18:58:21', '2025-08-22 18:58:21', 1),
	(10, 'Miguel Ángel', 'Ramírez', '1989-06-20 00:00:00', 'Suchitepéquez', '2025-08-22 18:58:21', '2025-08-22 18:58:21', 1),
	(11, 'Karla Alejandra', 'Díaz', '1991-04-12 00:00:00', 'San Marcos', '2025-08-22 18:58:21', '2025-08-22 18:58:21', 1),
	(12, 'Fernando José', 'Morales', '1986-10-08 00:00:00', 'Quiché', '2025-08-22 18:58:21', '2025-08-22 18:58:21', 1),
	(13, 'Sandra Elizabeth', 'Castillo', '1996-01-28 00:00:00', 'Baja Verapaz', '2025-08-22 18:58:21', '2025-08-22 18:58:21', 1),
	(14, 'Roberto Carlos', 'Ortiz', '1984-08-03 00:00:00', 'Alta Verapaz', '2025-08-22 18:58:21', '2025-08-22 18:58:21', 1),
	(15, 'Daniela Alejandra', 'Rivera', '1997-07-17 00:00:00', 'Petén', '2025-08-22 18:58:21', '2025-08-22 18:58:21', 1),
	(16, 'Jorge Eduardo', 'Castro', '1983-12-22 00:00:00', 'Izabal', '2025-08-22 18:58:21', '2025-08-22 18:58:21', 1),
	(17, 'Andrea Carolina', 'Rojas', '1998-05-09 00:00:00', 'Zacapa', '2025-08-22 18:58:21', '2025-08-22 18:58:21', 1),
	(18, 'Ricardo Alfonso', 'Méndez', '1982-09-14 00:00:00', 'Chiquimula', '2025-08-22 18:58:21', '2025-08-22 18:58:21', 1),
	(19, 'Paola Vanessa', 'Sánchez', '1999-03-07 00:00:00', 'Jalapa', '2025-08-22 18:58:21', '2025-08-22 18:58:21', 1),
	(20, 'Óscar René', 'Gómez', '1981-11-19 00:00:00', 'Jutiapa', '2025-08-22 18:58:21', '2025-08-22 18:58:21', 1),
	(21, 'Silvia Marcela', 'Vásquez', '2000-02-01 00:00:00', 'Santa Rosa', '2025-08-22 18:58:21', '2025-08-22 18:58:21', 1),
	(22, 'Eduardo José', 'Luna', '1980-06-25 00:00:00', 'El Progreso', '2025-08-22 18:58:21', '2025-08-22 18:58:21', 1),
	(23, 'Mónica Lucía', 'Aguilar', '2001-10-13 00:00:00', 'Totonicapán', '2025-08-22 18:58:21', '2025-08-22 18:58:21', 1),
	(24, 'Raúl Antonio', 'Flores', '1979-04-04 00:00:00', 'Quetzaltenango', '2025-08-22 18:58:21', '2025-08-22 18:58:21', 1),
	(25, 'Cristina María', 'Espinoza', '2002-08-29 00:00:00', 'Huehuetenango', '2025-08-22 18:58:21', '2025-08-22 18:58:21', 1),
	(26, 'David Alejandro', 'Mejía', '1978-01-16 00:00:00', 'Sololá', '2025-08-22 18:58:21', '2025-08-22 18:58:21', 1);

-- Volcando estructura para tabla primer_parcial.proyecto
CREATE TABLE IF NOT EXISTS `proyecto` (
  `idProyecto` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `fechaInicio` datetime NOT NULL,
  `fechaFinalizacion` datetime NOT NULL,
  `porcentajeP` int NOT NULL DEFAULT '0',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`idProyecto`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

-- Volcando datos para la tabla primer_parcial.proyecto: ~1 rows (aproximadamente)
INSERT INTO `proyecto` (`idProyecto`, `titulo`, `descripcion`, `fechaInicio`, `fechaFinalizacion`, `porcentajeP`, `createdAt`, `updatedAt`) VALUES
	(1, 'Pull Requests y commits', 'Aplicacion de lo visto en clase', '2025-08-21 18:00:00', '2025-08-31 18:00:00', 0, '2025-08-22 18:42:53', '2025-08-22 18:42:53');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
