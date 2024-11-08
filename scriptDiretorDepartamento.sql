create database DiretorDepartamento;

use DiretorDepartamento;

create table Diretor(
	codigoDiretor int not null primary key auto_increment,
    nome varchar(120) not null,
    cpf bigint not null,
    telefone varchar(13) not null,
    email varchar(150) not null,
    endereco varchar(150) not null,
    dtNascimento date not null,
    codigoDepartamento int not null
)engine = innoDB;

create table Departamento(
	codigoDepartamento int not null primary key auto_increment,
    nome varchar(120) not null,
    descricao varchar(150) not null
)engine = innoDB;

describe diretor;
describe departamento;

alter table Diretor add constraint diretorDepartamento
foreign key(codigoDepartamento) references Departamento(codigoDepartamento);