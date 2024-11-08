create database escolaTINT; -- Criaçao de BD

use escolaTINT; -- Escolhendo o BD

create table aluno(
	codigoAluno int not null primary key auto_increment,
    nome        varchar(150) not null,
    telefone    varchar(13) not null,
    endereco    varchar(200) not null
)engine = innoDB;

create table trabalho(
	codigoTrabalho int not null primary key auto_increment,
    titulo         varchar(120) not null,
    disciplina     varchar(45) not null,
    professor      varchar(150) not null
)engine = innoDB;

create table fazer(
	codigoFazer int not null primary key auto_increment,
	codigoAluno int not null,
    codigoTrabalho int not null
)engine = innoDB;

-- Relacionamento entre as tables de acordo com o MER
alter table fazer add constraint fazerAluno -- exclusivo
foreign key(codigoAluno) references aluno(codigoAluno);

alter table fazer add constraint fazerTrabalho
foreign key(codigoTrabalho) references trabalho(codigoTrabalho);

-- COMANDOS PARA MODIFICAÇOES DE TABELA
drop table aluno; -- APAGA A TABELA INTEIRA
drop database escolaTINT; -- APAGA O BANCO DE DADOS INTEIRA

-- Descriçao
describe trabalho; -- Mostra dados
describe estudante; -- Mostra dados
select * from estudante; -- Visualiza dados
show tables; -- Visualiza as tabelas

-- Alter Table Modificaçoes
alter table aluno add notas decimal(5,2) not null; -- Adicionando colunas
alter table aluno change notas nota decimal(5,2) not null; -- Trocando a coluna
alter table aluno rename to estudante;
alter table estudante drop column nota;

-- inserção de Dados no Banco
insert into estudante(codigoAluno,nome,telefone,endereco)
values('','Allan', '11956563212','Avenida senador Vergueiro, 400'),
	  ('','João', '11956563212','Avenida senador Vergueiro, 400');
      
insert into trabalgo(codigoTrabalho
                     titulo        
                     disciplina    
                     professor)
values('','Banco de Dados','Banco de Dados','Claudinho'),
	  ('','Logica','Logica','Claudinho'),


      
select * from estudante;
select nome,telefone from estudante;
select telefone from estudante;

select * from estudante where nome = 'joao';
select * from estudante where nome like '%lan';
select * from estudante where nome like 'a%';
select * from estudante where nome like '%a%';
select * from estudante order by nome; --
select * from estudante order by nome desc;

-- UPDATE
update estudante set nome = 'Allan', telefone = '11555555' where codigoAluno = 1;
update estudante set telefone = '11977777' where nome = 'allan';
update estudante set nome = 'Estevão' where codigoAluno = 3;
update estudante set nome = 'Claudia' where codigoAluno = 4;
update estudante set nome = 'Luana' where codigoAluno = 5;
update estudante set nome = 'Bianca' where codigoAluno = 6;

-- Desativar a proteçãoct
set SQL_SAFE_UPDATES = 0; 

-- Excluir
delete from estudante;
delete from estudante where codigoAluno = 6;