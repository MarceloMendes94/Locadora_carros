CREATE TABLE EstadoCivil (
    cdEstadoCivil INTEGER PRIMARY KEY UNIQUE,
    DesEstadoCivil VARCHAR(30)
);

CREATE TABLE UF (
    CdUF INTEGER PRIMARY KEY UNIQUE,
    DesUF VARCHAR(45)
);

CREATE TABLE Fabricante (
    CdFabricante INTEGER PRIMARY KEY UNIQUE,
    DesFabricante VARCHAR(45)
);

CREATE TABLE TipoCombustivel (
    CdCombustivel INTEGER PRIMARY KEY UNIQUE,
    DesCombustivel VARCHAR(30)
);

CREATE TABLE TipoVeiculo (
    CdTipoVeiculo INTEGER PRIMARY KEY UNIQUE,
    DesTipoVeiculo VARCHAR(45)
);

CREATE TABLE Veiculo (
    CdVeiculo INTEGER PRIMARY KEY UNIQUE,
    Placa VARCHAR(10),
    Chassi VARCHAR(20),
    AnoFabricacao YEAR(4),
    Frabricante_CdFabricante INTEGER,
    TipoCombustivel_CdCombustivel INTEGER,
    ModeloVeiculo_cdModelo INTEGER,
    TipoVeiculo_CdTipoVeiculo INTEGER,
    SituacaoVeiculo_CdSituacao INTEGER
);

CREATE TABLE Cargo (
    CdCargo INTEGER PRIMARY KEY UNIQUE,
    DesCargo VARCHAR(45)
);

CREATE TABLE Funcionario (
    CodFuncionario INTEGER PRIMARY KEY UNIQUE,
    Matricula VARCHAR(15),
    NmFunc VARCHAR(100),
    Celular VARCHAR(15),
    Cpf VARCHAR(11),
    TelResidencial VARCHAR(15),
    Endereco LONGTEXT NULL,
    RG VARCHAR(10),
    Cargo_CdCargo INTEGER,
    UF_CdUf INTEGER
);

CREATE TABLE ManutencaoVeiculo (
    CdManutencao INTEGER PRIMARY KEY UNIQUE,
    DtSaida DATE,
    DtRetorno DATE,
    Veiculo_CdVeiculo INTEGER
);

CREATE TABLE ItemOpcional (
    CdOpcional INTEGER PRIMARY KEY,
    DesOpcional VARCHAR(45),
    VlrAtualDiaria DECIMAL(10,2)
);

CREATE TABLE LocacaoItemOpcional (
    Locacao_CdLocacao INTEGER,
    ItemOpcional_CdItemOpcional INTEGER
);

CREATE TABLE Locacao (
    CdLocacao INTEGER PRIMARY KEY UNIQUE,
    DtInicio DATE,
    DtFim DATE,
    VlrDiaria DECIMAL(10,2),
    KmInicial INTEGER,
    KmFinal INTEGER,
    Veiculo_CdVeiculo INTEGER,
    Funcionario_CdFuncionario INTEGER,
    Cliente_CdCliente INTEGER
);

CREATE TABLE ServicoManutencao (
    DtConclusao DATE,
    Observacoes LONGTEXT,
    ManutencaoVeiculo_CdManutencao INTEGER,
    ServicoManutencao INTEGER
);

CREATE TABLE Cliente (
    CdCliente INTEGER PRIMARY KEY,
    NmCliente VARCHAR(100),
    Email VARCHAR(50),
    Celular VARCHAR(15),
    Habilitacao VARCHAR(45),
    Cpf VARCHAR(11),
    DtNascimento DATE,
    TelefoneFixo VARCHAR(45),
    Endereco LONGTEXT NULL,
    EstadoCivil_CdEstadoCivil INTEGER,
    UF_CdUf INTEGER
);

CREATE TABLE Servico (
    CdServico INTEGER PRIMARY KEY,
    DesServico VARCHAR(45)
);

CREATE TABLE ModeloVeiculo (
    CdModelo INTEGER PRIMARY KEY,
    DesModelo VARCHAR(45)
);

CREATE TABLE SituacaoVeiculo (
    CdSituacao INTEGER PRIMARY KEY,
    DesSituacao VARCHAR(20)
);
 
ALTER TABLE Veiculo ADD CONSTRAINT FK_Veiculo_3
    FOREIGN KEY (Frabricante_CdFabricante)
    REFERENCES Fabricante (CdFabricante);
 
ALTER TABLE Veiculo ADD CONSTRAINT FK_Veiculo_4
    FOREIGN KEY (TipoCombustivel_CdCombustivel)
    REFERENCES TipoCombustivel (CdCombustivel);
 
ALTER TABLE Veiculo ADD CONSTRAINT FK_Veiculo_5
    FOREIGN KEY (ModeloVeiculo_cdModelo)
    REFERENCES ModeloVeiculo (CdModelo);
 
ALTER TABLE Veiculo ADD CONSTRAINT FK_Veiculo_6
    FOREIGN KEY (TipoVeiculo_CdTipoVeiculo)
    REFERENCES TipoVeiculo (CdTipoVeiculo);
 
ALTER TABLE Veiculo ADD CONSTRAINT FK_Veiculo_7
    FOREIGN KEY (SituacaoVeiculo_CdSituacao)
    REFERENCES SituacaoVeiculo (CdSituacao);
 
ALTER TABLE Funcionario ADD CONSTRAINT FK_Funcionario_3
    FOREIGN KEY (UF_CdUf)
    REFERENCES UF (CdUF);
 
ALTER TABLE Funcionario ADD CONSTRAINT FK_Funcionario_4
    FOREIGN KEY (Cargo_CdCargo)
    REFERENCES Cargo (CdCargo);
 
ALTER TABLE ManutencaoVeiculo ADD CONSTRAINT FK_ManutencaoVeiculo_3
    FOREIGN KEY (Veiculo_CdVeiculo)
    REFERENCES Veiculo (CdVeiculo);
 
ALTER TABLE LocacaoItemOpcional ADD CONSTRAINT FK_LocacaoItemOpcional_1
    FOREIGN KEY (Locacao_CdLocacao)
    REFERENCES Locacao (CdLocacao);
 
ALTER TABLE LocacaoItemOpcional ADD CONSTRAINT FK_LocacaoItemOpcional_2
    FOREIGN KEY (ItemOpcional_CdItemOpcional)
    REFERENCES ItemOpcional (CdOpcional);
 
ALTER TABLE Locacao ADD CONSTRAINT FK_Locacao_3
    FOREIGN KEY (Cliente_CdCliente)
    REFERENCES Cliente (CdCliente);
 
ALTER TABLE Locacao ADD CONSTRAINT FK_Locacao_4
    FOREIGN KEY (Funcionario_CdFuncionario)
    REFERENCES Funcionario (CodFuncionario);
 
ALTER TABLE Locacao ADD CONSTRAINT FK_Locacao_5
    FOREIGN KEY (Veiculo_CdVeiculo)
    REFERENCES Veiculo (CdVeiculo);
 
ALTER TABLE ServicoManutencao ADD CONSTRAINT FK_ServicoManutencao_1
    FOREIGN KEY (ManutencaoVeiculo_CdManutencao)
    REFERENCES ManutencaoVeiculo (CdManutencao);
 
ALTER TABLE ServicoManutencao ADD CONSTRAINT FK_ServicoManutencao_2
    FOREIGN KEY (ServicoManutencao)
    REFERENCES Servico (CdServico);
 
ALTER TABLE Cliente ADD CONSTRAINT FK_Cliente_2
    FOREIGN KEY (UF_CdUf)
    REFERENCES UF (CdUF);
 
ALTER TABLE Cliente ADD CONSTRAINT FK_Cliente_3
    FOREIGN KEY (EstadoCivil_CdEstadoCivil)
    REFERENCES EstadoCivil (cdEstadoCivil);
    