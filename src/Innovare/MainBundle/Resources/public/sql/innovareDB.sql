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
-- Dumping data for table `afferenza`
--

LOCK TABLES `afferenza` WRITE;
/*!40000 ALTER TABLE `afferenza` DISABLE KEYS */;
INSERT INTO `afferenza` VALUES (1,'Cesar','Cesar'),(2,'Polilab','Polilab'),(3,'Dipartimento','Dipartimento'),(4,'Laboratori didattici','Laboratori didattici'),(5,'Consorzi interdipartimentali','Consorzi interdipartimentali');
/*!40000 ALTER TABLE `afferenza` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anagrafica`
--

DROP TABLE IF EXISTS `anagrafica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `anagrafica` (
  `id_anagrafica` varchar(11) NOT NULL DEFAULT '',
  `cognome` varchar(250) NOT NULL,
  `nome` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `telefono1` varchar(250) DEFAULT NULL,
  `telefono2` varchar(250) DEFAULT NULL,
  `qualifica` varchar(250) DEFAULT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anagrafica`
--

LOCK TABLES `anagrafica` WRITE;
/*!40000 ALTER TABLE `anagrafica` DISABLE KEYS */;
INSERT INTO `anagrafica` VALUES ('10001','Rossi','Giulio','grossu@unica.it','0706755022','0706755023','Tecnico di laboratorio',1);
/*!40000 ALTER TABLE `anagrafica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `area`
--

DROP TABLE IF EXISTS `area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `area` (
  `id_area` int(11) NOT NULL AUTO_INCREMENT,
  `area` varchar(250) NOT NULL,
  `area_tresto` text NOT NULL,
  PRIMARY KEY (`id_area`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area`
--

LOCK TABLES `area` WRITE;
/*!40000 ALTER TABLE `area` DISABLE KEYS */;
INSERT INTO `area` VALUES (1,'Materiali','Area 1. Caratterizzazoione dei materiali e dei manufatti\r\n'),(3,'Energia Ambiente','Area 3. Innovazioneedefficienzaenergeticaincampoindustriale e civile\r\nArea 4. Salvaguardia del paesaggio naturale ed antropicoe dei beni culturali\r\nArea 5. Salvaguardia e riqualificazioneambientale(l\r\nArea 6. Sensoristica innovativa perl’energia, l’ambiente e la qualità della vita'),(4,'ICT','Area 4 . ICT');
/*!40000 ALTER TABLE `area` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `ente`
--

LOCK TABLES `ente` WRITE;
/*!40000 ALTER TABLE `ente` DISABLE KEYS */;
INSERT INTO `ente` VALUES (1,'Universita degli Studi di Cagliari','Universita degli Studi di Cagliari'),(2,'Sardegnaricerche','Sardegnaricerche'),(3,'Universita Degli Studi di Sassari','Universita Degli Studi di Sassari');
/*!40000 ALTER TABLE `ente` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `laboratorio`
--

LOCK TABLES `laboratorio` WRITE;
/*!40000 ALTER TABLE `laboratorio` DISABLE KEYS */;
INSERT INTO `laboratorio` VALUES (1,1,1,1,'Lab. Neurobiologia','CA','CeSAR','Facoltà di Biologia e Farmacia','Scienze','Citomorfologia','Cittadella Universitaria','Monserrato',NULL,0.0000000,NULL,NULL,'','','X X| X.X@unica.it - Y Y| X.X@unica.it',10001,0,0,'',0,''),(2,1,1,1,'Laboratorio prova 1','','','','','','','',NULL,NULL,'','','','','',NULL,NULL,NULL,'',NULL,'');
/*!40000 ALTER TABLE `laboratorio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laboratorio_foto`
--

DROP TABLE IF EXISTS `laboratorio_foto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `laboratorio_foto` (
  `id_laboratorio` int(11) NOT NULL DEFAULT '0',
  `nomefile` varchar(250) NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laboratorio_foto`
--

LOCK TABLES `laboratorio_foto` WRITE;
/*!40000 ALTER TABLE `laboratorio_foto` DISABLE KEYS */;
INSERT INTO `laboratorio_foto` VALUES (1,'foto1.jpg',1),(1,'foto2.jpg',2);
/*!40000 ALTER TABLE `laboratorio_foto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `laboratorio_has_afferenza`
--

DROP TABLE IF EXISTS `laboratorio_has_afferenza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `laboratorio_has_afferenza` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_laboratorio` int(11) NOT NULL DEFAULT '0',
  `id_afferenza` int(10) unsigned NOT NULL DEFAULT '0',
  `nome` varchar(200) DEFAULT NULL,
  `descrizione` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_laboratorio_has_afferenza_1` (`id_laboratorio`),
  KEY `FK_laboratorio_has_afferenza_2` (`id_afferenza`),
  CONSTRAINT `FK_laboratorio_has_afferenza_2` FOREIGN KEY (`id_afferenza`) REFERENCES `afferenza` (`id`),
  CONSTRAINT `FK_laboratorio_has_afferenza_1` FOREIGN KEY (`id_laboratorio`) REFERENCES `laboratorio` (`id_laboratorio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Relazione uno a molti tra laboratorio e piu afferenze';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `laboratorio_has_afferenza`
--

LOCK TABLES `laboratorio_has_afferenza` WRITE;
/*!40000 ALTER TABLE `laboratorio_has_afferenza` DISABLE KEYS */;
/*!40000 ALTER TABLE `laboratorio_has_afferenza` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `laboratorio_servizi`
--

LOCK TABLES `laboratorio_servizi` WRITE;
/*!40000 ALTER TABLE `laboratorio_servizi` DISABLE KEYS */;
/*!40000 ALTER TABLE `laboratorio_servizi` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `laboratorio_strumenti`
--

LOCK TABLES `laboratorio_strumenti` WRITE;
/*!40000 ALTER TABLE `laboratorio_strumenti` DISABLE KEYS */;
/*!40000 ALTER TABLE `laboratorio_strumenti` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `laboratorio_tecnici`
--

LOCK TABLES `laboratorio_tecnici` WRITE;
/*!40000 ALTER TABLE `laboratorio_tecnici` DISABLE KEYS */;
/*!40000 ALTER TABLE `laboratorio_tecnici` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `miur_area`
--

DROP TABLE IF EXISTS `miur_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `miur_area` (
  `miur_area` int(11) NOT NULL,
  `miur_area_desc` varchar(250) NOT NULL,
  PRIMARY KEY (`miur_area`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `miur_area`
--

LOCK TABLES `miur_area` WRITE;
/*!40000 ALTER TABLE `miur_area` DISABLE KEYS */;
INSERT INTO `miur_area` VALUES (1,'Area 01 - Scienze matematiche e informatiche'),(2,'Area 02 - Scienze fisiche'),(3,'Area 03 - Scienze chimiche'),(4,'Area 04 - Scienze della terra'),(5,'Area 05 - Scienze biologiche'),(6,'Area 06 - Scienze mediche'),(7,'Area 07 - Scienze agrarie e veterinarie'),(8,'Area 08 - Ingegneria civile e Architettura'),(9,'Area 09 - Ingegneria industriale e dell\'informazione'),(10,'Area 10 - Scienze dell\'antichità, filologico-letterarie e storico-artistiche'),(11,'Area 11 - Scienze storiche, filosofiche, pedagogiche e psicologiche'),(12,'Area 12 - Scienze giuridiche'),(13,'Area 13 - Scienze economiche e statistiche'),(14,'Area 14 - Scienze politiche e sociali');
/*!40000 ALTER TABLE `miur_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `miur_ssd`
--

DROP TABLE IF EXISTS `miur_ssd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `miur_ssd` (
  `ssd` varchar(15) NOT NULL,
  `ssd_desc` varchar(250) NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=641 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `miur_ssd`
--

LOCK TABLES `miur_ssd` WRITE;
/*!40000 ALTER TABLE `miur_ssd` DISABLE KEYS */;
INSERT INTO `miur_ssd` VALUES ('MAT/01','LOGICA MATEMATICA',1),('MAT/02','ALGEBRA',2),('MAT/03','GEOMETRIA',3),('MAT/04','MATEMATICHE COMPLEMENTARI',4),('MAT/05','ANALISI MATEMATICA',5),('MAT/06','PROBABILITA E STATISTICA MATEMATICA',6),('MAT/07','FISICA MATEMATICA',7),('MAT/08','ANALISI NUMERICA',8),('MAT/09','RICERCA OPERATIVA',9),('INF/01','INFORMATICA',10),('FIS/01','FISICA SPERIMENTALE',11),('FIS/02','FISICA TEORICA, MODELLI E METODI MATEMATICI',12),('FIS/03','FISICA DELLA MATERIA',13),('FIS/04','FISICA NUCLEARE E SUBNUCLEARE',14),('FIS/05','ASTRONOMIA E ASTROFISICA',15),('FIS/06','FISICA PER IL SISTEMA TERRA E IL MEZZO CIRCUMTERRESTRE',16),('FIS/07','FISICA APPLICATA (A BENI CULTURALI, AMBIENTALI, BIOLOGIA E MEDICINA)',17),('FIS/08','DIDATTICA E STORIA DELLA FISICA',18),('CHIM/01','CHIMICA ANALITICA',19),('CHIM/02','CHIMICA FISICA',20),('CHIM/03','CHIMICA GENERALE E INORGANICA',21),('CHIM/04','CHIMICA INDUSTRIALE',22),('CHIM/05','SCIENZA E TECNOLOGIA DEI MATERIALI POLIMERICI',23),('CHIM/06','CHIMICA ORGANICA',24),('CHIM/07','FONDAMENTI CHIMICI DELLE TECNOLOGIE',25),('CHIM/08','CHIMICA FARMACEUTICA',26),('CHIM/09','FARMACEUTICO TECNOLOGICO APPLICATIVO',27),('CHIM/10','CHIMICA DEGLI ALIMENTI',28),('CHIM/11','CHIMICA E BIOTECNOLOGIA DELLE FERMENTAZIONI',29),('CHIM/12','CHIMICA DELL\'AMBIENTE E DEI BENI CULTURALI',30),('GEO/01','PALEONTOLOGIA E PALEOECOLOGIA',31),('GEO/02','GEOLOGIA STRATIGRAFICA E SEDIMENTOLOGICA',32),('GEO/03','GEOLOGIA STRUTTURALE',33),('GEO/04','GEOGRAFIA FISICA E GEOMORFOLOGIA',34),('GEO/05','GEOLOGIA APPLICATA',35),('GEO/06','MINERALOGIA',36),('GEO/07','PETROLOGIA E PETROGRAFIA',37),('GEO/08','GEOCHIMICA E VULCANOLOGIA',38),('GEO/09','GEORISORSE MINERARIE E APPLICAZIONI MINERALOGICO- PETROGRAFICHE PER L\'AMBIENTE ED I BENI CULTURALI',39),('GEO/10','GEOFISICA DELLA TERRA SOLIDA',40),('GEO/11','GEOFISICA APPLICATA',41),('GEO/12','OCEANOGRAFIA E FISICA DELL\'ATMOSFERA',42),('BIO/01','BOTANICA GENERALE',43),('BIO/02','BOTANICA SISTEMATICA',44),('BIO/03','BOTANICA AMBIENTALE E APPLICATA',45),('BIO/04','FISIOLOGIA VEGETALE',46),('BIO/05','ZOOLOGIA',47),('BIO/06','ANATOMIA COMPARATA E CITOLOGIA',48),('BIO/07','ECOLOGIA',49),('BIO/08','ANTROPOLOGIA',50),('BIO/09','FISIOLOGIA',51),('BIO/10','BIOCHIMICA',52),('BIO/11','BIOLOGIA MOLECOLARE',53),('BIO/12','BIOCHIMICA CLINICA E BIOLOGIA MOLECOLARE CLINICA',54),('BIO/13','BIOLOGIA APPLICATA',55),('BIO/14','FARMACOLOGIA',56),('BIO/15','BIOLOGIA FARMACEUTICA',57),('BIO/16','ANATOMIA UMANA',58),('BIO/17','ISTOLOGIA',59),('BIO/18','GENETICA',60),('BIO/19','MICROBIOLOGIA GENERALE',61),('MED/01','STATISTICA MEDICA',62),('MED/02','STORIA DELLA MEDICINA',63),('MED/03','GENETICA MEDICA',64),('MED/04','PATOLOGIA GENERALE',65),('MED/05','PATOLOGIA CLINICA',66),('MED/06','ONCOLOGIA MEDICA',67),('MED/07','MICROBIOLOGIA E MICROBIOLOGIA CLINICA',68),('MED/08','ANATOMIA PATOLOGICA',69),('MED/09','MEDICINA INTERNA',70),('MED/10','MALATTIE DELL\'APPARATO RESPIRATORIO',71),('MED/11','MALATTIE DELL\'APPARATO CARDIOVASCOLARE',72),('MED/12','GASTROENTEROLOGIA',73),('MED/13','ENDOCRINOLOGIA',74),('MED/14','NEFROLOGIA',75),('MED/15','MALATTIE DEL SANGUE',76),('MED/16','REUMATOLOGIA',77),('MED/17','MALATTIE INFETTIVE',78),('MED/18','CHIRURGIA GENERALE',79),('MED/19','CHIRURGIA PLASTICA',80),('MED/20','CHIRURGIA PEDIATRICA E INFANTILE',81),('MED/21','CHIRURGIA TORACICA',82),('MED/22','CHIRURGIA VASCOLARE',83),('MED/23','CHIRURGIA CARDIACA',84),('MED/24','UROLOGIA',85),('MED/25','PSCHIATRIA',86),('MED/26','NEUROLOGIA',87),('MED/27','NEUROCHIRURGIA',88),('MED/28','MALATTIE ODONTOSTOMATOLOGICHE',89),('MED/29','CHIRURGIA MAXILLOFACCIALE',90),('MED/30','MALATTIE APPARATO VISIVO',91),('MED/31','OTORINOLARINGOIATRIA',92),('MED/32','AUDIOLOGIA',93),('MED/33','MALATTIE APPARATO LOCOMOTORE',94),('MED/34','MEDICINA FISICA E RIABILITATIVA',95),('MED/35','MALATTIE CUTANEE E VENEREE',96),('MED/36','DIAGNOSTICA PER IMMAGINI E RADIOTERAPIA',97),('MED/37','NEURORADIOLOGIA',98),('MED/38','PEDIATRIA GENERALE E SPECIALISTICA',99),('MED/39','NEUROPSICHIATRIA INFANTILE',100),('MED/40','GINECOLOGIA E OSTETRICIA',101),('MED/41','ANESTESIOLOGIA',102),('MED/42','IGIENE GENERALE E APPLICATA',103),('MED/43','MEDICINA LEGALE',104),('MED/44','MEDICINA DEL LAVORO',105),('MED/45','SCIENZE INFERMIERISTICHE GENERALI, CLINICHE E PEDIATRICHE',106),('MED/46','SCIENZE TECNICHE DI MEDICINA DI LABORATORIO',107),('MED/47','SCIENZE INFERMIERISTICHE OSTETRICO-GINECOLOGICHE',108),('MED/48','SCIENZE INFERMIERISTICHE E TECNICHE NEURO-PSICHIATRICHE E RIABILITATIVE',109),('MED/49','SCIENZE TECNICHE DIETETICHE APPLICATE',110),('MED/50','SCIENZE TECNICHE MEDICHE APPLICATE',111),('AGR/01','ECONOMIA ED ESTIMO RURALE',112),('AGR/02','AGRONOMIA E COLTIVAZIONI ERBACEE',113),('AGR/03','ARBORICOLTURA GENERALE E COLTIVAZIONI ARBOREE',114),('AGR/04','ORTICOLTURA E FLORICOLTURA',115),('AGR/05','ASSESTAMENTO FORESTALE E SELVICOLTURA',116),('AGR/06','TECNOLOGIA DEL LEGNO E UTILIZZAZIONI FORESTALI',117),('AGR/07','GENETICA AGRARIA',118),('AGR/08','IDRAULICA AGRARIA E SISTEMAZIONI IDRAULICO-FORESTALI',119),('AGR/09','MECCANICA AGRARIA',120),('AGR/10','COSTRUZIONI RURALI E TERRITORIO AGROFORESTALE',121),('AGR/11','ENTOMOLOGIA GENERALE E APPLICATA',122),('AGR/12','PATOLOGIA VEGETALE',123),('AGR/13','CHIMICA AGRARIA',124),('AGR/14','PEDOLOGIA',125),('AGR/15','SCIENZE E TECNOLOGIE ALIMENTARI',126),('AGR/16','MICROBIOLOGIA AGRARIA',127),('AGR/17','ZOOTECNICA GENERALE E MIGLIORAMENTO GENETICO',128),('AGR/18','NUTRIZIONE E ALIMENTAZIONE ANIMALE',129),('AGR/19','ZOOTECNICA SPECIALE',130),('AGR/20','ZOOCOLTURE',131),('VET/01','ANATOMIA DEGLI ANIMALI DOMESTICI',132),('VET/02','FISIOLOGIA VETERINARIA',133),('VET/03','PATOLOGIA GENERALE E ANATOMIA PATOLOGICA VETERINARIA',134),('VET/04','ISPEZIONE DEGLI ALIMENTI DI ORIGINE ANIMALE',135),('VET/05','MALATTIE INFETTIVE DEGLI ANIMALI DOMESTICI',136),('VET/06','PARASSITOLOGIA E MALATTIE PARASSITARIE DEGLI ANIMALI',137),('VET/07','FARMACOLOGIA E TOSSICOLOGIA VETERINARIA',138),('VET/08','CLINICA MEDICA VETERINARIA',139),('VET/09','CLINICA CHIRURGICA VETERINARIA',140),('VET/10','CLINICA OSTETRICA E GINECOLOGIA VETERINARIA',141),('ICAR/01','IDRAULICA',142),('ICAR/02','COSTRUZIONI IDRAULICHE E MARITTIME E IDROLOGIA',143),('ICAR/03','INGEGNERIA SANITARIA-AMBIENTALE',144),('ICAR/04','STRADE, FERROVIE ED AEROPORTI',145),('ICAR/05','TRASPORTI',146),('ICAR/06','TOPOGRAFIA E CARTOGRAFIA',147),('ICAR/07','GEOTECNICA',148),('ICAR/08','SCIENZA DELLE COSTRUZIONI',149),('ICAR/09','TECNICA DELLE COSTRUZIONI',150),('ICAR/10','ARCHITETTURA TECNICA',151),('ICAR/11','PRODUZIONE EDILIZIA',152),('ICAR/12','TECNOLOGIA DELL\'ARCHITETTURA',153),('ICAR/13','DISEGNO INDUSTRIALE',154),('ICAR/14','COMPOSIZIONE ARCHITETTONICA E URBANA',155),('ICAR/15','ARCHITETTURA DEL PAESAGGIO',156),('ICAR/16','ARCHITETTURA DEGLI INTERNI E ALLESTIMENTO',157),('ICAR/17','DISEGNO',158),('ICAR/18','STORIA DELL\'ARCHITETTURA',159),('ICAR/19','RESTAURO',160),('ICAR/20','TECNICA E PIANIFICAZIONE URBANISTICA',161),('ICAR/21','URBANISTICA',162),('ICAR/22','ESTIMO',163),('ING-IND/01','ARCHITETTURA NAVALE',164),('ING-IND/02','COSTRUZIONI E IMPIANTI NAVALI E MARINI',165),('ING-IND/03','MECCANICA DEL VOLO',166),('ING-IND/04','COSTRUZIONI E STRUTTURE AEROSPAZIALI',167),('ING-IND/05','IMPIANTI E SISTEMI AEROSPAZIALI',168),('ING-IND/06','FLUIDODINAMICA',169),('ING-IND/07','PROPULSIONE AEROSPAZIALE',170),('ING-IND/08','MACCHINE A FLUIDO',171),('ING-IND/09','SISTEMI PER L\'ENERGIA E L\'AMBIENTE',172),('ING-IND/10','FISICA TECNICA INDUSTRIALE',173),('ING-IND/11','FISICA TECNICA AMBIENTALE',174),('ING-IND/12','MISURE MECCANICHE E TERMICHE',175),('ING-IND/13','MECCANICA APPLICATA ALLE MACCHINE',176),('ING-IND/14','PROGETTAZIONE MECCANICA E COSTRUZIONE DI MACCHINE',177),('ING-IND/15','DISEGNO E METODI DELL\'INGEGNERIA INDUSTRIALE',178),('ING-IND/16','TECNOLOGIE E SISTEMI DI LAVORAZIONE',179),('ING-IND/17','IMPIANTI INDUSTRIALI MECCANICI',180),('ING-IND/18','FISICA DEI REATTORI NUCLEARI',181),('ING-IND/19','IMPIANTI NUCLEARI',182),('ING-IND/20','MISURE E STRUMENTAZIONE NUCLEARI',183),('ING-IND/21','METALLURGIA',184),('ING-IND/22','SCIENZA E TECNOLOGIA DEI MATERIALI',185),('ING-IND/23','CHIMICA FISICA APPLICATA',186),('ING-IND/24','PRINCIPI DI INGEGNERIA CHIMICA',187),('ING-IND/25','IMPIANTI CHIMICI',188),('ING-IND/26','TEORIA DELLO SVILUPPO DEI PROCESSI CHIMICI',189),('ING-IND/27','CHIMICA INDUSTRIALE E TECNOLOGICA',190),('ING-IND/28','INGEGNERIA E SICUREZZA DEGLI SCAVI',191),('ING-IND/29','INGEGNERIA DELLE MATERIE PRIME',192),('ING-IND/30','IDROCARBURI E FLUIDI DEL SOTTOSUOLO',193),('ING-IND/31','ELETTROTECNICA',194),('ING-IND/32','CONVERTITORI, MACCHINE E AZIONAMENTI ELETTRICI',195),('ING-IND/33','SISTEMI ELETTRICI PER L\'ENERGIA',196),('ING-IND/34','BIOINGEGNERIA INDUSTRIALE',197),('ING-IND/35','INGEGNERIA ECONOMICO-GESTIONALE',198),('ING-INF/01','ELETTRONICA',199),('ING-INF/02','CAMPI ELETTROMAGNETICI',200),('ING-INF/03','TELECOMUNICAZIONI',201),('ING-INF/04','AUTOMATICA',202),('ING-INF/05','SISTEMI DI ELABORAZIONE DELLE INFORMAZIONI',203),('ING-INF/06','BIOINGEGNERIA ELETTRONICA E INFORMATICA',204),('ING-INF/07','MISURE ELETTRICHE E ELETTRONICHE',205),('L-ANT/01','PREISTORIA E PROTOSTORIA',206),('L-ANT/02','STORIA GRECA',207),('L-ANT/03','STORIA ROMANA',208),('L-ANT/04','NUMISMATICA',209),('L-ANT/05','PAPIROLOGIA',210),('L-ANT/06','ETRUSCOLOGIA E ANTICHITA ITALICHE',211),('L-ANT/07','ARCHEOLOGIA CLASSICA',212),('L-ANT/08','ARCHEOLOGIA CRISTIANA E MEDIEVALE',213),('L-ANT/09','TOPOGRAFIA ANTICA',214),('L-ANT/10','METODOLOGIE DELLA RICERCA ARCHEOLOGICA',215),('L-ART/01','STORIA DELL\'ARTE MEDIEVALE',216),('L-ART/02','STORIA DELL\'ARTE MODERNA',217),('L-ART/03','STORIA DELL\'ARTE CONTEMPORANEA',218),('L-ART/04','MUSEOLOGIA E CRITICA ARTISTICA E DEL RESTAURO',219),('L-ART/05','DISCIPLINE DELLO SPETTACOLO',220),('L-ART/06','CINEMA, FOTOGRAFIA E TELEVISIONE',221),('L-ART/07','MUSICOLOGIA E STORIA DELLA MUSICA',222),('L-ART/08','ETNOMUSICOLOGIA',223),('L-FIL-LET/01','CIVILTA EGEE',224),('L-FIL-LET/02','LINGUA E LETTERATURA GRECA',225),('L-FIL-LET/03','FILOLOGIA ITALICA, ILLIRICA, CELTICA',226),('L-FIL-LET/04','LINGUA E LETTERATURA LATINA',227),('L-FIL-LET/05','FILOLOGIA CLASSICA',228),('L-FIL-LET/06','LETTERATURA CRISTIANA ANTICA',229),('L-FIL-LET/07','CIVILTA BIZANTINA',230),('L-FIL-LET/08','LETTERATURA LATINA MEDIEVALE E UMANISTICA',231),('L-FIL-LET/09','FILOLOGIA E LINGUISTICA ROMANZA',232),('L-FIL-LET/10','LETTERATURA ITALIANA',233),('L-FIL-LET/11','LETTERATURA ITALIANA CONTEMPORANEA',234),('L-FIL-LET/12','LINGUISTICA ITALIANA',235),('L-FIL-LET/13','FILOLOGIA DELLA LETTERATURA ITALIANA',236),('L-FIL-LET/14','CRITICA LETTERARIA E LETTERATURE COMPARATE',237),('L-FIL-LET/15','FILOLOGIA GERMANICA',238),('L-LIN/01','GLOTTOLOGIA E LINGUISTICA',239),('L-LIN/02','DIDATTICA DELLE LINGUE MODERNE',240),('L-LIN/03','LETTERATURA FRANCESE',241),('L-LIN/04','LINGUA E TRADUZIONE - LINGUA FRANCESE',242),('L-LIN/05','LETTERATURA SPAGNOLA',243),('L-LIN/06','LINGUA E LETTERATURE ISPANO-AMERICANE',244),('L-LIN/07','LINGUA E TRADUZIONE - LINGUA SPAGNOLA',245),('L-LIN/08','LETTERATURA PORTOGHESE E BRASILIANA',246),('L-LIN/09','LINGUA E TRADUZIONE - LINGUE PORTOGHESE E BRASILIANA',247),('L-LIN/10','LETTERATURA INGLESE',248),('L-LIN/11','LINGUE E LETTERATURE ANGLO-AMERICANE',249),('L-LIN/12','LINGUA E TRADUZIONE - LINGUA INGLESE',250),('L-LIN/13','LETTERATURA TEDESCA',251),('L-LIN/14','LINGUA E TRADUZIONE - LINGUA TEDESCA',252),('L-LIN/15','LINGUE E LETTERATURE NORDICHE',253),('L-LIN/16','LINGUA E LETTERATURA NEDERLANDESE',254),('L-LIN/17','LINGUA E LETTERATURA ROMENA',255),('L-LIN/18','LINGUA E LETTERATURA ALBANESE',256),('L-LIN/19','FILOLOGIA UGRO-FINNICA',257),('L-LIN/20','LINGUA E LETTERATURA NEOGRECA',258),('L-LIN/21','SLAVISTICA',259),('L-OR/01','STORIA DEL VICINO ORIENTE ANTICO',260),('L-OR/02','EGITTOLOGIA E CIVILTA COPTA',261),('L-OR/03','ASSIRIOLOGIA',262),('L-OR/04','ANATOLISTICA',263),('L-OR/05','ARCHEOLOGIA E STORIA DELL\'ARTE DEL VICINO ORIENTE ANTICO',264),('L-OR/06','ARCHEOLOGIA FENICIO-PUNICA',265),('L-OR/07','SEMITISTICA - LINGUE E LETTERATURE DELL\'ETIOPIA',266),('L-OR/08','EBRAICO',267),('L-OR/09','LINGUE E LETTERATURE DELL\'AFRICA',268),('L-OR/10','STORIA DEI PAESI ISLAMICI',269),('L-OR/11','ARCHEOLOGIA E STORIA DELL\'ARTE MUSULMANA',270),('L-OR/12','LINGUA E LETTERATURA ARABA',271),('L-OR/13','ARMENISTICA, CAUCASOLOGIA, MONGOLISTICA E TURCOLOGIA',272),('L-OR/14','FILOLOGIA, RELIGIONI E STORIA DELL\'IRAN',273),('L-OR/15','LINGUA E LETTERATURA PERSIANA',274),('L-OR/16','ARCHEOLOGIA E STORIA DELL\'ARTE DELL\'INDIA E DELL\'ASIA CENTRALE',275),('L-OR/17','FILOSOFIE, RELIGIONI E STORIA DELL\'INDIA E DELL\'ASIA CENTRALE',276),('L-OR/18','INDOLOGIA E TIBETOLOGIA',277),('L-OR/19','LINGUE E LETTERATURE MODERNE DEL SUBCONTINENTE INDIANO',278),('L-OR/20','ARCHEOLOGIA, STORIA DELL\'ARTE E FILOSOFIE DELL\'ASIA ORIENTALE',279),('L-OR/21','LINGUE E LETTERATURE DELLA CINA E DELL\'ASIA SUD-ORIENTALE',280),('L-OR/22','LINGUE E LETTERATURE DEL GIAPPONE E DELLA COREA',281),('L-OR/23','STORIA DELL\'ASIA ORIENTALE E SUD-ORIENTALE',282),('M-STO/01','STORIA MEDIEVALE',283),('M-STO/02','STORIA MODERNA',284),('M-STO/03','STORIA DELL\'EUROPA ORIENTALE',285),('M-STO/04','STORIA CONTEMPORANEA',286),('M-STO/05','STORIA DELLA SCIENZA E DELLE TECNICHE',287),('M-STO/06','STORIA DELLE RELIGIONI',288),('M-STO/07','STORIA DEL CRISTIANESIMO E DELLE CHIESE',289),('M-STO/08','ARCHIVISTICA, BIBLIOGRAFIA E BIBLIOTECONOMIA',290),('M-STO/09','PALEOGRAFIA',291),('M-DEA/01','DISCIPLINE DEMOETNOANTROPOLOGICHE',292),('M-GGR/01','GEOGRAFIA',293),('M-GGR/02','GEOGRAFIA ECONOMICO-POLITICA',294),('M-FIL/01','FILOSOFIA TEORETICA',295),('M-FIL/02','LOGICA E FILOSOFIA DELLA SCIENZA',296),('M-FIL/03','FILOSOFIA MORALE',297),('M-FIL/04','ESTETICA',298),('M-FIL/05','FILOSOFIA E TEORIA DEI LINGUAGGI',299),('M-FIL/06','STORIA DELLA FILOSOFIA',300),('M-FIL/07','STORIA DELLA FILOSOFIA ANTICA',301),('M-FIL/08','STORIA DELLA FILOSOFIA MEDIEVALE',302),('M-PED/01','PEDAGOGIA GENERALE E SOCIALE',303),('M-PED/02','STORIA DELLA PEDAGOGIA',304),('M-PED/03','DIDATTICA E PEDAGOGIA SPECIALE',305),('M-PED/04','PEDAGOGIA SPERIMENTALE',306),('M-PSI/01','PSICOLOGIA GENERALE',307),('M-PSI/02','PSICOBIOLOGIA E PSICOLOGIA FISIOLOGICA',308),('M-PSI/03','PSICOMETRIA',309),('M-PSI/04','PSICOLOGIA DELLO SVILUPPO E PSICOLOGIA DELL\'EDUCAZIONE',310),('M-PSI/05','PSICOLOGIA SOCIALE',311),('M-PSI/06','PSICOLOGIA DEL LAVORO E DELLE ORGANIZZAZIONI',312),('M-PSI/07','PSICOLOGIA DINAMICA',313),('M-PSI/08','PSICOLOGIA CLINICA',314),('M-EDF/01','METODI E DIDATTICHE DELLE ATTIVITA MOTORIE',315),('M-EDF/02','METODI E DIDATTICHE DELLE ATTIVITA SPORTIVE',316),('IUS/01','DIRITTO PRIVATO',317),('IUS/02','DIRITTO PRIVATO COMPARATO',318),('IUS/03','DIRITTO AGRARIO',319),('IUS/04','DIRITTO COMMERCIALE',320),('IUS/05','DIRITTO DELL\'ECONOMIA',321),('IUS/06','DIRITTO DELLA NAVIGAZIONE',322),('IUS/07','DIRITTO DEL LAVORO',323),('IUS/08','DIRITTO COSTITUZIONALE',324),('IUS/09','ISTITUZIONI DI DIRITTO PUBBLICO',325),('IUS/10','DIRITTO AMMINISTRATIVO',326),('IUS/11','DIRITTO CANONICO E DIRITTO ECCLESIASTICO',327),('IUS/12','DIRITTO TRIBUTARIO',328),('IUS/13','DIRITTO INTERNAZIONALE',329),('IUS/14','DIRITTO DELL\'UNIONE EUROPEA',330),('IUS/15','DIRITTO PROCESSUALE CIVILE',331),('IUS/16','DIRITTO PROCESSUALE PENALE',332),('IUS/17','DIRITTO PENALE',333),('IUS/18','DIRITTO ROMANO E DIRITTI DELL\'ANTICHITA',334),('IUS/19','STORIA DEL DIRITTO MEDIEVALE E MODERNO',335),('IUS/20','FILOSOFIA DEL DIRITTO',336),('IUS/21','DIRITTO PUBBLICO COMPARATO',337),('SECS-P/01','ECONOMIA POLITICA',338),('SECS P/02','POLITICA ECONOMICA',339),('SECS-P/03','SCIENZA DELLE FINANZE',340),('SECS-P/04','STORIA DEL PENSIERO ECONOMICO',341),('SECS-P/05','ECONOMETRIA',342),('SECS-P/06','ECONOMIA APPLICATA',343),('SECS-P/07','ECONOMIA AZIENDALE',344),('SECS-P/08','ECONOMIA E GESTIONE DELLE IMPRESE',345),('SECS-P/09','FINANZA AZIENDALE',346),('SECS-P/10','ORGANIZZAZIONE AZIENDALE',347),('SECS-P/11','ECONOMIA DEGLI INTERMEDIARI FINANZIARI',348),('SECS-P/12','STORIA ECONOMICA',349),('SECS-P/13','SCIENZE MERCEOLOGICHE',350),('SECS-S/01','STATISTICA',351),('SECS-S/02','STATISTICA PER LA RICERCA SPERIMENTALE E TECNOLOGICA',352),('SECS-S/03','STATISTICA ECONOMICA',353),('SECS-S/04','DEMOGRAFIA',354),('SECS-S/05','STATISTICA SOCIALE',355),('SECS-S/06','METODI MATEMATICI DELL\'ECONOMIA E DELLE SCIENZE ATTUARIALI E FINANZIARIE',356),('SPS/01','FILOSOFIA POLITICA',357),('SPS/02','STORIA DELLE DOTTRINE POLITICHE',358),('SPS/03','STORIA DELLE ISTITUZIONI POLITICHE',359),('SPS/04','SCIENZA POLITICA',360),('SPS/05','STORIA E ISTITUZIONI DELLE AMERICHE',361),('SPS/06','STORIA DELLE RELAZIONI INTERNAZIONALI',362),('SPS/07','SOCIOLOGIA GENERALE',363),('SPS/08','SOCIOLOGIA DEI PROCESSI CULTURALI E COMUNICATIVI',364),('SPS/09','SOCIOLOGIA DEI PROCESSI ECONOMICI E DEL LAVORO',365),('SPS/10','SOCIOLOGIA DELL\'AMBIENTE E DEL TERRITORIO',366),('SPS/11','SOCIOLOGIA DEI FENOMENI POLITICI',367),('SPS/12','SOCIOLOGIA GIURIDICA, DELLA DEVIANZA E MUTAMENTO SOCIALE',368),('SPS/13','STORIA E ISTITUZIONI DELL\'AFRICA',369),('SPS/14','STORIA E ISTITUZIONI DELL\'ASIA',370);
/*!40000 ALTER TABLE `miur_ssd` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `servizi`
--

LOCK TABLES `servizi` WRITE;
/*!40000 ALTER TABLE `servizi` DISABLE KEYS */;
INSERT INTO `servizi` VALUES (1,'RT-PCR'),(2,'Acquizione di immagini al microscopio in campo chiaro'),(3,'Acquisione di immagini al microscopio a contrasto di fase'),(4,'Western Blotting');
/*!40000 ALTER TABLE `servizi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servizi_supporto`
--

DROP TABLE IF EXISTS `servizi_supporto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servizi_supporto` (
  `id_servizi_supp` int(11) NOT NULL AUTO_INCREMENT,
  `descrizione` varchar(250) NOT NULL,
  PRIMARY KEY (`id_servizi_supp`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servizi_supporto`
--

LOCK TABLES `servizi_supporto` WRITE;
/*!40000 ALTER TABLE `servizi_supporto` DISABLE KEYS */;
INSERT INTO `servizi_supporto` VALUES (1,'Servizi Informatici'),(2,'Laboratorio di Preparazione'),(3,'Servizi Tecnici');
/*!40000 ALTER TABLE `servizi_supporto` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `settore`
--

LOCK TABLES `settore` WRITE;
/*!40000 ALTER TABLE `settore` DISABLE KEYS */;
INSERT INTO `settore` VALUES (1,'Nanomateriali e nanotecnologie per l’ICT','Nanomateriali e nanotecnologie per l’ICT');
/*!40000 ALTER TABLE `settore` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Dumping data for table `strumenti`
--

LOCK TABLES `strumenti` WRITE;
/*!40000 ALTER TABLE `strumenti` DISABLE KEYS */;
INSERT INTO `strumenti` VALUES (1,'termociclatore','Robocycler','GeneAmp PCR system 9700',0),(2,'obiettivo 50x','zeiss','EOS 50x',1),(3,'obiettivo 10x','zeiss','EOS 10x',1);
/*!40000 ALTER TABLE `strumenti` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strumentilab`
--

DROP TABLE IF EXISTS `strumentilab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `strumentilab` (
  `id_strumento` int(11) NOT NULL AUTO_INCREMENT,
  `id_laboratorio` int(11) DEFAULT NULL,
  `tipologia` varchar(250) DEFAULT NULL,
  `marca` varchar(250) DEFAULT NULL,
  `modello` varchar(250) DEFAULT NULL,
  `equipaggiamento` int(1) DEFAULT NULL,
  PRIMARY KEY (`id_strumento`),
  KEY `FK_strumentilab_1` (`id_laboratorio`),
  CONSTRAINT `FK_strumentilab_1` FOREIGN KEY (`id_laboratorio`) REFERENCES `laboratorio` (`id_laboratorio`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strumentilab`
--

LOCK TABLES `strumentilab` WRITE;
/*!40000 ALTER TABLE `strumentilab` DISABLE KEYS */;
/*!40000 ALTER TABLE `strumentilab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipologia_strumenti`
--

DROP TABLE IF EXISTS `tipologia_strumenti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipologia_strumenti` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL DEFAULT '',
  `descrizione` varchar(200) DEFAULT NULL,
  `note` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipologia_strumenti`
--

LOCK TABLES `tipologia_strumenti` WRITE;
/*!40000 ALTER TABLE `tipologia_strumenti` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipologia_strumenti` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `x_area_settore`
--

DROP TABLE IF EXISTS `x_area_settore`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `x_area_settore` (
  `id_area` int(11) NOT NULL,
  `id_settore` int(11) NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `x_area_settore`
--

LOCK TABLES `x_area_settore` WRITE;
/*!40000 ALTER TABLE `x_area_settore` DISABLE KEYS */;
INSERT INTO `x_area_settore` VALUES (4,1,1),(1,1,2);
/*!40000 ALTER TABLE `x_area_settore` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `x_lab_anag`
--

DROP TABLE IF EXISTS `x_lab_anag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `x_lab_anag` (
  `id_laboratorio` int(11) NOT NULL,
  `id_anagrafica` int(11) NOT NULL,
  `tempo` int(3) NOT NULL COMMENT 'Percentuale di tempo ',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `x_lab_anag`
--

LOCK TABLES `x_lab_anag` WRITE;
/*!40000 ALTER TABLE `x_lab_anag` DISABLE KEYS */;
INSERT INTO `x_lab_anag` VALUES (1,10001,80,1);
/*!40000 ALTER TABLE `x_lab_anag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `x_lab_area_miur`
--

DROP TABLE IF EXISTS `x_lab_area_miur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `x_lab_area_miur` (
  `id_laboratorio` int(11) NOT NULL,
  `id_area` int(11) NOT NULL,
  `id_settore` int(11) NOT NULL,
  `miur_area` int(11) NOT NULL,
  `ssd` varchar(15) NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `x_lab_area_miur`
--

LOCK TABLES `x_lab_area_miur` WRITE;
/*!40000 ALTER TABLE `x_lab_area_miur` DISABLE KEYS */;
INSERT INTO `x_lab_area_miur` VALUES (1,4,1,5,'INF/01',1);
/*!40000 ALTER TABLE `x_lab_area_miur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `x_lab_serv_strum`
--

DROP TABLE IF EXISTS `x_lab_serv_strum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `x_lab_serv_strum` (
  `id_laboratorio` int(11) NOT NULL,
  `id_strumento` int(11) NOT NULL,
  `id_servizio` int(11) NOT NULL,
  `tipologia` varchar(200) NOT NULL DEFAULT 'effettuato' COMMENT 'effetrtuato - effettuabile',
  `motivazione` text NOT NULL COMMENT 'motivare perchè il servizio non è attualmente erogato',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `x_lab_serv_strum`
--

LOCK TABLES `x_lab_serv_strum` WRITE;
/*!40000 ALTER TABLE `x_lab_serv_strum` DISABLE KEYS */;
INSERT INTO `x_lab_serv_strum` VALUES (1,1,1,'effettuato','',1),(1,2,1,'effettuato','',2);
/*!40000 ALTER TABLE `x_lab_serv_strum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `x_lab_strum`
--

DROP TABLE IF EXISTS `x_lab_strum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `x_lab_strum` (
  `id_laboratorio` int(11) NOT NULL,
  `id_strumento` int(11) NOT NULL,
  `quantita` int(11) NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `x_lab_strum`
--

LOCK TABLES `x_lab_strum` WRITE;
/*!40000 ALTER TABLE `x_lab_strum` DISABLE KEYS */;
INSERT INTO `x_lab_strum` VALUES (1,1,2,1),(1,2,1,2);
/*!40000 ALTER TABLE `x_lab_strum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `x_lab_strum_equip`
--

DROP TABLE IF EXISTS `x_lab_strum_equip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `x_lab_strum_equip` (
  `id_laboratorio` int(11) NOT NULL,
  `id_strumento` int(11) NOT NULL,
  `id_strumento_equip` int(11) NOT NULL COMMENT 'da prendere sempre da id_strumento',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `x_lab_strum_equip`
--

LOCK TABLES `x_lab_strum_equip` WRITE;
/*!40000 ALTER TABLE `x_lab_strum_equip` DISABLE KEYS */;
INSERT INTO `x_lab_strum_equip` VALUES (1,1,2,1),(1,1,3,2);
/*!40000 ALTER TABLE `x_lab_strum_equip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `x_lab_strum_futuri`
--

DROP TABLE IF EXISTS `x_lab_strum_futuri`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `x_lab_strum_futuri` (
  `id_laboratorio` int(11) NOT NULL,
  `tipologia` varchar(250) NOT NULL COMMENT 'Preso dalla tipologia strumenti',
  `quantita` int(11) NOT NULL,
  `finalita` enum('Parti necessarie per la manutenzione, il completamento funzionale e il riavvio delle strumentazioni da inserire nella rete','Apparecchiature di integrazione funzionale (di diversificazione e ampliamento funzionale delle potenzialità e delle prestazioni delle macchine inserite in rete)','Apparecchiature di ampliamento delle prestazioni della filiera','Altro') NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `x_lab_strum_futuri`
--

LOCK TABLES `x_lab_strum_futuri` WRITE;
/*!40000 ALTER TABLE `x_lab_strum_futuri` DISABLE KEYS */;
INSERT INTO `x_lab_strum_futuri` VALUES (1,'obiettivo 50x',2,'Parti necessarie per la manutenzione, il completamento funzionale e il riavvio delle strumentazioni da inserire nella rete',1);
/*!40000 ALTER TABLE `x_lab_strum_futuri` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `x_lab_supp`
--

DROP TABLE IF EXISTS `x_lab_supp`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `x_lab_supp` (
  `id_laboratorio` int(11) NOT NULL,
  `id_servizi_supporto` int(11) NOT NULL,
  `descrizione` varchar(250) NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `x_lab_supp`
--

LOCK TABLES `x_lab_supp` WRITE;
/*!40000 ALTER TABLE `x_lab_supp` DISABLE KEYS */;
INSERT INTO `x_lab_supp` VALUES (1,1,'2',1);
/*!40000 ALTER TABLE `x_lab_supp` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `x_lab_utilizzatori`
--

DROP TABLE IF EXISTS `x_lab_utilizzatori`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `x_lab_utilizzatori` (
  `id_laboratorio` int(11) NOT NULL,
  `professori` int(11) NOT NULL,
  `ricercatori` int(11) NOT NULL COMMENT 'Percentuale di tempo ',
  `tecnici` int(11) NOT NULL,
  `assegnisti` int(11) NOT NULL,
  `borsisti` int(11) NOT NULL,
  `laureandi` int(11) NOT NULL,
  `studenti` int(11) NOT NULL,
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `x_lab_utilizzatori`
--

LOCK TABLES `x_lab_utilizzatori` WRITE;
/*!40000 ALTER TABLE `x_lab_utilizzatori` DISABLE KEYS */;
INSERT INTO `x_lab_utilizzatori` VALUES (1,1,2,1,2,0,1,6,1);
/*!40000 ALTER TABLE `x_lab_utilizzatori` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-02-06 14:52:01
