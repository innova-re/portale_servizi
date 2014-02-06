-- MySQL dump 10.13  Distrib 5.5.24, for osx10.6 (i386)
--
-- Host: localhost    Database: InnovareDB
-- ------------------------------------------------------
-- Server version	5.5.24

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
-- Table structure for table `afferenza`
--

DROP TABLE IF EXISTS `afferenza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `afferenza` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL DEFAULT '',
  `descrizione` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ente`
--

DROP TABLE IF EXISTS `ente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ente` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL DEFAULT '',
  `descrizione` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='Ente di appartenenza come Unica, Sardegnaricerche o UniSS';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `laboratorio`
--

DROP TABLE IF EXISTS `laboratorio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `laboratorio` (
  `id_laboratorio` int(11) NOT NULL AUTO_INCREMENT,
  `id_settore` int(11) DEFAULT NULL,
  `id_ente` int(10) unsigned DEFAULT NULL,
  `id_afferenza` int(10) unsigned DEFAULT NULL,
  `nome` varchar(250) NOT NULL,
  `centro` varchar(2) DEFAULT NULL COMMENT 'CA-UniCA SS-Sassari SR-Sardegna Ricerche',
  `afferenza` varchar(250) DEFAULT NULL COMMENT 'CeSAR - Polilab - Altro',
  `facolta` varchar(250) DEFAULT NULL,
  `dipartimento` varchar(250) DEFAULT NULL,
  `sezione` varchar(250) DEFAULT NULL,
  `sede` varchar(250) DEFAULT NULL,
  `sede_citta` varchar(250) DEFAULT NULL,
  `gps_lat` decimal(10,7) DEFAULT NULL,
  `gps_lng` decimal(10,7) DEFAULT NULL,
  `ubicazione` varchar(250) DEFAULT NULL COMMENT 'ubicazione precisa della stanza',
  `descrizione` text COMMENT 'breve descrizione discorsiva con rif. alle att. svolte ',
  `telefono` varchar(250) DEFAULT NULL,
  `web` varchar(250) DEFAULT NULL,
  `info` text,
  `responsabile` int(11) DEFAULT NULL COMMENT 'id_anagrafica',
  `referente` int(11) DEFAULT NULL COMMENT 'id_anagrafica',
  `attivita_esterna` int(1) DEFAULT NULL,
  `attivita_esterna_tipol` varchar(250) DEFAULT NULL,
  `regolam_accesso` int(1) DEFAULT NULL,
  `regolam_accesso_atti` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`id_laboratorio`),
  KEY `id_settore_idx` (`id_settore`),
  KEY `FK_laboratorio_2` (`id_ente`),
  KEY `FK_laboratorio_3` (`id_afferenza`),
  CONSTRAINT `fk1settore` FOREIGN KEY (`id_settore`) REFERENCES `settore` (`id_settore`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_laboratorio_2` FOREIGN KEY (`id_ente`) REFERENCES `ente` (`id`),
  CONSTRAINT `FK_laboratorio_3` FOREIGN KEY (`id_afferenza`) REFERENCES `afferenza` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `laboratorio_servizi`
--

DROP TABLE IF EXISTS `laboratorio_servizi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `laboratorio_servizi` (
  `id_servizi` int(11) NOT NULL AUTO_INCREMENT,
  `id_laboratorio` int(11) NOT NULL DEFAULT '0',
  `nome` varchar(200) NOT NULL DEFAULT '',
  `descrizione` varchar(200) DEFAULT NULL,
  `note` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_servizi`),
  KEY `FK_laboratorio_servizi_1` (`id_laboratorio`),
  CONSTRAINT `FK_laboratorio_servizi_1` FOREIGN KEY (`id_laboratorio`) REFERENCES `laboratorio` (`id_laboratorio`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `laboratorio_strumenti`
--

DROP TABLE IF EXISTS `laboratorio_strumenti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `laboratorio_strumenti` (
  `id_laboratorio` int(11) NOT NULL DEFAULT '0',
  `id_strumento` int(11) NOT NULL,
  `quantita` int(11) NOT NULL,
  PRIMARY KEY (`id_laboratorio`,`id_strumento`),
  KEY `FK_strumento_idx` (`id_strumento`),
  KEY `FK_laboratorio` (`id_laboratorio`),
  CONSTRAINT `FK_laboratorio` FOREIGN KEY (`id_laboratorio`) REFERENCES `laboratorio` (`id_laboratorio`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_laboratorio_strumenti_2` FOREIGN KEY (`id_strumento`) REFERENCES `strumenti` (`id_strumento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `laboratorio_tecnici`
--

DROP TABLE IF EXISTS `laboratorio_tecnici`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `laboratorio_tecnici` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_laboratorio` int(11) NOT NULL DEFAULT '0',
  `nome` varchar(45) NOT NULL DEFAULT '',
  `cognome` varchar(45) NOT NULL DEFAULT '',
  `matricola` varchar(20) DEFAULT NULL,
  `descrizione` varchar(200) DEFAULT NULL,
  `note` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_laboratorio_tecnici_1` (`id_laboratorio`),
  CONSTRAINT `FK_laboratorio_tecnici_1` FOREIGN KEY (`id_laboratorio`) REFERENCES `laboratorio` (`id_laboratorio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Elenco tecnici per ogni laboratorio';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `servizi`
--

DROP TABLE IF EXISTS `servizi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servizi` (
  `id_servizi` int(11) NOT NULL AUTO_INCREMENT,
  `descrizione` varchar(250) NOT NULL,
  PRIMARY KEY (`id_servizi`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `settore`
--

DROP TABLE IF EXISTS `settore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settore` (
  `id_settore` int(11) NOT NULL AUTO_INCREMENT,
  `settore` varchar(250) NOT NULL,
  `settore_tresto` text NOT NULL,
  PRIMARY KEY (`id_settore`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `strumenti`
--

DROP TABLE IF EXISTS `strumenti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `strumenti` (
  `id_strumento` int(11) NOT NULL AUTO_INCREMENT,
  `tipologia` varchar(250) DEFAULT NULL,
  `marca` varchar(250) DEFAULT NULL,
  `modello` varchar(250) DEFAULT NULL,
  `equipaggiamento` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_strumento`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-02-06 15:15:32
