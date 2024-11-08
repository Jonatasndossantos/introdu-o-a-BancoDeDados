create database autorLivro;

use autorLivro;
 
create table autor(
	codigoAutor int not null primary key auto_increment,
    nome varchar(120) not null,
    email varchar(150) not null,
    endereco varchar(150) not null,
    dtNascimento date not null,
    telefone varchar(13),
    cpf bigint
)engine = innoDB;

create table livro(
	codigoLivro int not null primary key,
    nome varchar(120) not null,
    descricao varchar(300) not null,
	precoUnitario Decimal(10,2) not null 
)engine = innoDB;

create table tem(
	codigoTem int not null primary key,
    codigoLivro int not null,
    codigoAutor int not null
)engine = innoDB;

alter table tem add constraint livroAutor
foreign key(codigoLivro) references livro(codigoLivro);

alter table tem add constraint autorLivro
foreign key(codigoAutor) references autor(codigoAutor);

