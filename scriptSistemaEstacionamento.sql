create database SistemaEstacionamento;

use SistemaEstacionamento;

create table mensalista(
	codigoMensalista int not null primary key auto_increment,
	nome varchar(120) not null,
    dtNascimento date not null,
    endereco varchar(150) not null,
    telefone varchar(13) not null,
    dtPagamento date not null,
    preco decimal(10,2) not null
)engine = innoDB;

create table carro(
	codigoCarro int not null primary key auto_increment,
    modelo varchar(120) not null,
    placa varchar(80) not null,
    cor varchar(80) not null,
    codigoMensalista int not null
)engine = innoDB;

create table entradaSaida(
	codigoEntrada int not null primary key auto_increment,
    nome varchar(120) not null,
    dtHoraEntrada datetime not null,
    dtHoraSaida datetime not null,
    preco decimal(10,2) not null,
    codigoCarro int not null,
    codigoFuncionario int not null
)engine = innoDB;

create table Funcionario(
	codigoFuncionario int not null primary key auto_increment,
    nome varchar(120) not null,
    dtNascimento date not null,
    telefone varchar(13) not null,
    endereco varchar(150) not null,
    salario decimal(10,2) not null,
    cargo varchar(45) not null
)engine = innoDB;

create table relatorio(
	codigoRelatorio int not null primary key auto_increment,
    entradas int not null,
    saidas int not null,
    funcionarios int not null,
    carros int not null,
    valor decimal(12,2) not null,
    dt date not null,
    codigoFuncionario int not null
)engine = innoDB;

alter table carro add constraint carroMensalista
foreign key(codigoMensalista) references Mensalista(codigoMensalista);

alter table entradaSaida add constraint entradaSaidaCarro
foreign key(codigoCarro) references carro(codigoCarro);

alter table entradaSaida add constraint entradaSaidaFuncionario
foreign key(codigoFuncionario) references Funcionario(codigoFuncionario);

alter table relatorio add constraint relatorioFuncionario
foreign key(codigoFuncionario) references Funcionario(codigoFuncionario);