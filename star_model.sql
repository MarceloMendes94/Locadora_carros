/* Star_model: */

CREATE TABLE fato (
    pk INTEGER PRIMARY KEY,
    dim_cliente INTEGER,
    dim_funcionario INTEGER,
    dim_veiculo INTEGER,
    dim_item_opl INTEGER,
    KmInicial INTEGER,
    KmFinal INTEGER,
    VlrDiaria DECIMAL(10,2),
    DtInicio INTEGER,
    DtFim INTEGER
);

CREATE TABLE dim_data (
    pk INTEGER PRIMARY KEY,
    data_completa DATE,
    dia_semana INTEGER,
    dia_mes INTEGER,
    dia_semana_escrito VARCHAR(20),
    mes INTEGER,
    mes_escrito VARCHAR(20),
    ano INTEGER
);

CREATE TABLE dim_cliente (
    pk INTEGER PRIMARY KEY,
    NmCliente VARCHAR(50),
    Cpf VARCHAR(11),
    DtNascimento DATE,
    EstadoCivil VARCHAR(20),
    UF VARCHAR(45)
);

CREATE TABLE dim_funcionario (
    pk INTEGER PRIMARY KEY,
    NmFunc VARCHAR(50),
    Matricula VARCHAR(35),
    Cpf VARCHAR(11),
    UF VARCHAR(45),
    Cargo VARCHAR(40)
);

CREATE TABLE dim_veiculo (
    pk INTEGER PRIMARY KEY,
    Modelo VARCHAR(45),
    Fabricante VARCHAR(45),
    Placa VARCHAR(10),
    Situacao VARCHAR(35),
    Combustivel VARCHAR(30),
    AnoFabricacao YEAR(4),
    Chassi VARCHAR(20)
);

CREATE TABLE dim_item_op (
    pk INTEGER PRIMARY KEY,
    Item VARCHAR(45),
    VlrDiaria DECIMAL(10,2)
);

ALTER TABLE fato ADD CONSTRAINT FK_fato_1
    FOREIGN KEY (DtInicio)
    REFERENCES dim_data (pk);
 
ALTER TABLE fato ADD CONSTRAINT FK_fato_2
    FOREIGN KEY (DtFim)
    REFERENCES dim_data (pk);

ALTER TABLE fato ADD CONSTRAINT FK_fato_3
    FOREIGN KEY (dim_cliente)
    REFERENCES dim_cliente (pk);
 
ALTER TABLE fato ADD CONSTRAINT FK_fato_4
    FOREIGN KEY (dim_funcionario)
    REFERENCES dim_funcionario (pk);
 
ALTER TABLE fato ADD CONSTRAINT FK_fato_5
    FOREIGN KEY (dim_veiculo)
    REFERENCES dim_veiculo (pk);
 
ALTER TABLE fato ADD CONSTRAINT FK_fato_6
    FOREIGN KEY (dim_item_opl)
    REFERENCES dim_item_op (pk);