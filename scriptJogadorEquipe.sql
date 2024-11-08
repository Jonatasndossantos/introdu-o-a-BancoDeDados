create database JogadoresEquipe;

use jogadoresEquipe;

create table jogador(
	codigoJogador int not null primary key auto_increment,
    nome varchar(120) not null,
    telefone varchar(13) not null,
    posicao varchar(120) not null,
    dtEntrada date,
    numero int not null,
    email varchar(150) not null,
    cpf bigint,
    codigoEquipe int not null
)engine = innoDB;

create table Equipe(
	codigoEquipe int not null primary key auto_increment,
    nome varchar(120) not null, 
    endereco varchar(150) not null,
    tamanho int
)engine = innoDB;

describe jogador;
describe equipe;

alter table jogador add constraint joga
foreign key(codigoEquipe) references Equipe(codigoEquipe);