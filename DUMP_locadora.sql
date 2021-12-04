-- MySQL dump 10.13  Distrib 8.0.27, for Linux (x86_64)
--
-- Host: localhost    Database: locadora
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cargo`
--

DROP TABLE IF EXISTS `cargo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cargo` (
  `CdCargo` int NOT NULL,
  `DesCargo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`CdCargo`),
  UNIQUE KEY `CdCargo` (`CdCargo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargo`
--

LOCK TABLES `cargo` WRITE;
/*!40000 ALTER TABLE `cargo` DISABLE KEYS */;
INSERT INTO `cargo` VALUES (1,'Vendedor'),(2,'Gerente');
/*!40000 ALTER TABLE `cargo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `CdCliente` int NOT NULL,
  `NmCliente` varchar(100) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Celular` varchar(15) DEFAULT NULL,
  `Habilitacao` varchar(45) DEFAULT NULL,
  `Cpf` varchar(11) DEFAULT NULL,
  `DtNascimento` date DEFAULT NULL,
  `TelefoneFixo` varchar(45) DEFAULT NULL,
  `Endereco` longtext,
  `EstadoCivil_CdEstadoCivil` int DEFAULT NULL,
  `UF_CdUf` int DEFAULT NULL,
  PRIMARY KEY (`CdCliente`),
  KEY `FK_Cliente_2` (`UF_CdUf`),
  KEY `FK_Cliente_3` (`EstadoCivil_CdEstadoCivil`),
  CONSTRAINT `FK_Cliente_2` FOREIGN KEY (`UF_CdUf`) REFERENCES `uf` (`CdUF`),
  CONSTRAINT `FK_Cliente_3` FOREIGN KEY (`EstadoCivil_CdEstadoCivil`) REFERENCES `estadocivil` (`cdEstadoCivil`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'Bernardo Sérgio Nunes','bernardosergionunes@jglima.com.br','(98) 98324-6438','79706620025','99453231304','1981-11-06','(98) 3885-9960','Rua Nelson Raposo, n 660, Nova Imperatriz, Imperatriz. CEP: 65907-225',1,8),(3,'Sérgio Nicolas da Rocha','ssergionicolasdarocha@dominiozeladoria.com.br','(71) 98947-2705','43594258438','34258902713','1984-07-22','(71) 2866-6856','1ª Travessa 6 de Janeiro, n 489, Sete de Abril, Salvador. CEP: 41385-605',3,14),(4,'Simone Luana Moura','simoneluanamoura-97@vivax.com.br','(63) 99433-5581','81705957544','95368063717','1964-04-05','(63) 3910-6706','Quadra 1003 Sul Alameda 14, n 232, Plano Diretor Sul, Palmas. CEP: 77018-474',1,7),(5,'Emanuelly Rosângela Sales','emanuellyrosangelasales_@fixacomunicacao.com.br','(82) 99266-8621','55653970861','30463021185','1964-07-06','(82) 2744-2576','Rua Dona Maria de Lourdes Brandão, n 367, Tabuleiro do Martins, Maceió. CEP: 57061-210',2,12),(6,'Levi Gabriel Duarte','mimiroyle@gmail.com','(85) 99900-9697','70730858501','49917649395','1986-06-27','(85) 3831-9936','Rua José Borba Vasconcelos, n 695, Mondubim, Fortaleza. CEP: 60762-135',2,25),(7,'Nair Gabriela Giovanna Cavalcanti','nairgabrielagiovannacavalcanti@flama.biz','(27) 98632-1905','50804401840','52853812588','1972-01-10','(27) 3710-4140','Rua Pedro Carlos de Souza, n 297, Ilha de Santa Maria, Vitória. CEP: 29051-052',1,27),(8,'Julio Kevin Renan Nunes','juliokevinrenannunes_@predialnet.com.br','(27) 98194-8375','60908824936','61248755782','1981-03-01','(27) 3891-2866','Rua Divinópolis, n 871, Nova Carapina I, Serra. CEP: 29170-077',1,27),(9,'Stefany Beatriz Nascimento','stefanybeatriznascimento@advogadostb.com.br','(27) 98165-1254','04481488700','41936764717','2002-03-18','(27) 3669-8178','Beco São Salvador, n 869, Cavalieri\", Vila Velha. CEP: 29121-330',2,27),(10,'Isadora Heloise Daiane Gonçalves','isadoraheloise-82@rebecacometerra.com.br','(27) 99969-7558','72362311865','74016997704','1947-05-03','(27) 3762-2708','Rua Castelo Branco, n 127, São Pedro, Colatina. CEP:  29706-824',3,27),(11,'Ester Alana da Paz','esteralana@andrepires.com.br','(62) 99431-3633','05315863490','76648021721','1955-02-08','(44) 2960-7710','Rua Ângelo Pelissari, n 594, Residencial Moreschi, Maringá. CEP: 87080-126',2,18);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estadocivil`
--

DROP TABLE IF EXISTS `estadocivil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estadocivil` (
  `cdEstadoCivil` int NOT NULL,
  `DesEstadoCivil` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`cdEstadoCivil`),
  UNIQUE KEY `cdEstadoCivil` (`cdEstadoCivil`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estadocivil`
--

LOCK TABLES `estadocivil` WRITE;
/*!40000 ALTER TABLE `estadocivil` DISABLE KEYS */;
INSERT INTO `estadocivil` VALUES (1,'casado(a)'),(2,'solteiro(a)'),(3,'divorciado(a)'),(4,'viúvo(a)');
/*!40000 ALTER TABLE `estadocivil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fabricante`
--

DROP TABLE IF EXISTS `fabricante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fabricante` (
  `CdFabricante` int NOT NULL,
  `DesFabricante` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`CdFabricante`),
  UNIQUE KEY `CdFabricante` (`CdFabricante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fabricante`
--

LOCK TABLES `fabricante` WRITE;
/*!40000 ALTER TABLE `fabricante` DISABLE KEYS */;
INSERT INTO `fabricante` VALUES (1,'Ford'),(2,'Chevrolet'),(3,'Honda'),(4,'Hyundai'),(5,'Toyota');
/*!40000 ALTER TABLE `fabricante` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionario` (
  `CodFuncionario` int NOT NULL,
  `Matricula` varchar(15) DEFAULT NULL,
  `NmFunc` varchar(100) DEFAULT NULL,
  `Celular` varchar(15) DEFAULT NULL,
  `Cpf` varchar(11) DEFAULT NULL,
  `TelResidencial` varchar(15) DEFAULT NULL,
  `Endereco` longtext,
  `RG` varchar(10) DEFAULT NULL,
  `Cargo_CdCargo` int DEFAULT NULL,
  `UF_CdUf` int DEFAULT NULL,
  PRIMARY KEY (`CodFuncionario`),
  UNIQUE KEY `CodFuncionario` (`CodFuncionario`),
  KEY `FK_Funcionario_3` (`UF_CdUf`),
  KEY `FK_Funcionario_4` (`Cargo_CdCargo`),
  CONSTRAINT `FK_Funcionario_3` FOREIGN KEY (`UF_CdUf`) REFERENCES `uf` (`CdUF`),
  CONSTRAINT `FK_Funcionario_4` FOREIGN KEY (`Cargo_CdCargo`) REFERENCES `cargo` (`CdCargo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES (1,'MRBWPE9Y0N','Vitor Joaquim Galvão','(68) 99422-9040','21013352203','(68) 3822-2742','Travessa Feijó, n 505, Seis de Agosto, Rio Branco. CEP: 69905-620','241089943',2,2),(2,'796ZKUDARK','Heitor Manuel Cauã Freitas','(68) 99141-8427','53959781270','(68) 2532-6448','Ramal da Judia, n 60, Belo Jardim I, Rio Branco. CEP: 69907-860','451716425',1,2),(3,'GW9H9Y3418','Fábio Alexandre Almada','(27) 99667-7813','56457614728','(27) 2578-4277','Beco João Antunes Barbosa 6, n 82, Fonte Grande, Vitória. CEP: 29016-711','445529362',2,27),(4,'SEQT16Z0UO','Eloá Bruna Galvão','(27) 99878-7421','97343023705','(27) 2626-5469','Rua Ômega, n 86, São Judas Tadeu, Serra. CEP: 29177-016 ','42907070-6',1,27),(5,'ERNAGZWJ0D','Enzo Ricardo Pedro Rezende','(27) 99791-6949','19884577773','(27) 3812-3365','Rua Castro Alves, n 155, Cidade Nova da Serra, Serra. CEP: 29180-260','265741257',1,27);
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itemopcional`
--

DROP TABLE IF EXISTS `itemopcional`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itemopcional` (
  `CdOpcional` int NOT NULL,
  `DesOpcional` varchar(45) DEFAULT NULL,
  `VlrAtualDiaria` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`CdOpcional`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itemopcional`
--

LOCK TABLES `itemopcional` WRITE;
/*!40000 ALTER TABLE `itemopcional` DISABLE KEYS */;
INSERT INTO `itemopcional` VALUES (1,'Cadeirinha de bebê',5.50),(2,'Reboque',12.90),(3,'Multimídia',9.50),(4,'Motorista extra',15.00);
/*!40000 ALTER TABLE `itemopcional` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locacao`
--

DROP TABLE IF EXISTS `locacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locacao` (
  `CdLocacao` int NOT NULL,
  `DtInicio` date DEFAULT NULL,
  `DtFim` date DEFAULT NULL,
  `VlrDiaria` decimal(10,2) DEFAULT NULL,
  `KmInicial` int DEFAULT NULL,
  `KmFinal` int DEFAULT NULL,
  `Veiculo_CdVeiculo` int DEFAULT NULL,
  `Funcionario_CdFuncionario` int DEFAULT NULL,
  `Cliente_CdCliente` int DEFAULT NULL,
  PRIMARY KEY (`CdLocacao`),
  UNIQUE KEY `CdLocacao` (`CdLocacao`),
  KEY `FK_Locacao_3` (`Cliente_CdCliente`),
  KEY `FK_Locacao_4` (`Funcionario_CdFuncionario`),
  KEY `FK_Locacao_5` (`Veiculo_CdVeiculo`),
  CONSTRAINT `FK_Locacao_3` FOREIGN KEY (`Cliente_CdCliente`) REFERENCES `cliente` (`CdCliente`),
  CONSTRAINT `FK_Locacao_4` FOREIGN KEY (`Funcionario_CdFuncionario`) REFERENCES `funcionario` (`CodFuncionario`),
  CONSTRAINT `FK_Locacao_5` FOREIGN KEY (`Veiculo_CdVeiculo`) REFERENCES `veiculo` (`CdVeiculo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locacao`
--

LOCK TABLES `locacao` WRITE;
/*!40000 ALTER TABLE `locacao` DISABLE KEYS */;
INSERT INTO `locacao` VALUES (1,'2014-04-02','2014-04-30',14.00,459668,468215,1,2,1),(2,'2014-08-08','2014-09-01',17.00,582380,594235,2,2,3),(3,'2014-02-24','2014-02-27',10.00,744460,895475,7,3,8),(4,'2014-04-25','2014-05-25',21.00,11077,18625,7,3,10),(5,'2015-06-17','2015-06-20',14.00,466971,469251,5,2,3),(6,'2015-07-16','2015-07-17',14.00,876582,889542,1,1,5),(7,'2015-02-18','2015-04-18',22.00,705901,748025,4,1,1),(8,'2015-04-10','2015-04-14',17.00,370259,390120,6,3,7),(9,'2015-09-26','2015-09-28',10.00,982072,1059875,8,4,9),(10,'2015-07-14','2015-09-19',24.00,464111,560789,8,5,10),(11,'2016-11-20','2016-11-24',18.00,850762,969000,1,2,3),(12,'2016-12-19','2017-01-19',25.00,702417,745009,5,1,4),(13,'2016-08-08','2016-08-13',19.00,104852,945220,4,2,1),(14,'2016-07-12','2016-07-19',20.00,445429,854963,2,2,1),(15,'2016-11-07','2016-11-10',13.00,432337,845675,3,1,5),(16,'2016-02-16','2016-02-18',25.00,939574,1930258,10,5,7),(17,'2016-01-28','2016-02-23',15.00,850384,924650,8,3,10),(18,'2016-12-13','2016-10-27',21.00,330848,875483,7,3,9),(19,'2017-03-07','2017-03-16',25.00,731742,814652,4,1,5),(20,'2017-11-08','2017-11-13',22.00,419343,750069,3,2,3),(21,'2017-12-11','2018-01-03',16.00,48180,46201,5,1,4),(22,'2017-02-10','2017-09-10',27.00,358319,753119,1,1,1),(23,'2017-09-08','2017-09-21',30.00,371259,468552,7,3,9),(24,'2017-07-25','2017-07-29',27.00,377078,620124,10,5,7),(25,'2017-05-15','2017-05-30',30.00,212191,745630,6,5,10),(26,'2017-11-14','2017-11-24',23.00,132615,249906,8,4,8),(27,'2018-03-04','2018-05-08',22.00,911630,991000,3,2,11),(28,'2018-01-31','2018-02-16',28.00,969453,1006544,5,2,3),(29,'2018-08-25','2018-08-29',24.00,400601,495330,1,1,5),(30,'2018-02-04','2018-02-07',26.00,540482,656172,2,1,4),(31,'2018-06-01','2018-07-01',22.00,554239,736412,5,2,11),(32,'2018-07-05','2018-07-08',19.00,740199,821456,8,5,8),(33,'2018-03-13','2018-03-18',16.00,276326,385004,7,3,7),(34,'2018-01-11','2018-01-14',31.00,950232,1205264,10,4,9),(35,'2018-01-03','2018-01-31',29.00,799667,813557,9,4,10),(36,'2018-03-14','2018-04-16',25.00,750506,793004,7,4,7);
/*!40000 ALTER TABLE `locacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locacaoitemopcional`
--

DROP TABLE IF EXISTS `locacaoitemopcional`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `locacaoitemopcional` (
  `Locacao_CdLocacao` int DEFAULT NULL,
  `ItemOpcional_CdItemOpcional` int DEFAULT NULL,
  KEY `FK_LocacaoItemOpcional_1` (`Locacao_CdLocacao`),
  KEY `FK_LocacaoItemOpcional_2` (`ItemOpcional_CdItemOpcional`),
  CONSTRAINT `FK_LocacaoItemOpcional_1` FOREIGN KEY (`Locacao_CdLocacao`) REFERENCES `locacao` (`CdLocacao`),
  CONSTRAINT `FK_LocacaoItemOpcional_2` FOREIGN KEY (`ItemOpcional_CdItemOpcional`) REFERENCES `itemopcional` (`CdOpcional`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locacaoitemopcional`
--

LOCK TABLES `locacaoitemopcional` WRITE;
/*!40000 ALTER TABLE `locacaoitemopcional` DISABLE KEYS */;
INSERT INTO `locacaoitemopcional` VALUES (1,2),(2,4),(3,3),(4,1),(5,4);
/*!40000 ALTER TABLE `locacaoitemopcional` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manutencaoveiculo`
--

DROP TABLE IF EXISTS `manutencaoveiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manutencaoveiculo` (
  `CdManutencao` int NOT NULL,
  `DtSaida` date DEFAULT NULL,
  `DtRetorno` date DEFAULT NULL,
  `Veiculo_CdVeiculo` int DEFAULT NULL,
  PRIMARY KEY (`CdManutencao`),
  UNIQUE KEY `CdManutencao` (`CdManutencao`),
  KEY `FK_ManutencaoVeiculo_3` (`Veiculo_CdVeiculo`),
  CONSTRAINT `FK_ManutencaoVeiculo_3` FOREIGN KEY (`Veiculo_CdVeiculo`) REFERENCES `veiculo` (`CdVeiculo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manutencaoveiculo`
--

LOCK TABLES `manutencaoveiculo` WRITE;
/*!40000 ALTER TABLE `manutencaoveiculo` DISABLE KEYS */;
INSERT INTO `manutencaoveiculo` VALUES (1,'2014-12-05','2014-12-23',3),(2,'2016-05-21','2016-06-23',6),(3,'2015-01-15','2015-01-31',6),(4,'2018-11-27','2018-11-28',2),(5,'2018-05-24','2018-08-01',10),(6,'2016-05-12','2016-05-16',6);
/*!40000 ALTER TABLE `manutencaoveiculo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modeloveiculo`
--

DROP TABLE IF EXISTS `modeloveiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `modeloveiculo` (
  `CdModelo` int NOT NULL,
  `DesModelo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`CdModelo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modeloveiculo`
--

LOCK TABLES `modeloveiculo` WRITE;
/*!40000 ALTER TABLE `modeloveiculo` DISABLE KEYS */;
INSERT INTO `modeloveiculo` VALUES (1,'Ká 1.0'),(2,'Fussion'),(3,'Honda civic 2016'),(4,'Honda civic 2021'),(5,'Classic 1.5'),(6,'Onix Sedan'),(7,'Etios Sedan'),(8,'Etios hatch'),(9,'Hb20 1.2 hatch'),(10,'Hb20 1.2 hatch turbo');
/*!40000 ALTER TABLE `modeloveiculo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servico`
--

DROP TABLE IF EXISTS `servico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servico` (
  `CdServico` int NOT NULL,
  `DesServico` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`CdServico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servico`
--

LOCK TABLES `servico` WRITE;
/*!40000 ALTER TABLE `servico` DISABLE KEYS */;
INSERT INTO `servico` VALUES (1,'Troca de Oleo'),(2,'Revisão de fábrica'),(3,'Troca de pneus'),(4,'Lanternagem');
/*!40000 ALTER TABLE `servico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicomanutencao`
--

DROP TABLE IF EXISTS `servicomanutencao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicomanutencao` (
  `DtConclusao` date DEFAULT NULL,
  `Observacoes` longtext,
  `ManutencaoVeiculo_CdManutencao` int DEFAULT NULL,
  `ServicoManutencao` int DEFAULT NULL,
  KEY `FK_ServicoManutencao_1` (`ManutencaoVeiculo_CdManutencao`),
  KEY `FK_ServicoManutencao_2` (`ServicoManutencao`),
  CONSTRAINT `FK_ServicoManutencao_1` FOREIGN KEY (`ManutencaoVeiculo_CdManutencao`) REFERENCES `manutencaoveiculo` (`CdManutencao`),
  CONSTRAINT `FK_ServicoManutencao_2` FOREIGN KEY (`ServicoManutencao`) REFERENCES `servico` (`CdServico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicomanutencao`
--

LOCK TABLES `servicomanutencao` WRITE;
/*!40000 ALTER TABLE `servicomanutencao` DISABLE KEYS */;
INSERT INTO `servicomanutencao` VALUES ('2014-12-08',NULL,1,4),('2016-05-21','Precisou trocar painel',2,2),('2015-01-20','Manutenção preventiva em dia',3,2),('2018-11-27','Amassados localizados no parachoque',4,1),('2018-07-24','Precisou trocar estepe também',5,3),('2016-05-14',NULL,6,4);
/*!40000 ALTER TABLE `servicomanutencao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `situacaoveiculo`
--

DROP TABLE IF EXISTS `situacaoveiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `situacaoveiculo` (
  `CdSituacao` int NOT NULL,
  `DesSituacao` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`CdSituacao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `situacaoveiculo`
--

LOCK TABLES `situacaoveiculo` WRITE;
/*!40000 ALTER TABLE `situacaoveiculo` DISABLE KEYS */;
INSERT INTO `situacaoveiculo` VALUES (1,'Locado'),(2,'Disponível'),(3,'Em manutenção'),(4,'Desativado');
/*!40000 ALTER TABLE `situacaoveiculo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipocombustivel`
--

DROP TABLE IF EXISTS `tipocombustivel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipocombustivel` (
  `CdCombustivel` int NOT NULL,
  `DesCombustivel` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`CdCombustivel`),
  UNIQUE KEY `CdCombustivel` (`CdCombustivel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipocombustivel`
--

LOCK TABLES `tipocombustivel` WRITE;
/*!40000 ALTER TABLE `tipocombustivel` DISABLE KEYS */;
INSERT INTO `tipocombustivel` VALUES (1,'GNV'),(2,'Flex'),(3,'Gasolina');
/*!40000 ALTER TABLE `tipocombustivel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipoveiculo`
--

DROP TABLE IF EXISTS `tipoveiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipoveiculo` (
  `CdTipoVeiculo` int NOT NULL,
  `DesTipoVeiculo` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`CdTipoVeiculo`),
  UNIQUE KEY `CdTipoVeiculo` (`CdTipoVeiculo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoveiculo`
--

LOCK TABLES `tipoveiculo` WRITE;
/*!40000 ALTER TABLE `tipoveiculo` DISABLE KEYS */;
INSERT INTO `tipoveiculo` VALUES (1,'Sedã'),(2,'Caminhonete'),(3,'Esportivo');
/*!40000 ALTER TABLE `tipoveiculo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uf`
--

DROP TABLE IF EXISTS `uf`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uf` (
  `CdUF` int NOT NULL,
  `DesUF` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`CdUF`),
  UNIQUE KEY `CdUF` (`CdUF`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uf`
--

LOCK TABLES `uf` WRITE;
/*!40000 ALTER TABLE `uf` DISABLE KEYS */;
INSERT INTO `uf` VALUES (1,'Rondônia'),(2,'Acre'),(3,'Amazonas'),(4,'Roraima'),(5,'Pará'),(6,'Amapá'),(7,'Tocantins'),(8,'Maranhão'),(9,'Piauí'),(10,'Rio Grande do Norte'),(11,'Pernambuco'),(12,'Alagoas'),(13,'Sergipe'),(14,'Bahia'),(15,'Minas Gerais'),(16,'Rio de Janeiro'),(17,'São Paulo'),(18,'Paraná'),(19,'Santa Catarina'),(20,'Mato Grosso do Sul'),(21,'Mato Grosso'),(22,'Goiás'),(23,'Distrito Feder'),(24,'Rio Grande do Sul'),(25,'Ceará'),(26,'Paraíba'),(27,'Espírito Santo');
/*!40000 ALTER TABLE `uf` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `veiculo`
--

DROP TABLE IF EXISTS `veiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `veiculo` (
  `CdVeiculo` int NOT NULL,
  `Placa` varchar(10) DEFAULT NULL,
  `Chassi` varchar(20) DEFAULT NULL,
  `AnoFabricacao` year DEFAULT NULL,
  `Frabricante_CdFabricante` int DEFAULT NULL,
  `TipoCombustivel_CdCombustivel` int DEFAULT NULL,
  `ModeloVeiculo_cdModelo` int DEFAULT NULL,
  `TipoVeiculo_CdTipoVeiculo` int DEFAULT NULL,
  `SituacaoVeiculo_CdSituacao` int DEFAULT NULL,
  PRIMARY KEY (`CdVeiculo`),
  UNIQUE KEY `CdVeiculo` (`CdVeiculo`),
  KEY `FK_Veiculo_3` (`Frabricante_CdFabricante`),
  KEY `FK_Veiculo_4` (`TipoCombustivel_CdCombustivel`),
  KEY `FK_Veiculo_5` (`ModeloVeiculo_cdModelo`),
  KEY `FK_Veiculo_6` (`TipoVeiculo_CdTipoVeiculo`),
  KEY `FK_Veiculo_7` (`SituacaoVeiculo_CdSituacao`),
  CONSTRAINT `FK_Veiculo_3` FOREIGN KEY (`Frabricante_CdFabricante`) REFERENCES `fabricante` (`CdFabricante`),
  CONSTRAINT `FK_Veiculo_4` FOREIGN KEY (`TipoCombustivel_CdCombustivel`) REFERENCES `tipocombustivel` (`CdCombustivel`),
  CONSTRAINT `FK_Veiculo_5` FOREIGN KEY (`ModeloVeiculo_cdModelo`) REFERENCES `modeloveiculo` (`CdModelo`),
  CONSTRAINT `FK_Veiculo_6` FOREIGN KEY (`TipoVeiculo_CdTipoVeiculo`) REFERENCES `tipoveiculo` (`CdTipoVeiculo`),
  CONSTRAINT `FK_Veiculo_7` FOREIGN KEY (`SituacaoVeiculo_CdSituacao`) REFERENCES `situacaoveiculo` (`CdSituacao`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `veiculo`
--

LOCK TABLES `veiculo` WRITE;
/*!40000 ALTER TABLE `veiculo` DISABLE KEYS */;
INSERT INTO `veiculo` VALUES (1,'NAC-8873','4CR 2kFBBB DT Nc0116',2009,5,3,9,1,2),(2,'HOO-5563','14G BArSTu 6F aJ0832',1996,2,3,6,3,3),(3,'JNK-0402','4KA S08rHN 09 2S6401',2003,4,2,9,1,2),(4,'MXD-1582','3Vu 18r4AL Ay f83029',2002,4,1,10,3,1),(5,'MUI-5125','2Al WH92Z1 6h LW8250',2010,1,1,2,1,1),(6,'HXJ-0082','6xh 3hl7s8 G1 YA4527',1993,5,3,7,1,4),(7,'MQR-7628','2t4 Af7le6 AT HF6915',2015,2,2,5,1,2),(8,'MSQ-0916','8YL jp1PrD a9 ZK1789',2020,3,3,3,3,2),(9,'MSD-0867','6kT s7yCAl Tr aA5114',2003,5,3,8,2,1),(10,'MRP-7110','81C TYp3ak G5 5A2914',2018,1,1,1,1,1);
/*!40000 ALTER TABLE `veiculo` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-04 12:44:34
