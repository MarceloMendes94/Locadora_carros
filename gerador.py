import random

nomes=['Miguel','Arthur' ,'Davi','Gabriel','Heitor','Bernardo',
'Samuel' 'Guilherme','Marcos','Jośe','Edimar','Luciano','Rodrigo',
'Emanuel','Enzo','philipe','Luiz','Helena','Anne','Marcia','Marta'
'Andressa','Giseli','Maria','Rosa','Luciana','Thais','Tais','Carla',
'Carina','Karina','Julia','Juliana','Carolina','Débora']

sobrenomes = ['Almeida', 'Azevedo', 'Braga','Barros', 'Campos',
'Cardoso','Correia','Castro','Costa','Fontes','Guimarães',
'Magalhães','Macedo','Matos' ,'Pedreira','Queirós',
'Ribeiro', 'Rocha','Siqueira', 'Serra', 'Souza', 'Teixeira',
'Valle','Santos','Silva',"Araújo","Lins",'Mattarazzo',
'Semenzato','Paiffer','Diniz']

ruas=['Bahia','Vitória','Botafogo','Vasco da Gama','Beira rio','Beira mar','Colonial',"Guarani"]

emails=["@yahoo.com",'@gmail.com','@outlook.com','@live.com']

def g_nome(lst_nomes):
    nome = f'{random.choice(nomes)} {random.choice(sobrenomes)}'
    while(nome in lst_nomes):
        nome = f'{random.choice(nomes)} {random.choice(sobrenomes)}'
    lst_nomes.append(nome) 

    return lst_nomes

def g_celular(lst_celular):
    celular = f'{random.randint(90000,99999)}-{random.randint(1000,9999)}'
    while(celular in lst_celular):
        celular = f'{random.randint(90000,99999)}-{random.randint(1000,9999)}'
    lst_celular.append(celular)
    return lst_celular

def g_telefone(lst_telefone):
    telefone_fixo = f'{random.randint(3001,3998)}-{random.randint(1000,9999)}'
    while(telefone_fixo in lst_telefone):
        telefone_fixo = f'{random.randint(3001,3998)}-{random.randint(1000,9999)}'
    lst_telefone.append(telefone_fixo)
    return lst_telefone

def g_endereco(lst_endereco):
    endereco = f'{random.choice(["Rua","Avenida"])} {random.choice(ruas)}, n°{random.randint(1,999)}.'
    while(endereco in lst_endereco):
        endereco = f'{random.choice(["Rua","Avenida"])} {random.choice(ruas)}, n°{random.randint(1,999)}.'
    lst_endereco.append(endereco) 
    return lst_endereco

def g_cpf(lst_cpf):
    cpf = random.randint(10000000000,99999999999)
    while(cpf in lst_cpf):
        cpf = random.randint(10000000000,99999999999)
    lst_cpf.append(cpf) 

    return lst_cpf

def dt_nascimento(lst_dtnasc):
    lst_dtnasc.append(f'{random.randint(1953,2002)}-{random.randint(1,11)}-{random.randint(1,28)}')
    return lst_dtnasc

def g_email(lst_email,nome):
    lst_email.append(f'{nome[0].replace(" ", "")}{random.choice(emails)}')
    return lst_email

def g_matricula(lst_mat):
    matricula = random.randint(1000000000,999999999)
    while matricula in lst_mat:
        matricula = random.randint(1000000000,999999999)
    lst_mat.append(matricula)    
    return lst_mat

def gerador_clientes(n):

    lst_nomes = []
    lst_cpf = []
    lst_celular = []
    lst_telefone = []
    lst_endereco = []
    lst_dtnasc = []
    lst_email = []

    for i in range(n):

        lst_cpf = g_cpf(lst_cpf)
        lst_nomes = g_nome(lst_nomes)
        lst_telefonelst_telefone = g_telefone(lst_telefone)
        lst_celular = g_celular(lst_celular)     
        lst_endereco = g_endereco(lst_endereco)
        lst_dtnasc = dt_nascimento(lst_dtnasc)
        lst_email = g_email(lst_email,lst_nomes[-1:])


    return [lst_nomes,lst_cpf,lst_celular,lst_telefone,lst_endereco,lst_dtnasc,lst_email]




#EstadoCivil 1234
#TABLE UF 1 27
#TipoCombustivel 1,2,3
#Fabricante  1 2 3 4 5 6
#ModeloVeiculo 1 2 3 4 5 6 7  8 9 10
#Cargo   1 2
#ItemOpcional 1
#Servico 1234
#SituacaoVeiculo 1234 

#TipoVeiculo 


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

CREATE TABLE ManutencaoVeiculo (
    CdManutencao INTEGER PRIMARY KEY UNIQUE,
    DtSaida DATE,
    DtRetorno DATE,
    Veiculo_CdVeiculo INTEGER
);

CREATE TABLE ServicoManutencao (
    DtConclusao DATE,
    Observacoes LONGTEXT,
    ManutencaoVeiculo_CdManutencao INTEGER,
    ServicoManutencao INTEGER
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



