create database ClienteCompraProdutos;

use ClienteCompraProdutos;

create table Cliente(
	codigoCliente int not null primary key auto_increment,
    rg varchar(20) not null,
    nome varchar(120) not null,
    telefone varchar(13) not null,
    endereco varchar(150)    
)engine = innoDB;

create table Compra(
	codigoCompra int not null primary key auto_increment,
    dt date not null,
    valorUnitario decimal(10,2) not null,
    valorTotal decimal(10,2) not null,
    quantidade int not null,
    codigoCliente int not null
)engine = innoDB;

create table produtos(
	codigoProdutos int not null primary key auto_increment,
    nome varchar(120) not null,
    tipo varchar(60) not null,
    preco decimal(10,2) not null
)engine innoDB;

create table comprar(
	codigoComprar int not null primary key auto_increment,
	codigoCompra int not null,
    codigoProdutos int not null
)engine innoDB;


alter table compra add constraint ClienteCompra
foreign key(codigoCliente) references Cliente(codigoCliente);

alter table comprar add constraint CompraProdutos
foreign key(codigoCompra) references compra(codigoCompra);

alter table comprar add constraint ProdutosCompra
foreign key(codigoProdutos) references produtos(codigoProdutos);