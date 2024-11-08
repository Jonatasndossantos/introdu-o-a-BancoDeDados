create database SistemaAgendamentoConsultas;

use SistemaAgendamentoConsultas;

create table pontuario(
	codigoPontuario int not null primary key auto_increment,
    codigoPessoa int not null,
    codigoMedico int not null,
    dt date not null,
    diagnostico varchar(120) not null,
    tratamento varchar(120) not null,
    observacoes varchar(200) not null
)engine = innoDb;

create table Medico(
	codigoMedico int not null primary key auto_increment,
    nome varchar(120) not null,
    dtNascimento date not null,
    endereco varchar(150) not null,
    telefone varchar(13) not null,
    cargo varchar(80) not null,
    especialidade varchar(80) not null,
    crm int not null
)engine = innoDB;

create table consulta(
	codigoConsulta int not null primary key auto_increment,
    dtHora datetime not null,
    sintomas varchar(300) not null,
    diagnostico varchar(150) not null,
    resultado varchar(120) not null,
    codigoPessoa int not null,
    codigoMedico int not null
)engine = innoDB;

create table Pessoa(
	codigoPessoa int not null primary key auto_increment,
    nome varchar(120) not null,
    dtNascimento date not null,
    endereco varchar(150) not null,
    telefone varchar(13) not null,
    statu varchar(80) not null
)engine = innoDB;

create table exame(
	codigoExame int not null primary key auto_increment,
    tipo varchar(120) not null,
    dtHora datetime not null,
    endereco varchar(120) not null,
    statu varchar(120) not null,
    resultado varchar(120) not null,
    codigoPessoa int not null
)engine = innoDB;

alter table pontuario add constraint pontuarioPessoa
foreign key(codigoPessoa) references Pessoa(codigoPessoa);

alter table pontuario add constraint pontuarioMedico
foreign key(codigoMedico) references Medico(codigoMedico);

alter table consulta add constraint consultaPessoa
foreign key(codigoPessoa) references Pessoa(codigoPessoa);

alter table consulta add constraint consultaMedico
foreign key(codigoMedico) references Medico(codigoMedico);

alter table exame add constraint examePessoa
foreign key(codigoPessoa) references Pessoa(codigoPessoa);