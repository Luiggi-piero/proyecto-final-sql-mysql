-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: empresa
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `CODIGO` varchar(10) NOT NULL,
  `DESCRIPCION` varchar(100) DEFAULT NULL,
  `SABOR` varchar(50) DEFAULT NULL,
  `TAMANO` varchar(50) DEFAULT NULL,
  `ENVASE` varchar(50) DEFAULT NULL,
  `PRECIO` float DEFAULT NULL,
  PRIMARY KEY (`CODIGO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES ('1000889','Sabor da Montaña','Uva','700 ml','Botella de Vidrio',6.31),('1002334','Línea Citrus','Lima/Limón','1 Litro','Botella PET',7),('1002767','Vida del Campo','Cereza/Manzana','700 ml','Botella de Vidrio',8.41),('1004327','Vida del Campo','Sandía','1,5 Litros','Botella PET',19.51),('1013793','Vida del Campo','Cereza/Manzana','2 Litros','Botella PET',24.01),('1022450','Festival de Sabores','Asái','2 Litros','Botella PET',38.01),('1037797','Clean','Naranja','2 Litros','Botella PET',16.01),('1040107','Light','Sandía','350 ml','Lata',4.56),('1041119','Línea Citrus','Lima/Limón','700 ml','Botella de Vidrio',4.9),('1042712','Línea Citrus','Limón','700 ml','Botella de Vidrio',4.9),('1051518','Verano','Limón','470 ml','Botella de Vidrio',3.3),('1078680','Verano','Mango','470 ml','Botella de Vidrio',5.18),('1086543','Refrescante','Mango','1 Litro','Botella PET',11.01),('1088126','Línea Citrus','Limón','1 Litro','Botella PET',7),('1096818','Refrescante','Mango','700 ml','Botella de Vidrio',7.71),('1101035','Refrescante','Frutilla/Limón','1 Litro','Botella PET',9.01),('229900','Pedazos de Frutas','Manzana','350 ml','Lata',4.21),('231776','Festival de Sabores','Asaí','700 ml','Botella de Vidrio',13.31),('235653','Verano','Mango','350 ml','Lata',3.86),('243083','Festival de Sabores','Maracuyá','1,5 Litros','Botella PET',10.51),('290478','Vida del Campo','Sandía','350 ml','Lata',4.56),('326779','Refrescante','Mango','1,5 Litros','Botella PET',16.51),('394479','Sabor da Montaña','Cereza','700 ml','Botella de Vidrio',8.41),('479745','Clean','Naranja','470 ml','Botella de Vidrio',3.77),('520380','Pedazos de Frutas','Manzana','1 Litro','Botella PET',12.01),('544931','Verano','Limón','350 ml','Lata',2.46),('695594','Festival de Sabores','Asaí','1,5 Litros','Botella PET',28.51),('723457','Festival de Sabores','Maracuyá','700 ml','Botella de Vidrio',4.91),('746596','Light','Sandía','1,5 Litros','Botella PET',19.51),('773912','Clean','Naranja','1 Litro','Botella PET',8.01),('783663','Sabor da Montaña','Frutilla','700 ml','Botella de Vidrio',7.71),('788975','Pedazos de Frutas','Manzana','1,5 Litros','Botella PET',18.01),('812829','Clean','Naranja','350 ml','Lata',2.81),('826490','Refrescante','Frutilla/Limón','700 ml','Botella de Vidrio',6.31),('838819','Clean','Naranja','1,5 Litros','Botella PET',12.01);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-01 16:49:08
