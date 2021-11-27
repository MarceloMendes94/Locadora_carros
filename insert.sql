INSERT INTO `locadora`.`ModeloVeiculo`(`CdModelo`,`DesModelo`)VALUES(1,'Ká 1.0');
INSERT INTO `locadora`.`ModeloVeiculo`(`CdModelo`,`DesModelo`)VALUES(2,'Fussion');
INSERT INTO `locadora`.`ModeloVeiculo`(`CdModelo`,`DesModelo`)VALUES(3,'Honda civic 2016');
INSERT INTO `locadora`.`ModeloVeiculo`(`CdModelo`,`DesModelo`)VALUES(4,'Honda civic 2021');
INSERT INTO `locadora`.`ModeloVeiculo`(`CdModelo`,`DesModelo`)VALUES(5,'Classic 1.5');
INSERT INTO `locadora`.`ModeloVeiculo`(`CdModelo`,`DesModelo`)VALUES(6,'Onix Sedan');
INSERT INTO `locadora`.`ModeloVeiculo`(`CdModelo`,`DesModelo`)VALUES(7,'Etios Sedan');
INSERT INTO `locadora`.`ModeloVeiculo`(`CdModelo`,`DesModelo`)VALUES(8,'Etios hatch');
INSERT INTO `locadora`.`ModeloVeiculo`(`CdModelo`,`DesModelo`)VALUES(9,'Hb20 1.2 hatch');
INSERT INTO `locadora`.`ModeloVeiculo`(`CdModelo`,`DesModelo`)VALUES(10,'Hb20 1.2 hatch turbo');

INSERT INTO `locadora`.`UF`(`CdUF`,`DesUF`)VALUES(1,'Rondônia');
INSERT INTO `locadora`.`UF`(`CdUF`,`DesUF`)VALUES(2,'Acre');
INSERT INTO `locadora`.`UF`(`CdUF`,`DesUF`)VALUES(3,'Amazonas');
INSERT INTO `locadora`.`UF`(`CdUF`,`DesUF`)VALUES(4,'Roraima');
INSERT INTO `locadora`.`UF`(`CdUF`,`DesUF`)VALUES(5,'Pará');
INSERT INTO `locadora`.`UF`(`CdUF`,`DesUF`)VALUES(6,'Amapá');
INSERT INTO `locadora`.`UF`(`CdUF`,`DesUF`)VALUES(7,'Tocantins');
INSERT INTO `locadora`.`UF`(`CdUF`,`DesUF`)VALUES(8,'Maranhão');
INSERT INTO `locadora`.`UF`(`CdUF`,`DesUF`)VALUES(9,'Piauí');
INSERT INTO `locadora`.`UF`(`CdUF`,`DesUF`)VALUES(10,'Rio Grande do Norte');
INSERT INTO `locadora`.`UF`(`CdUF`,`DesUF`)VALUES(11,'Pernambuco');
INSERT INTO `locadora`.`UF`(`CdUF`,`DesUF`)VALUES(12,'Alagoas');
INSERT INTO `locadora`.`UF`(`CdUF`,`DesUF`)VALUES(13,'Sergipe');
INSERT INTO `locadora`.`UF`(`CdUF`,`DesUF`)VALUES(14,'Bahia');
INSERT INTO `locadora`.`UF`(`CdUF`,`DesUF`)VALUES(15,'Minas Gerais');
INSERT INTO `locadora`.`UF`(`CdUF`,`DesUF`)VALUES(27,'Espírito Santo');
INSERT INTO `locadora`.`UF`(`CdUF`,`DesUF`)VALUES(16,'Rio de Janeiro');
INSERT INTO `locadora`.`UF`(`CdUF`,`DesUF`)VALUES(17,'São Paulo');
INSERT INTO `locadora`.`UF`(`CdUF`,`DesUF`)VALUES(18,'Paraná');
INSERT INTO `locadora`.`UF`(`CdUF`,`DesUF`)VALUES(19,'Santa Catarina');
INSERT INTO `locadora`.`UF`(`CdUF`,`DesUF`)VALUES(20,'Mato Grosso do Sul');
INSERT INTO `locadora`.`UF`(`CdUF`,`DesUF`)VALUES(21,'Mato Grosso');
INSERT INTO `locadora`.`UF`(`CdUF`,`DesUF`)VALUES(22,'Goiás');
INSERT INTO `locadora`.`UF`(`CdUF`,`DesUF`)VALUES(23,'Distrito Feder');
INSERT INTO `locadora`.`UF`(`CdUF`,`DesUF`)VALUES(24,'Rio Grande do Sul');
INSERT INTO `locadora`.`UF`(`CdUF`,`DesUF`)VALUES(25,'Ceará');
INSERT INTO `locadora`.`UF`(`CdUF`,`DesUF`)VALUES(26,'Paraíba');

INSERT INTO `locadora`.`Fabricante`(`CdFabricante`,`DesFabricante`)VALUES(1,'Ford');
INSERT INTO `locadora`.`Fabricante`(`CdFabricante`,`DesFabricante`)VALUES(2,'Chevrolet');
INSERT INTO `locadora`.`Fabricante`(`CdFabricante`,`DesFabricante`)VALUES(3,'Honda');
INSERT INTO `locadora`.`Fabricante`(`CdFabricante`,`DesFabricante`)VALUES(4,'Hyundai');
INSERT INTO `locadora`.`Fabricante`(`CdFabricante`,`DesFabricante`)VALUES(5,'Toyota');

INSERT INTO `locadora`.`EstadoCivil`(`cdEstadoCivil`,`DesEstadoCivil`)VALUES(1,'casado(a)');
INSERT INTO `locadora`.`EstadoCivil`(`cdEstadoCivil`,`DesEstadoCivil`)VALUES(2,'solteiro(a)');
INSERT INTO `locadora`.`EstadoCivil`(`cdEstadoCivil`,`DesEstadoCivil`)VALUES(3,'divorciado(a)');
INSERT INTO `locadora`.`EstadoCivil`(`cdEstadoCivil`,`DesEstadoCivil`)VALUES(4,'viúvo(a)');

INSERT INTO `locadora`.`Servico`(`CdServico`,`DesServico`)VALUES(1,'Troca de Oleo');
INSERT INTO `locadora`.`Servico`(`CdServico`,`DesServico`)VALUES(2,'Revisão de fábrica');
INSERT INTO `locadora`.`Servico`(`CdServico`,`DesServico`)VALUES(3,'Troca de pneus');
INSERT INTO `locadora`.`Servico`(`CdServico`,`DesServico`)VALUES(4,'Lanternagem');

INSERT INTO `locadora`.`ItemOpcional`(`CdOpcional`,`DesOpcional`,`VlrAtualDiaria`)VALUES(1,'Cadeirinha de bebê' ,'5.50');

INSERT INTO `locadora`.`SituacaoVeiculo`(`CdSituacao`,`DesSituacao`)VALUES(1,'Locado');
INSERT INTO `locadora`.`SituacaoVeiculo`(`CdSituacao`,`DesSituacao`)VALUES(2,'Disponível');
INSERT INTO `locadora`.`SituacaoVeiculo`(`CdSituacao`,`DesSituacao`)VALUES(3,'Em manutenção');
INSERT INTO `locadora`.`SituacaoVeiculo`(`CdSituacao`,`DesSituacao`)VALUES(4,'Desativado');

INSERT INTO `locadora`.`Cargo`(`CdCargo`,`DesCargo`)VALUES(1,'Vendedor');
INSERT INTO `locadora`.`Cargo`(`CdCargo`,`DesCargo`)VALUES(2,'Gerente');

INSERT INTO `locadora`.`TipoCombustivel`(`CdCombustivel`,`DesCombustivel`)VALUES(1,'GNV');
INSERT INTO `locadora`.`TipoCombustivel`(`CdCombustivel`,`DesCombustivel`)VALUES(2,'Flex');
INSERT INTO `locadora`.`TipoCombustivel`(`CdCombustivel`,`DesCombustivel`)VALUES(3,'Gasolina');
