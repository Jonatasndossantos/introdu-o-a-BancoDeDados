create database SistemaVendaLivros;

use SistemaVendaLivros;

create table usuario(
	codigoUsuario int not null primary key,
	login varchar(150) not null,
    senha varchar(100) not null,
    nome varchar(120) not null,
    endereco varchar(150) not null,
    dtNascimento date not null,
    tipo varchar(120) not null
)engine = innoDB;

create table compra(
	codigoCompra int not null primary key auto_increment,
    descricao varchar(150) not null,
    quantidade int not null,
    valorUnitario decimal(10,2) not null,
    valorTotal decimal(10,2) not null,
    login varchar(150) not null
)engine = innoDB;

create table os(
	codigoOs int not null primary key auto_increment,
    codigoCompra int not null,
    ISBN int not null
)engine = innoDB;

create table livros(
	ISBN int not null primary key auto_increment,
    livro varchar(120) not null,
    autor varchar(120) not null,
    dt date not null,
    edicao varchar(120) not null,
    editora varchar(120) not null
)engine = innoDB;

create table reserva(
	codigoReserva int not null primary key auto_increment,
    codigoUsuario int not null,
    livro varchar(120) not null,
    dt date not null,
    autor varchar(120) not null,
    ISBN int not null
)engine = innoDB;

describe livros;

alter table reserva add constraint usuarioReserva
foreign key(codigoUsuario) references Usuario(codigoUsuario);

alter table reserva add constraint reservaLivros
foreign key(ISBN) references livros(ISBN);

alter table os add constraint compraLivros
foreign key(codigoCompra) references compra(codigoComra);

alter table os add constraint livrosCompra
foreign key(ISBN) references livros(ISBN);