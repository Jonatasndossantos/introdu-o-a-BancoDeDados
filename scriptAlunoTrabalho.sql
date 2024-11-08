create database AlunoTrabalho;

use AlunoTrabalho;

create table aluno(
	codigoAluno int not null primary key auto_increment,
    nome varchar(120) not null,
    telefone varchar(13) not null,
    endereco varchar(150) not null,
    dtNascimento date not null
)engine = innoDB;

create table trabalho(
	codigoTrabalho int not null primary key auto_increment,
    titulo varchar(120) not null,
    disciplina varchar(45) not null,
    professor varchar(120) not null
)engine = innoDB;

create table fazer(
	codigoFazer int not null primary key auto_increment,
    codigoAluno int not null,
    codigoTrabalho int not null
)engine = innoDB;

alter table fazer add constraint alunoTrabalho
foreign key(codigoAluno) references aluno(codigoAluno);

alter table fazer add constraint trabalhoAluno
foreign key(codigoTrabalho) references trabalho(codigoTrabalho);

