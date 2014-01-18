-- phpMyAdmin SQL Dump
-- version 3.4.9
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generato il: Gen 13, 2014 alle 12:07
-- Versione del server: 5.5.20
-- Versione PHP: 5.3.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `innovare`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `anagrafica`
--

CREATE TABLE IF NOT EXISTS `anagrafica` (
  `id_anagrafica` varchar(11) NOT NULL,
  `cognome` varchar(250) NOT NULL,
  `nome` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `telefono1` varchar(250) DEFAULT NULL,
  `telefono2` varchar(250) DEFAULT NULL,
  `qualifica` varchar(250) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `anagrafica`
--

INSERT INTO `anagrafica` (`id_anagrafica`, `cognome`, `nome`, `email`, `telefono1`, `telefono2`, `qualifica`) VALUES
('10001', 'Rossi', 'Giulio', 'grossu@unica.it', '0706755022', '0706755023', 'Tecnico di laboratorio');

-- --------------------------------------------------------

--
-- Struttura della tabella `area`
--

CREATE TABLE IF NOT EXISTS `area` (
  `id_area` int(11) NOT NULL AUTO_INCREMENT,
  `area` varchar(250) NOT NULL,
  `area_tresto` text NOT NULL,
  PRIMARY KEY (`id_area`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dump dei dati per la tabella `area`
--

INSERT INTO `area` (`id_area`, `area`, `area_tresto`) VALUES
(1, 'Materiali', 'Area 1. Caratterizzazoione dei materiali e dei manufatti\r\n'),
(3, 'Energia Ambiente', 'Area 3. Innovazioneedefficienzaenergeticaincampoindustriale e civile\r\nArea 4. Salvaguardia del paesaggio naturale ed antropicoe dei beni culturali\r\nArea 5. Salvaguardia e riqualificazioneambientale(l\r\nArea 6. Sensoristica innovativa perl’energia, l’ambiente e la qualità della vita'),
(4, 'ICT', 'Area 4 . ICT');

-- --------------------------------------------------------

--
-- Struttura della tabella `laboratorio`
--

CREATE TABLE IF NOT EXISTS `laboratorio` (
  `id_laboratorio` int(11) NOT NULL AUTO_INCREMENT,
  `id_settore` int(11) NOT NULL,
  `nome` varchar(250) NOT NULL,
  `centro` varchar(2) DEFAULT NULL COMMENT 'CA-UniCA SS-Sassari SR-Sardegna Ricerche',
  `afferenza` varchar(250) DEFAULT NULL COMMENT 'CeSAR - Polilab - Altro',
  `facolta` varchar(250) DEFAULT NULL,
  `dipartimento` varchar(250) DEFAULT NULL,
  `sezione` varchar(250) DEFAULT NULL,
  `sede` varchar(250) DEFAULT NULL,
  `sede_citta` varchar(250) DEFAULT NULL,
  `gps_lat` decimal(10,7) DEFAULT NULL,
  `gps_lng` decimal(10,7) NOT NULL,
  `ubicazione` varchar(250) DEFAULT NULL COMMENT 'ubicazione precisa della stanza',
  `descrizione` text COMMENT 'breve descrizione discorsiva con rif. alle att. svolte ',
  `telefono` varchar(250) NOT NULL,
  `web` varchar(250) NOT NULL,
  `info` text NOT NULL,
  `responsabile` int(11) NOT NULL COMMENT 'id_anagrafica',
  `referente` int(11) NOT NULL COMMENT 'id_anagrafica',
  `attivita_esterna` int(1) NOT NULL,
  `attivita_esterna_tipol` varchar(250) NOT NULL,
  `regolam_accesso` int(1) NOT NULL,
  `regolam_accesso_atti` varchar(250) NOT NULL,
  PRIMARY KEY (`id_laboratorio`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dump dei dati per la tabella `laboratorio`
--

INSERT INTO `laboratorio` (`id_laboratorio`, `id_settore`, `nome`, `centro`, `afferenza`, `facolta`, `dipartimento`, `sezione`, `sede`, `sede_citta`, `gps_lat`, `gps_lng`, `ubicazione`, `descrizione`, `telefono`, `web`, `info`, `responsabile`, `referente`, `attivita_esterna`, `attivita_esterna_tipol`, `regolam_accesso`, `regolam_accesso_atti`) VALUES
(1, 0, 'Lab. Neurobiologia', 'CA', 'CeSAR', 'Facoltà di Biologia e Farmacia', 'Scienze', 'Citomorfologia', 'Cittadella Universitaria', 'Monserrato', NULL, '0.0000000', NULL, NULL, '', '', 'X X| X.X@unica.it - Y Y| X.X@unica.it', 10001, 0, 0, '', 0, '');

-- --------------------------------------------------------

--
-- Struttura della tabella `laboratorio_foto`
--

CREATE TABLE IF NOT EXISTS `laboratorio_foto` (
  `id_laboratorio` int(11) NOT NULL,
  `nomefile` varchar(250) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `laboratorio_foto`
--

INSERT INTO `laboratorio_foto` (`id_laboratorio`, `nomefile`) VALUES
(1, 'foto1.jpg'),
(1, 'foto2.jpg');

-- --------------------------------------------------------

--
-- Struttura della tabella `miur_area`
--

CREATE TABLE IF NOT EXISTS `miur_area` (
  `miur_area` int(11) NOT NULL,
  `miur_area_desc` varchar(250) NOT NULL,
  PRIMARY KEY (`miur_area`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `miur_area`
--

INSERT INTO `miur_area` (`miur_area`, `miur_area_desc`) VALUES
(1, 'Area 01 - Scienze matematiche e informatiche'),
(2, 'Area 02 - Scienze fisiche'),
(3, 'Area 03 - Scienze chimiche'),
(4, 'Area 04 - Scienze della terra'),
(5, 'Area 05 - Scienze biologiche'),
(6, 'Area 06 - Scienze mediche'),
(7, 'Area 07 - Scienze agrarie e veterinarie'),
(8, 'Area 08 - Ingegneria civile e Architettura'),
(9, 'Area 09 - Ingegneria industriale e dell''informazione'),
(10, 'Area 10 - Scienze dell''antichità, filologico-letterarie e storico-artistiche'),
(11, 'Area 11 - Scienze storiche, filosofiche, pedagogiche e psicologiche'),
(12, 'Area 12 - Scienze giuridiche'),
(13, 'Area 13 - Scienze economiche e statistiche'),
(14, 'Area 14 - Scienze politiche e sociali');

-- --------------------------------------------------------

--
-- Struttura della tabella `miur_ssd`
--

CREATE TABLE IF NOT EXISTS `miur_ssd` (
  `ssd` varchar(15) NOT NULL,
  `ssd_desc` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `miur_ssd`
--

INSERT INTO `miur_ssd` (`ssd`, `ssd_desc`) VALUES
('MAT/01', 'LOGICA MATEMATICA'),
('MAT/02', 'ALGEBRA'),
('MAT/03', 'GEOMETRIA'),
('MAT/04', 'MATEMATICHE COMPLEMENTARI'),
('MAT/05', 'ANALISI MATEMATICA'),
('MAT/06', 'PROBABILITA E STATISTICA MATEMATICA'),
('MAT/07', 'FISICA MATEMATICA'),
('MAT/08', 'ANALISI NUMERICA'),
('MAT/09', 'RICERCA OPERATIVA'),
('INF/01', 'INFORMATICA'),
('FIS/01', 'FISICA SPERIMENTALE'),
('FIS/02', 'FISICA TEORICA, MODELLI E METODI MATEMATICI'),
('FIS/03', 'FISICA DELLA MATERIA'),
('FIS/04', 'FISICA NUCLEARE E SUBNUCLEARE'),
('FIS/05', 'ASTRONOMIA E ASTROFISICA'),
('FIS/06', 'FISICA PER IL SISTEMA TERRA E IL MEZZO CIRCUMTERRESTRE'),
('FIS/07', 'FISICA APPLICATA (A BENI CULTURALI, AMBIENTALI, BIOLOGIA E MEDICINA)'),
('FIS/08', 'DIDATTICA E STORIA DELLA FISICA'),
('CHIM/01', 'CHIMICA ANALITICA'),
('CHIM/02', 'CHIMICA FISICA'),
('CHIM/03', 'CHIMICA GENERALE E INORGANICA'),
('CHIM/04', 'CHIMICA INDUSTRIALE'),
('CHIM/05', 'SCIENZA E TECNOLOGIA DEI MATERIALI POLIMERICI'),
('CHIM/06', 'CHIMICA ORGANICA'),
('CHIM/07', 'FONDAMENTI CHIMICI DELLE TECNOLOGIE'),
('CHIM/08', 'CHIMICA FARMACEUTICA'),
('CHIM/09', 'FARMACEUTICO TECNOLOGICO APPLICATIVO'),
('CHIM/10', 'CHIMICA DEGLI ALIMENTI'),
('CHIM/11', 'CHIMICA E BIOTECNOLOGIA DELLE FERMENTAZIONI'),
('CHIM/12', 'CHIMICA DELL''AMBIENTE E DEI BENI CULTURALI'),
('GEO/01', 'PALEONTOLOGIA E PALEOECOLOGIA'),
('GEO/02', 'GEOLOGIA STRATIGRAFICA E SEDIMENTOLOGICA'),
('GEO/03', 'GEOLOGIA STRUTTURALE'),
('GEO/04', 'GEOGRAFIA FISICA E GEOMORFOLOGIA'),
('GEO/05', 'GEOLOGIA APPLICATA'),
('GEO/06', 'MINERALOGIA'),
('GEO/07', 'PETROLOGIA E PETROGRAFIA'),
('GEO/08', 'GEOCHIMICA E VULCANOLOGIA'),
('GEO/09', 'GEORISORSE MINERARIE E APPLICAZIONI MINERALOGICO- PETROGRAFICHE PER L''AMBIENTE ED I BENI CULTURALI'),
('GEO/10', 'GEOFISICA DELLA TERRA SOLIDA'),
('GEO/11', 'GEOFISICA APPLICATA'),
('GEO/12', 'OCEANOGRAFIA E FISICA DELL''ATMOSFERA'),
('BIO/01', 'BOTANICA GENERALE'),
('BIO/02', 'BOTANICA SISTEMATICA'),
('BIO/03', 'BOTANICA AMBIENTALE E APPLICATA'),
('BIO/04', 'FISIOLOGIA VEGETALE'),
('BIO/05', 'ZOOLOGIA'),
('BIO/06', 'ANATOMIA COMPARATA E CITOLOGIA'),
('BIO/07', 'ECOLOGIA'),
('BIO/08', 'ANTROPOLOGIA'),
('BIO/09', 'FISIOLOGIA'),
('BIO/10', 'BIOCHIMICA'),
('BIO/11', 'BIOLOGIA MOLECOLARE'),
('BIO/12', 'BIOCHIMICA CLINICA E BIOLOGIA MOLECOLARE CLINICA'),
('BIO/13', 'BIOLOGIA APPLICATA'),
('BIO/14', 'FARMACOLOGIA'),
('BIO/15', 'BIOLOGIA FARMACEUTICA'),
('BIO/16', 'ANATOMIA UMANA'),
('BIO/17', 'ISTOLOGIA'),
('BIO/18', 'GENETICA'),
('BIO/19', 'MICROBIOLOGIA GENERALE'),
('MED/01', 'STATISTICA MEDICA'),
('MED/02', 'STORIA DELLA MEDICINA'),
('MED/03', 'GENETICA MEDICA'),
('MED/04', 'PATOLOGIA GENERALE'),
('MED/05', 'PATOLOGIA CLINICA'),
('MED/06', 'ONCOLOGIA MEDICA'),
('MED/07', 'MICROBIOLOGIA E MICROBIOLOGIA CLINICA'),
('MED/08', 'ANATOMIA PATOLOGICA'),
('MED/09', 'MEDICINA INTERNA'),
('MED/10', 'MALATTIE DELL''APPARATO RESPIRATORIO'),
('MED/11', 'MALATTIE DELL''APPARATO CARDIOVASCOLARE'),
('MED/12', 'GASTROENTEROLOGIA'),
('MED/13', 'ENDOCRINOLOGIA'),
('MED/14', 'NEFROLOGIA'),
('MED/15', 'MALATTIE DEL SANGUE'),
('MED/16', 'REUMATOLOGIA'),
('MED/17', 'MALATTIE INFETTIVE'),
('MED/18', 'CHIRURGIA GENERALE'),
('MED/19', 'CHIRURGIA PLASTICA'),
('MED/20', 'CHIRURGIA PEDIATRICA E INFANTILE'),
('MED/21', 'CHIRURGIA TORACICA'),
('MED/22', 'CHIRURGIA VASCOLARE'),
('MED/23', 'CHIRURGIA CARDIACA'),
('MED/24', 'UROLOGIA'),
('MED/25', 'PSCHIATRIA'),
('MED/26', 'NEUROLOGIA'),
('MED/27', 'NEUROCHIRURGIA'),
('MED/28', 'MALATTIE ODONTOSTOMATOLOGICHE'),
('MED/29', 'CHIRURGIA MAXILLOFACCIALE'),
('MED/30', 'MALATTIE APPARATO VISIVO'),
('MED/31', 'OTORINOLARINGOIATRIA'),
('MED/32', 'AUDIOLOGIA'),
('MED/33', 'MALATTIE APPARATO LOCOMOTORE'),
('MED/34', 'MEDICINA FISICA E RIABILITATIVA'),
('MED/35', 'MALATTIE CUTANEE E VENEREE'),
('MED/36', 'DIAGNOSTICA PER IMMAGINI E RADIOTERAPIA'),
('MED/37', 'NEURORADIOLOGIA'),
('MED/38', 'PEDIATRIA GENERALE E SPECIALISTICA'),
('MED/39', 'NEUROPSICHIATRIA INFANTILE'),
('MED/40', 'GINECOLOGIA E OSTETRICIA'),
('MED/41', 'ANESTESIOLOGIA'),
('MED/42', 'IGIENE GENERALE E APPLICATA'),
('MED/43', 'MEDICINA LEGALE'),
('MED/44', 'MEDICINA DEL LAVORO'),
('MED/45', 'SCIENZE INFERMIERISTICHE GENERALI, CLINICHE E PEDIATRICHE'),
('MED/46', 'SCIENZE TECNICHE DI MEDICINA DI LABORATORIO'),
('MED/47', 'SCIENZE INFERMIERISTICHE OSTETRICO-GINECOLOGICHE'),
('MED/48', 'SCIENZE INFERMIERISTICHE E TECNICHE NEURO-PSICHIATRICHE E RIABILITATIVE'),
('MED/49', 'SCIENZE TECNICHE DIETETICHE APPLICATE'),
('MED/50', 'SCIENZE TECNICHE MEDICHE APPLICATE'),
('AGR/01', 'ECONOMIA ED ESTIMO RURALE'),
('AGR/02', 'AGRONOMIA E COLTIVAZIONI ERBACEE'),
('AGR/03', 'ARBORICOLTURA GENERALE E COLTIVAZIONI ARBOREE'),
('AGR/04', 'ORTICOLTURA E FLORICOLTURA'),
('AGR/05', 'ASSESTAMENTO FORESTALE E SELVICOLTURA'),
('AGR/06', 'TECNOLOGIA DEL LEGNO E UTILIZZAZIONI FORESTALI'),
('AGR/07', 'GENETICA AGRARIA'),
('AGR/08', 'IDRAULICA AGRARIA E SISTEMAZIONI IDRAULICO-FORESTALI'),
('AGR/09', 'MECCANICA AGRARIA'),
('AGR/10', 'COSTRUZIONI RURALI E TERRITORIO AGROFORESTALE'),
('AGR/11', 'ENTOMOLOGIA GENERALE E APPLICATA'),
('AGR/12', 'PATOLOGIA VEGETALE'),
('AGR/13', 'CHIMICA AGRARIA'),
('AGR/14', 'PEDOLOGIA'),
('AGR/15', 'SCIENZE E TECNOLOGIE ALIMENTARI'),
('AGR/16', 'MICROBIOLOGIA AGRARIA'),
('AGR/17', 'ZOOTECNICA GENERALE E MIGLIORAMENTO GENETICO'),
('AGR/18', 'NUTRIZIONE E ALIMENTAZIONE ANIMALE'),
('AGR/19', 'ZOOTECNICA SPECIALE'),
('AGR/20', 'ZOOCOLTURE'),
('VET/01', 'ANATOMIA DEGLI ANIMALI DOMESTICI'),
('VET/02', 'FISIOLOGIA VETERINARIA'),
('VET/03', 'PATOLOGIA GENERALE E ANATOMIA PATOLOGICA VETERINARIA'),
('VET/04', 'ISPEZIONE DEGLI ALIMENTI DI ORIGINE ANIMALE'),
('VET/05', 'MALATTIE INFETTIVE DEGLI ANIMALI DOMESTICI'),
('VET/06', 'PARASSITOLOGIA E MALATTIE PARASSITARIE DEGLI ANIMALI'),
('VET/07', 'FARMACOLOGIA E TOSSICOLOGIA VETERINARIA'),
('VET/08', 'CLINICA MEDICA VETERINARIA'),
('VET/09', 'CLINICA CHIRURGICA VETERINARIA'),
('VET/10', 'CLINICA OSTETRICA E GINECOLOGIA VETERINARIA'),
('ICAR/01', 'IDRAULICA'),
('ICAR/02', 'COSTRUZIONI IDRAULICHE E MARITTIME E IDROLOGIA'),
('ICAR/03', 'INGEGNERIA SANITARIA-AMBIENTALE'),
('ICAR/04', 'STRADE, FERROVIE ED AEROPORTI'),
('ICAR/05', 'TRASPORTI'),
('ICAR/06', 'TOPOGRAFIA E CARTOGRAFIA'),
('ICAR/07', 'GEOTECNICA'),
('ICAR/08', 'SCIENZA DELLE COSTRUZIONI'),
('ICAR/09', 'TECNICA DELLE COSTRUZIONI'),
('ICAR/10', 'ARCHITETTURA TECNICA'),
('ICAR/11', 'PRODUZIONE EDILIZIA'),
('ICAR/12', 'TECNOLOGIA DELL''ARCHITETTURA'),
('ICAR/13', 'DISEGNO INDUSTRIALE'),
('ICAR/14', 'COMPOSIZIONE ARCHITETTONICA E URBANA'),
('ICAR/15', 'ARCHITETTURA DEL PAESAGGIO'),
('ICAR/16', 'ARCHITETTURA DEGLI INTERNI E ALLESTIMENTO'),
('ICAR/17', 'DISEGNO'),
('ICAR/18', 'STORIA DELL''ARCHITETTURA'),
('ICAR/19', 'RESTAURO'),
('ICAR/20', 'TECNICA E PIANIFICAZIONE URBANISTICA'),
('ICAR/21', 'URBANISTICA'),
('ICAR/22', 'ESTIMO'),
('ING-IND/01', 'ARCHITETTURA NAVALE'),
('ING-IND/02', 'COSTRUZIONI E IMPIANTI NAVALI E MARINI'),
('ING-IND/03', 'MECCANICA DEL VOLO'),
('ING-IND/04', 'COSTRUZIONI E STRUTTURE AEROSPAZIALI'),
('ING-IND/05', 'IMPIANTI E SISTEMI AEROSPAZIALI'),
('ING-IND/06', 'FLUIDODINAMICA'),
('ING-IND/07', 'PROPULSIONE AEROSPAZIALE'),
('ING-IND/08', 'MACCHINE A FLUIDO'),
('ING-IND/09', 'SISTEMI PER L''ENERGIA E L''AMBIENTE'),
('ING-IND/10', 'FISICA TECNICA INDUSTRIALE'),
('ING-IND/11', 'FISICA TECNICA AMBIENTALE'),
('ING-IND/12', 'MISURE MECCANICHE E TERMICHE'),
('ING-IND/13', 'MECCANICA APPLICATA ALLE MACCHINE'),
('ING-IND/14', 'PROGETTAZIONE MECCANICA E COSTRUZIONE DI MACCHINE'),
('ING-IND/15', 'DISEGNO E METODI DELL''INGEGNERIA INDUSTRIALE'),
('ING-IND/16', 'TECNOLOGIE E SISTEMI DI LAVORAZIONE'),
('ING-IND/17', 'IMPIANTI INDUSTRIALI MECCANICI'),
('ING-IND/18', 'FISICA DEI REATTORI NUCLEARI'),
('ING-IND/19', 'IMPIANTI NUCLEARI'),
('ING-IND/20', 'MISURE E STRUMENTAZIONE NUCLEARI'),
('ING-IND/21', 'METALLURGIA'),
('ING-IND/22', 'SCIENZA E TECNOLOGIA DEI MATERIALI'),
('ING-IND/23', 'CHIMICA FISICA APPLICATA'),
('ING-IND/24', 'PRINCIPI DI INGEGNERIA CHIMICA'),
('ING-IND/25', 'IMPIANTI CHIMICI'),
('ING-IND/26', 'TEORIA DELLO SVILUPPO DEI PROCESSI CHIMICI'),
('ING-IND/27', 'CHIMICA INDUSTRIALE E TECNOLOGICA'),
('ING-IND/28', 'INGEGNERIA E SICUREZZA DEGLI SCAVI'),
('ING-IND/29', 'INGEGNERIA DELLE MATERIE PRIME'),
('ING-IND/30', 'IDROCARBURI E FLUIDI DEL SOTTOSUOLO'),
('ING-IND/31', 'ELETTROTECNICA'),
('ING-IND/32', 'CONVERTITORI, MACCHINE E AZIONAMENTI ELETTRICI'),
('ING-IND/33', 'SISTEMI ELETTRICI PER L''ENERGIA'),
('ING-IND/34', 'BIOINGEGNERIA INDUSTRIALE'),
('ING-IND/35', 'INGEGNERIA ECONOMICO-GESTIONALE'),
('ING-INF/01', 'ELETTRONICA'),
('ING-INF/02', 'CAMPI ELETTROMAGNETICI'),
('ING-INF/03', 'TELECOMUNICAZIONI'),
('ING-INF/04', 'AUTOMATICA'),
('ING-INF/05', 'SISTEMI DI ELABORAZIONE DELLE INFORMAZIONI'),
('ING-INF/06', 'BIOINGEGNERIA ELETTRONICA E INFORMATICA'),
('ING-INF/07', 'MISURE ELETTRICHE E ELETTRONICHE'),
('L-ANT/01', 'PREISTORIA E PROTOSTORIA'),
('L-ANT/02', 'STORIA GRECA'),
('L-ANT/03', 'STORIA ROMANA'),
('L-ANT/04', 'NUMISMATICA'),
('L-ANT/05', 'PAPIROLOGIA'),
('L-ANT/06', 'ETRUSCOLOGIA E ANTICHITA ITALICHE'),
('L-ANT/07', 'ARCHEOLOGIA CLASSICA'),
('L-ANT/08', 'ARCHEOLOGIA CRISTIANA E MEDIEVALE'),
('L-ANT/09', 'TOPOGRAFIA ANTICA'),
('L-ANT/10', 'METODOLOGIE DELLA RICERCA ARCHEOLOGICA'),
('L-ART/01', 'STORIA DELL''ARTE MEDIEVALE'),
('L-ART/02', 'STORIA DELL''ARTE MODERNA'),
('L-ART/03', 'STORIA DELL''ARTE CONTEMPORANEA'),
('L-ART/04', 'MUSEOLOGIA E CRITICA ARTISTICA E DEL RESTAURO'),
('L-ART/05', 'DISCIPLINE DELLO SPETTACOLO'),
('L-ART/06', 'CINEMA, FOTOGRAFIA E TELEVISIONE'),
('L-ART/07', 'MUSICOLOGIA E STORIA DELLA MUSICA'),
('L-ART/08', 'ETNOMUSICOLOGIA'),
('L-FIL-LET/01', 'CIVILTA EGEE'),
('L-FIL-LET/02', 'LINGUA E LETTERATURA GRECA'),
('L-FIL-LET/03', 'FILOLOGIA ITALICA, ILLIRICA, CELTICA'),
('L-FIL-LET/04', 'LINGUA E LETTERATURA LATINA'),
('L-FIL-LET/05', 'FILOLOGIA CLASSICA'),
('L-FIL-LET/06', 'LETTERATURA CRISTIANA ANTICA'),
('L-FIL-LET/07', 'CIVILTA BIZANTINA'),
('L-FIL-LET/08', 'LETTERATURA LATINA MEDIEVALE E UMANISTICA'),
('L-FIL-LET/09', 'FILOLOGIA E LINGUISTICA ROMANZA'),
('L-FIL-LET/10', 'LETTERATURA ITALIANA'),
('L-FIL-LET/11', 'LETTERATURA ITALIANA CONTEMPORANEA'),
('L-FIL-LET/12', 'LINGUISTICA ITALIANA'),
('L-FIL-LET/13', 'FILOLOGIA DELLA LETTERATURA ITALIANA'),
('L-FIL-LET/14', 'CRITICA LETTERARIA E LETTERATURE COMPARATE'),
('L-FIL-LET/15', 'FILOLOGIA GERMANICA'),
('L-LIN/01', 'GLOTTOLOGIA E LINGUISTICA'),
('L-LIN/02', 'DIDATTICA DELLE LINGUE MODERNE'),
('L-LIN/03', 'LETTERATURA FRANCESE'),
('L-LIN/04', 'LINGUA E TRADUZIONE - LINGUA FRANCESE'),
('L-LIN/05', 'LETTERATURA SPAGNOLA'),
('L-LIN/06', 'LINGUA E LETTERATURE ISPANO-AMERICANE'),
('L-LIN/07', 'LINGUA E TRADUZIONE - LINGUA SPAGNOLA'),
('L-LIN/08', 'LETTERATURA PORTOGHESE E BRASILIANA'),
('L-LIN/09', 'LINGUA E TRADUZIONE - LINGUE PORTOGHESE E BRASILIANA'),
('L-LIN/10', 'LETTERATURA INGLESE'),
('L-LIN/11', 'LINGUE E LETTERATURE ANGLO-AMERICANE'),
('L-LIN/12', 'LINGUA E TRADUZIONE - LINGUA INGLESE'),
('L-LIN/13', 'LETTERATURA TEDESCA'),
('L-LIN/14', 'LINGUA E TRADUZIONE - LINGUA TEDESCA'),
('L-LIN/15', 'LINGUE E LETTERATURE NORDICHE'),
('L-LIN/16', 'LINGUA E LETTERATURA NEDERLANDESE'),
('L-LIN/17', 'LINGUA E LETTERATURA ROMENA'),
('L-LIN/18', 'LINGUA E LETTERATURA ALBANESE'),
('L-LIN/19', 'FILOLOGIA UGRO-FINNICA'),
('L-LIN/20', 'LINGUA E LETTERATURA NEOGRECA'),
('L-LIN/21', 'SLAVISTICA'),
('L-OR/01', 'STORIA DEL VICINO ORIENTE ANTICO'),
('L-OR/02', 'EGITTOLOGIA E CIVILTA COPTA'),
('L-OR/03', 'ASSIRIOLOGIA'),
('L-OR/04', 'ANATOLISTICA'),
('L-OR/05', 'ARCHEOLOGIA E STORIA DELL''ARTE DEL VICINO ORIENTE ANTICO'),
('L-OR/06', 'ARCHEOLOGIA FENICIO-PUNICA'),
('L-OR/07', 'SEMITISTICA - LINGUE E LETTERATURE DELL''ETIOPIA'),
('L-OR/08', 'EBRAICO'),
('L-OR/09', 'LINGUE E LETTERATURE DELL''AFRICA'),
('L-OR/10', 'STORIA DEI PAESI ISLAMICI'),
('L-OR/11', 'ARCHEOLOGIA E STORIA DELL''ARTE MUSULMANA'),
('L-OR/12', 'LINGUA E LETTERATURA ARABA'),
('L-OR/13', 'ARMENISTICA, CAUCASOLOGIA, MONGOLISTICA E TURCOLOGIA'),
('L-OR/14', 'FILOLOGIA, RELIGIONI E STORIA DELL''IRAN'),
('L-OR/15', 'LINGUA E LETTERATURA PERSIANA'),
('L-OR/16', 'ARCHEOLOGIA E STORIA DELL''ARTE DELL''INDIA E DELL''ASIA CENTRALE'),
('L-OR/17', 'FILOSOFIE, RELIGIONI E STORIA DELL''INDIA E DELL''ASIA CENTRALE'),
('L-OR/18', 'INDOLOGIA E TIBETOLOGIA'),
('L-OR/19', 'LINGUE E LETTERATURE MODERNE DEL SUBCONTINENTE INDIANO'),
('L-OR/20', 'ARCHEOLOGIA, STORIA DELL''ARTE E FILOSOFIE DELL''ASIA ORIENTALE'),
('L-OR/21', 'LINGUE E LETTERATURE DELLA CINA E DELL''ASIA SUD-ORIENTALE'),
('L-OR/22', 'LINGUE E LETTERATURE DEL GIAPPONE E DELLA COREA'),
('L-OR/23', 'STORIA DELL''ASIA ORIENTALE E SUD-ORIENTALE'),
('M-STO/01', 'STORIA MEDIEVALE'),
('M-STO/02', 'STORIA MODERNA'),
('M-STO/03', 'STORIA DELL''EUROPA ORIENTALE'),
('M-STO/04', 'STORIA CONTEMPORANEA'),
('M-STO/05', 'STORIA DELLA SCIENZA E DELLE TECNICHE'),
('M-STO/06', 'STORIA DELLE RELIGIONI'),
('M-STO/07', 'STORIA DEL CRISTIANESIMO E DELLE CHIESE'),
('M-STO/08', 'ARCHIVISTICA, BIBLIOGRAFIA E BIBLIOTECONOMIA'),
('M-STO/09', 'PALEOGRAFIA'),
('M-DEA/01', 'DISCIPLINE DEMOETNOANTROPOLOGICHE'),
('M-GGR/01', 'GEOGRAFIA'),
('M-GGR/02', 'GEOGRAFIA ECONOMICO-POLITICA'),
('M-FIL/01', 'FILOSOFIA TEORETICA'),
('M-FIL/02', 'LOGICA E FILOSOFIA DELLA SCIENZA'),
('M-FIL/03', 'FILOSOFIA MORALE'),
('M-FIL/04', 'ESTETICA'),
('M-FIL/05', 'FILOSOFIA E TEORIA DEI LINGUAGGI'),
('M-FIL/06', 'STORIA DELLA FILOSOFIA'),
('M-FIL/07', 'STORIA DELLA FILOSOFIA ANTICA'),
('M-FIL/08', 'STORIA DELLA FILOSOFIA MEDIEVALE'),
('M-PED/01', 'PEDAGOGIA GENERALE E SOCIALE'),
('M-PED/02', 'STORIA DELLA PEDAGOGIA'),
('M-PED/03', 'DIDATTICA E PEDAGOGIA SPECIALE'),
('M-PED/04', 'PEDAGOGIA SPERIMENTALE'),
('M-PSI/01', 'PSICOLOGIA GENERALE'),
('M-PSI/02', 'PSICOBIOLOGIA E PSICOLOGIA FISIOLOGICA'),
('M-PSI/03', 'PSICOMETRIA'),
('M-PSI/04', 'PSICOLOGIA DELLO SVILUPPO E PSICOLOGIA DELL''EDUCAZIONE'),
('M-PSI/05', 'PSICOLOGIA SOCIALE'),
('M-PSI/06', 'PSICOLOGIA DEL LAVORO E DELLE ORGANIZZAZIONI'),
('M-PSI/07', 'PSICOLOGIA DINAMICA'),
('M-PSI/08', 'PSICOLOGIA CLINICA'),
('M-EDF/01', 'METODI E DIDATTICHE DELLE ATTIVITA MOTORIE'),
('M-EDF/02', 'METODI E DIDATTICHE DELLE ATTIVITA SPORTIVE'),
('IUS/01', 'DIRITTO PRIVATO'),
('IUS/02', 'DIRITTO PRIVATO COMPARATO'),
('IUS/03', 'DIRITTO AGRARIO'),
('IUS/04', 'DIRITTO COMMERCIALE'),
('IUS/05', 'DIRITTO DELL''ECONOMIA'),
('IUS/06', 'DIRITTO DELLA NAVIGAZIONE'),
('IUS/07', 'DIRITTO DEL LAVORO'),
('IUS/08', 'DIRITTO COSTITUZIONALE'),
('IUS/09', 'ISTITUZIONI DI DIRITTO PUBBLICO'),
('IUS/10', 'DIRITTO AMMINISTRATIVO'),
('IUS/11', 'DIRITTO CANONICO E DIRITTO ECCLESIASTICO'),
('IUS/12', 'DIRITTO TRIBUTARIO'),
('IUS/13', 'DIRITTO INTERNAZIONALE'),
('IUS/14', 'DIRITTO DELL''UNIONE EUROPEA'),
('IUS/15', 'DIRITTO PROCESSUALE CIVILE'),
('IUS/16', 'DIRITTO PROCESSUALE PENALE'),
('IUS/17', 'DIRITTO PENALE'),
('IUS/18', 'DIRITTO ROMANO E DIRITTI DELL''ANTICHITA'),
('IUS/19', 'STORIA DEL DIRITTO MEDIEVALE E MODERNO'),
('IUS/20', 'FILOSOFIA DEL DIRITTO'),
('IUS/21', 'DIRITTO PUBBLICO COMPARATO'),
('SECS-P/01', 'ECONOMIA POLITICA'),
('SECS P/02', 'POLITICA ECONOMICA'),
('SECS-P/03', 'SCIENZA DELLE FINANZE'),
('SECS-P/04', 'STORIA DEL PENSIERO ECONOMICO'),
('SECS-P/05', 'ECONOMETRIA'),
('SECS-P/06', 'ECONOMIA APPLICATA'),
('SECS-P/07', 'ECONOMIA AZIENDALE'),
('SECS-P/08', 'ECONOMIA E GESTIONE DELLE IMPRESE'),
('SECS-P/09', 'FINANZA AZIENDALE'),
('SECS-P/10', 'ORGANIZZAZIONE AZIENDALE'),
('SECS-P/11', 'ECONOMIA DEGLI INTERMEDIARI FINANZIARI'),
('SECS-P/12', 'STORIA ECONOMICA'),
('SECS-P/13', 'SCIENZE MERCEOLOGICHE'),
('SECS-S/01', 'STATISTICA'),
('SECS-S/02', 'STATISTICA PER LA RICERCA SPERIMENTALE E TECNOLOGICA'),
('SECS-S/03', 'STATISTICA ECONOMICA'),
('SECS-S/04', 'DEMOGRAFIA'),
('SECS-S/05', 'STATISTICA SOCIALE'),
('SECS-S/06', 'METODI MATEMATICI DELL''ECONOMIA E DELLE SCIENZE ATTUARIALI E FINANZIARIE'),
('SPS/01', 'FILOSOFIA POLITICA'),
('SPS/02', 'STORIA DELLE DOTTRINE POLITICHE'),
('SPS/03', 'STORIA DELLE ISTITUZIONI POLITICHE'),
('SPS/04', 'SCIENZA POLITICA'),
('SPS/05', 'STORIA E ISTITUZIONI DELLE AMERICHE'),
('SPS/06', 'STORIA DELLE RELAZIONI INTERNAZIONALI'),
('SPS/07', 'SOCIOLOGIA GENERALE'),
('SPS/08', 'SOCIOLOGIA DEI PROCESSI CULTURALI E COMUNICATIVI'),
('SPS/09', 'SOCIOLOGIA DEI PROCESSI ECONOMICI E DEL LAVORO'),
('SPS/10', 'SOCIOLOGIA DELL''AMBIENTE E DEL TERRITORIO'),
('SPS/11', 'SOCIOLOGIA DEI FENOMENI POLITICI'),
('SPS/12', 'SOCIOLOGIA GIURIDICA, DELLA DEVIANZA E MUTAMENTO SOCIALE'),
('SPS/13', 'STORIA E ISTITUZIONI DELL''AFRICA'),
('SPS/14', 'STORIA E ISTITUZIONI DELL''ASIA');

-- --------------------------------------------------------

--
-- Struttura della tabella `servizi`
--

CREATE TABLE IF NOT EXISTS `servizi` (
  `id_servizi` int(11) NOT NULL AUTO_INCREMENT,
  `descrizione` varchar(250) NOT NULL,
  PRIMARY KEY (`id_servizi`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dump dei dati per la tabella `servizi`
--

INSERT INTO `servizi` (`id_servizi`, `descrizione`) VALUES
(1, 'RT-PCR'),
(2, 'Acquizione di immagini al microscopio in campo chiaro'),
(3, 'Acquisione di immagini al microscopio a contrasto di fase'),
(4, 'Western Blotting');

-- --------------------------------------------------------

--
-- Struttura della tabella `servizi_supporto`
--

CREATE TABLE IF NOT EXISTS `servizi_supporto` (
  `id_servizi_supp` int(11) NOT NULL AUTO_INCREMENT,
  `descrizione` varchar(250) NOT NULL,
  PRIMARY KEY (`id_servizi_supp`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dump dei dati per la tabella `servizi_supporto`
--

INSERT INTO `servizi_supporto` (`id_servizi_supp`, `descrizione`) VALUES
(1, 'Servizi Informatici'),
(2, 'Laboratorio di Preparazione'),
(3, 'Servizi Tecnici');

-- --------------------------------------------------------

--
-- Struttura della tabella `settore`
--

CREATE TABLE IF NOT EXISTS `settore` (
  `id_settore` int(11) NOT NULL AUTO_INCREMENT,
  `settore` varchar(250) NOT NULL,
  `settore_tresto` text NOT NULL,
  PRIMARY KEY (`id_settore`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dump dei dati per la tabella `settore`
--

INSERT INTO `settore` (`id_settore`, `settore`, `settore_tresto`) VALUES
(1, 'Nanomateriali e nanotecnologie per l’ICT', 'Nanomateriali e nanotecnologie per l’ICT');

-- --------------------------------------------------------

--
-- Struttura della tabella `strumenti`
--

CREATE TABLE IF NOT EXISTS `strumenti` (
  `id_strumento` int(11) NOT NULL AUTO_INCREMENT,
  `tipologia` varchar(250) DEFAULT NULL,
  `marca` varchar(250) DEFAULT NULL,
  `modello` varchar(250) DEFAULT NULL,
  `equipaggiamento` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_strumento`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dump dei dati per la tabella `strumenti`
--

INSERT INTO `strumenti` (`id_strumento`, `tipologia`, `marca`, `modello`, `equipaggiamento`) VALUES
(1, 'termociclatore', 'Robocycler', 'GeneAmp PCR system 9700', 0),
(2, 'obiettivo 50x', 'zeiss', 'EOS 50x', 1),
(3, 'obiettivo 10x', 'zeiss', 'EOS 10x', 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `x_area_settore`
--

CREATE TABLE IF NOT EXISTS `x_area_settore` (
  `id_area` int(11) NOT NULL,
  `id_settore` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `x_area_settore`
--

INSERT INTO `x_area_settore` (`id_area`, `id_settore`) VALUES
(4, 1),
(1, 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `x_lab_anag`
--

CREATE TABLE IF NOT EXISTS `x_lab_anag` (
  `id_laboratorio` int(11) NOT NULL,
  `id_anagrafica` int(11) NOT NULL,
  `tempo` int(3) NOT NULL COMMENT 'Percentuale di tempo '
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `x_lab_anag`
--

INSERT INTO `x_lab_anag` (`id_laboratorio`, `id_anagrafica`, `tempo`) VALUES
(1, 10001, 80);

-- --------------------------------------------------------

--
-- Struttura della tabella `x_lab_area_miur`
--

CREATE TABLE IF NOT EXISTS `x_lab_area_miur` (
  `id_laboratorio` int(11) NOT NULL,
  `id_area` int(11) NOT NULL,
  `id_settore` int(11) NOT NULL,
  `miur_area` int(11) NOT NULL,
  `ssd` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `x_lab_area_miur`
--

INSERT INTO `x_lab_area_miur` (`id_laboratorio`, `id_area`, `id_settore`, `miur_area`, `ssd`) VALUES
(1, 4, 1, 5, 'INF/01');

-- --------------------------------------------------------

--
-- Struttura della tabella `x_lab_serv_strum`
--

CREATE TABLE IF NOT EXISTS `x_lab_serv_strum` (
  `id_laboratorio` int(11) NOT NULL,
  `id_strumento` int(11) NOT NULL,
  `id_servizio` int(11) NOT NULL,
  `tipologia` varchar(200) NOT NULL DEFAULT 'effettuato' COMMENT 'effetrtuato - effettuabile',
  `motivazione` text NOT NULL COMMENT 'motivare perchè il servizio non è attualmente erogato'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `x_lab_serv_strum`
--

INSERT INTO `x_lab_serv_strum` (`id_laboratorio`, `id_strumento`, `id_servizio`, `tipologia`, `motivazione`) VALUES
(1, 1, 1, 'effettuato', ''),
(1, 2, 1, 'effettuato', '');

-- --------------------------------------------------------

--
-- Struttura della tabella `x_lab_strum`
--

CREATE TABLE IF NOT EXISTS `x_lab_strum` (
  `id_laboratorio` int(11) NOT NULL,
  `id_strumento` int(11) NOT NULL,
  `quantita` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `x_lab_strum`
--

INSERT INTO `x_lab_strum` (`id_laboratorio`, `id_strumento`, `quantita`) VALUES
(1, 1, 2),
(1, 2, 1);

-- --------------------------------------------------------

--
-- Struttura della tabella `x_lab_strum_equip`
--

CREATE TABLE IF NOT EXISTS `x_lab_strum_equip` (
  `id_laboratorio` int(11) NOT NULL,
  `id_strumento` int(11) NOT NULL,
  `id_strumento_equip` int(11) NOT NULL COMMENT 'da prendere sempre da id_strumento'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `x_lab_strum_equip`
--

INSERT INTO `x_lab_strum_equip` (`id_laboratorio`, `id_strumento`, `id_strumento_equip`) VALUES
(1, 1, 2),
(1, 1, 3);

-- --------------------------------------------------------

--
-- Struttura della tabella `x_lab_strum_futuri`
--

CREATE TABLE IF NOT EXISTS `x_lab_strum_futuri` (
  `id_laboratorio` int(11) NOT NULL,
  `tipologia` varchar(250) NOT NULL COMMENT 'Preso dalla tipologia strumenti',
  `quantita` int(11) NOT NULL,
  `finalita` enum('Parti necessarie per la manutenzione, il completamento funzionale e il riavvio delle strumentazioni da inserire nella rete','Apparecchiature di integrazione funzionale (di diversificazione e ampliamento funzionale delle potenzialità e delle prestazioni delle macchine inserite in rete)','Apparecchiature di ampliamento delle prestazioni della filiera','Altro') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `x_lab_strum_futuri`
--

INSERT INTO `x_lab_strum_futuri` (`id_laboratorio`, `tipologia`, `quantita`, `finalita`) VALUES
(1, 'obiettivo 50x', 2, 'Parti necessarie per la manutenzione, il completamento funzionale e il riavvio delle strumentazioni da inserire nella rete');

-- --------------------------------------------------------

--
-- Struttura della tabella `x_lab_supp`
--

CREATE TABLE IF NOT EXISTS `x_lab_supp` (
  `id_laboratorio` int(11) NOT NULL,
  `id_servizi_supporto` int(11) NOT NULL,
  `descrizione` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `x_lab_supp`
--

INSERT INTO `x_lab_supp` (`id_laboratorio`, `id_servizi_supporto`, `descrizione`) VALUES
(1, 1, '2');

-- --------------------------------------------------------

--
-- Struttura della tabella `x_lab_utilizzatori`
--

CREATE TABLE IF NOT EXISTS `x_lab_utilizzatori` (
  `id_laboratorio` int(11) NOT NULL,
  `professori` int(11) NOT NULL,
  `ricercatori` int(11) NOT NULL COMMENT 'Percentuale di tempo ',
  `tecnici` int(11) NOT NULL,
  `assegnisti` int(11) NOT NULL,
  `borsisti` int(11) NOT NULL,
  `laureandi` int(11) NOT NULL,
  `studenti` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dump dei dati per la tabella `x_lab_utilizzatori`
--

INSERT INTO `x_lab_utilizzatori` (`id_laboratorio`, `professori`, `ricercatori`, `tecnici`, `assegnisti`, `borsisti`, `laureandi`, `studenti`) VALUES
(1, 1, 2, 1, 2, 0, 1, 6);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
