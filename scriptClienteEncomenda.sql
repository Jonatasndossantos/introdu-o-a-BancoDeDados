create database clienteEncomendas;

use clienteEncomendas;

create table Cliente(
	codigoCliente int not null primary key auto_increment,
    nome varchar(150) not null,
    telefone varchar(13) not null,
    endereco varchar(150) not null,
    email varchar(150) not null,
    cpf bigint not null,
    dtNascimento date not null
)engine = innoDB;

create table Encomendas(
	codigoEncomenda int not null primary key auto_increment,
    dt date not null,
    valorUnitario decimal(10,2) not null,
    valorTotal decimal(10,2) not null,
    quantidade int not null,
    statusEncomenda varchar(80) not null,
    codigoCliente int not null
)engine = innoDB;

alter table encomendas add constraint ClienteEncomenda
foreign key(codigoCliente) references cliente(codigoCliente);
