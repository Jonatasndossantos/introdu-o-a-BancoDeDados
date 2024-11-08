create database LivrosAutoresCategoria;

use LivrosAutoresCategoria;

create table livros(
	isbn int not null primary key,
    titulo varchar(120) not null,
    dt date not null,
    editora varchar(120) not null,
    descricao varchar(500) not null,
    codigoCategoria int not null
)engine = innoDB;

create table categoria(
	codigoCategoria int not null primary key,
    nome varchar(120) not null,
    descricao varchar(300) not null
)engine = innoDB;

create table autores(
	codigoAutores int not null primary key,
    nome varchar(120) not null,
    nacionalidade varchar(120) not null
)engine = innoDB;

create table ter(
	codigoTer int not null primary key,
    codigoAutores int not null,
    isbn int not null
)engine = innoDB;

alter table ter add constraint livrosAutores
foreign key(codigoAutores) references Autores(codigoAutores);

alter table ter add constraint autoresLivros
foreign key(isbn) references Livros(isbn);

alter table livros add constraint livroCategoria
foreign key(codigoCategoria) references categoria(codigoCategoria);

describe livros;
describe categoria;

drop table ter;