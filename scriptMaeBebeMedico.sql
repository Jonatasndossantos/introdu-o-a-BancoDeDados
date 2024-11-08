create database MaeBebeMedico;

use MaeBebeMedico;

create table Bebe(
	codigoBebe int not null primary key auto_increment,
    codigoMae int not null,
    crmMedico int not null,
    nome varchar(120) not null,
    dtNascimento date not null,
    peso decimal(5,2) not null
)engine = innoDB;

create table Mae(
	codigoMae int not null primary key auto_increment,
    nome varchar(120) not null,
    endereco varchar(120) not null,
    telefone varchar(13) not null,
    dtNascimento date not null,
    cpf bigint not null
)engine = innoDB;

create table Medico(
	crmMedico int not null primary key auto_increment,
    nome varchar(120) not null,
    telefone varchar(13) not null,
    especialidade varchar(45)
)engine =innoDB;

alter table Bebe add constraint bebeMae
foreign key(codigoMae) references Mae(codigoMae);

alter table Bebe add constraint bebeMedico
foreign key(crmMedico) references Medico(crmMedico);