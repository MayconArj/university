CREATE DATABASE ESTUDOS_BD;
USE ESTUDOS_BD;

CREATE TABLE ESTADO(
	SIGLA_EST VARCHAR(2) NOT NULL,
	NOME_EST VARCHAR(100) NOT NULL,
    PRIMARY KEY(SIGLA_EST)
);

CREATE TABLE MUNICIPIO(
	COD_MUN INT NOT NULL,
    NOME_MUN VARCHAR(100) NOT NULL,
    SIGLA_EST VARCHAR(2),
    PRIMARY KEY (COD_MUN),
    CONSTRAINT FK_EST FOREIGN KEY (SIGLA_EST) REFERENCES ESTADO (SIGLA_EST)
);

DESC MUNICIPIO;
DESC ESTADO;



create table alunos(
	id_aluno int,
    nome_aluno varchar(100) not null,
    email varchar(100) not null,
    primary key(id_aluno)
);

create table cursos(
	id_curso int,
    nome_curso varchar(100) not null,
    preco_curso decimal(10, 2) not null,
    primary key(id_curso)
);

create table matriculas(
	id_matricula int,
    id_aluno int not null,
    id_curso int not null,
    data_cadastro date not null,
    primary key(id_matricula),
    foreign key(id_aluno) references alunos(id_aluno), 
    foreign key(id_curso) references cursos(id_curso)
);

show tables;

desc alunos;

alter table alunos add telefone int;

alter table alunos change column telefon telefone int;

alter table alunos drop column telefone;

desc alunos;

alter table alunos modify column email varchar(150);

alter table alunos rename alunoss;

desc alunoss;

alter table alunoss rename alunos;

alter table alunoss add constraint email unique(email);

desc alunos;

alter table alunos drop primary key;

desc alunos;