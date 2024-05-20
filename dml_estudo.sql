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

alter table alunos add constraint primary key(id_aluno);

CREATE TABLE autores(
	id_autor INT PRIMARY KEY,
    nome_auto VARCHAR(100),
    nacionalidade VARCHAR(30)
);

CREATE TABLE livros(
	id_livro INT PRIMARY KEY,
    titulo VARCHAR(30),
    ano_publicacao DATE,
    id_autor INT,
    FOREIGN KEY (id_autor) REFERENCES autores(id_autor)
);

INSERT INTO autores VALUES
("1", "autor1", "brasileiro"),
("2", "autor2", "brasileiro"),
("3", "autor3", "portugues"),
("4", "autor4", "americano"),
("5", "autor5", "americado"),
("6", "autor6", "africano");

SELECT * FROM AUTORES;

CREATE TABLE autores2(
	id_autor INT PRIMARY KEY,
    nome_auto VARCHAR(100),
    nacionalidade VARCHAR(30)
);

INSERT INTO autores2
SELECT id_autor, nome_autor, nacionalidade FROM autores
WHERE nacionalidade IN ("americano", "portugues");

select * from autores2;

truncate autores2;

ALTER TABLE autores2 CHANGE COLUMN nome_auto nome_autor VARCHAR(100);

desc autores;

truncate autores2;

INSERT INTO autores2
SELECT id_autor, nome_autor, nacionalidade FROM autores
WHERE nacionalidade LIKE "%A%";



