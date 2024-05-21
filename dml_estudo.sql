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

select distinct nacionalidade from autores2;

create table alunos(
	id_aluno int primary key auto_increment,
    nome_aluno varchar(100),
    id_turma varchar(10)
);

create table turmas(
	id_turma int primary key auto_increment,
    nome_turma varchar(10)
);

alter table turmas add column dia varchar(15);

desc turmas;

INSERT INTO turmas (nome_turma, dia) VALUES
('laranja', 'segunda'),
('azul', 'terça'),
('raposa', 'quarta'),
('verde', 'quinta'),
('amarelo', 'sexta'),
('vermelho', 'sábado'),
('roxo', 'domingo'),
('azul', 'segunda'),
('laranja', 'terça'),
('raposa', 'quarta'),
('verde', 'quinta'),
('amarelo', 'sexta'),
('vermelho', 'sábado'),
('roxo', 'domingo'),
('azul', 'segunda'),
('laranja', 'terça'),
('raposa', 'quarta'),
('verde', 'quinta'),
('amarelo', 'sexta'),
('vermelho', 'sábado'),
('roxo', 'domingo'),
('azul', 'segunda'),
('laranja', 'terça'),
('raposa', 'quarta'),
('verde', 'quinta'),
('amarelo', 'sexta'),
('vermelho', 'sábado'),
('roxo', 'domingo'),
('azul', 'segunda'),
('laranja', 'terça'),
('raposa', 'quarta'),
('verde', 'quinta'),
('amarelo', 'sexta'),
('vermelho', 'sábado'),
('roxo', 'domingo'),
('azul', 'segunda'),
('laranja', 'terça'),
('raposa', 'quarta'),
('verde', 'quinta'),
('amarelo', 'sexta'),
('vermelho', 'sábado'),
('roxo', 'domingo'),
('azul', 'segunda'),
('laranja', 'terça'),
('raposa', 'quarta'),
('verde', 'quinta'),
('amarelo', 'sexta'),
('purpura', 'segunda');

select * from turmas;

drop table turmas;

INSERT INTO alunos (nome_aluno, id_turma) VALUES
('João', 1),
('Maria', 2),
('Pedro', 3),
('Ana', 4),
('Carlos', 5),
('Beatriz', 6),
('Ricardo', 7),
('Fernanda', 8),
('Lucas', 9),
('Juliana', 10),
('Gabriel', 11),
('Mariana', 12),
('Thiago', 13),
('Amanda', 14),
('Rafael', 15),
('Larissa', 16),
('Daniel', 17),
('Tatiane', 18),
('Felipe', 19),
('Camila', 20),
('Gustavo', 21),
('Paula', 22),
('Mateus', 23),
('Patrícia', 24),
('Eduardo', 25),
('Renata', 26),
('Leonardo', 27),
('Vanessa', 28),
('Bruno', 29),
('Carla', 30),
('Rodrigo', 31),
('Simone', 32),
('Marcos', 33),
('Aline', 34),
('Vinícius', 35),
('Sara', 36),
('André', 37),
('Isabela', 38),
('Marcelo', 39),
('Luciana', 40),
('Henrique', 41),
('Rita', 42),
('Fernando', 43),
('Bianca', 44),
('Roberto', 45),
('Claudia', 46),
('Paulo', 47),
('Daniela', 48),
('Fábio', 49);

INSERT INTO alunos (nome_aluno, id_turma) VALUES
('João', FLOOR(1 + RAND() * 48)),
('Maria', FLOOR(1 + RAND() * 48)),
('Pedro', FLOOR(1 + RAND() * 48)),
('Ana', FLOOR(1 + RAND() * 48)),
('Carlos', FLOOR(1 + RAND() * 48)),
('Beatriz', FLOOR(1 + RAND() * 48)),
('Ricardo', FLOOR(1 + RAND() * 48)),
('Fernanda', FLOOR(1 + RAND() * 48)),
('Lucas', FLOOR(1 + RAND() * 48)),
('Juliana', FLOOR(1 + RAND() * 48)),
('Gabriel', FLOOR(1 + RAND() * 48)),
('Mariana', FLOOR(1 + RAND() * 48)),
('Thiago', FLOOR(1 + RAND() * 48)),
('Amanda', FLOOR(1 + RAND() * 48)),
('Rafael', FLOOR(1 + RAND() * 48)),
('Larissa', FLOOR(1 + RAND() * 48)),
('Daniel', FLOOR(1 + RAND() * 48)),
('Tatiane', FLOOR(1 + RAND() * 48)),
('Felipe', FLOOR(1 + RAND() * 48)),
('Camila', FLOOR(1 + RAND() * 48)),
('Gustavo', FLOOR(1 + RAND() * 48)),
('Paula', FLOOR(1 + RAND() * 48)),
('Mateus', FLOOR(1 + RAND() * 48)),
('Patrícia', FLOOR(1 + RAND() * 48)),
('Eduardo', FLOOR(1 + RAND() * 48)),
('Renata', FLOOR(1 + RAND() * 48)),
('Leonardo', FLOOR(1 + RAND() * 48)),
('Vanessa', FLOOR(1 + RAND() * 48)),
('Bruno', FLOOR(1 + RAND() * 48)),
('Carla', FLOOR(1 + RAND() * 48)),
('Rodrigo', FLOOR(1 + RAND() * 48)),
('Simone', FLOOR(1 + RAND() * 48)),
('Marcos', FLOOR(1 + RAND() * 48)),
('Aline', FLOOR(1 + RAND() * 48)),
('Vinícius', FLOOR(1 + RAND() * 48)),
('Sara', FLOOR(1 + RAND() * 48)),
('André', FLOOR(1 + RAND() * 48)),
('Isabela', FLOOR(1 + RAND() * 48)),
('Marcelo', FLOOR(1 + RAND() * 48)),
('Luciana', FLOOR(1 + RAND() * 48)),
('Henrique', FLOOR(1 + RAND() * 48)),
('Rita', FLOOR(1 + RAND() * 48)),
('Fernando', FLOOR(1 + RAND() * 48)),
('Bianca', FLOOR(1 + RAND() * 48)),
('Roberto', FLOOR(1 + RAND() * 48)),
('Claudia', FLOOR(1 + RAND() * 48)),
('Paulo', FLOOR(1 + RAND() * 48)),
('Daniela', FLOOR(1 + RAND() * 48)),
('Fábio', FLOOR(1 + RAND() * 48)),
('Monique', FLOOR(1 + RAND() * 48)),
('Gabriela', FLOOR(1 + RAND() * 48)),
('Sandro', FLOOR(1 + RAND() * 48)),
('Vera', FLOOR(1 + RAND() * 48)),
('Sofia', FLOOR(1 + RAND() * 48)),
('Cristiano', FLOOR(1 + RAND() * 48)),
('Débora', FLOOR(1 + RAND() * 48)),
('Márcio', FLOOR(1 + RAND() * 48)),
('Clarissa', FLOOR(1 + RAND() * 48)),
('Silvia', FLOOR(1 + RAND() * 48)),
('Raquel', FLOOR(1 + RAND() * 48)),
('Fabiana', FLOOR(1 + RAND() * 48)),
('Otávio', FLOOR(1 + RAND() * 48)),
('Helena', FLOOR(1 + RAND() * 48)),
('Renan', FLOOR(1 + RAND() * 48)),
('Diana', FLOOR(1 + RAND() * 48)),
('Francisco', FLOOR(1 + RAND() * 48)),
('Tânia', FLOOR(1 + RAND() * 48)),
('Joana', FLOOR(1 + RAND() * 48)),
('Sérgio', FLOOR(1 + RAND() * 48)),
('Bernardo', FLOOR(1 + RAND() * 48)),
('Larissa', FLOOR(1 + RAND() * 48)),
('Antônio', FLOOR(1 + RAND() * 48)),
('Jéssica', FLOOR(1 + RAND() * 48)),
('Murilo', FLOOR(1 + RAND() * 48)),
('Natália', FLOOR(1 + RAND() * 48)),
('Renato', FLOOR(1 + RAND() * 48)),
('Lúcia', FLOOR(1 + RAND() * 48)),
('Helder', FLOOR(1 + RAND() * 48)),
('Priscila', FLOOR(1 + RAND() * 48)),
('Cláudio', FLOOR(1 + RAND() * 48)),
('Guilherme', FLOOR(1 + RAND() * 48)),
('Carolina', FLOOR(1 + RAND() * 48)),
('Cristina', FLOOR(1 + RAND() * 48)),
('Murilo', FLOOR(1 + RAND() * 48)),
('Verônica', FLOOR(1 + RAND() * 48)),
('Rogério', FLOOR(1 + RAND() * 48)),
('Célia', FLOOR(1 + RAND() * 48)),
('Flávio', FLOOR(1 + RAND() * 48)),
('Daniel', FLOOR(1 + RAND() * 48)),
('Mônica', FLOOR(1 + RAND() * 48)),
('Álvaro', FLOOR(1 + RAND() * 48)),
('Eliana', FLOOR(1 + RAND() * 48)),
('Denise', FLOOR(1 + RAND() * 48)),
('Cristiano', FLOOR(1 + RAND() * 48)),
('Manuela', FLOOR(1 + RAND() * 48)),
('Nelson', FLOOR(1 + RAND() * 48)),
('Alex', FLOOR(1 + RAND() * 48)),
('Regina', FLOOR(1 + RAND() * 48)),
('Tatiane', FLOOR(1 + RAND() * 48)),
('Gustavo', FLOOR(1 + RAND() * 48)),
('Cássio', FLOOR(1 + RAND() * 48)),
('Clarice', FLOOR(1 + RAND() * 48)),
('Marcelo', FLOOR(1 + RAND() * 48)),
('Eliane', FLOOR(1 + RAND() * 48)),
('Gerson', FLOOR(1 + RAND() * 48)),
('Yara', FLOOR(1 + RAND() * 48)),
('Mário', FLOOR(1 + RAND() * 48)),
('Viviane', FLOOR(1 + RAND() * 48)),
('Igor', FLOOR(1 + RAND() * 48)),
('Adriana', FLOOR(1 + RAND() * 48)),
('Rodolfo', FLOOR(1 + RAND() * 48)),
('Diana', FLOOR(1 + RAND() * 48)),
('Maurício', FLOOR(1 + RAND() * 48)),
('Marta', FLOOR(1 + RAND() * 48)),
('Anderson', FLOOR(1 + RAND() * 48)),
('Fernanda', FLOOR(1 + RAND() * 48)),
('César', FLOOR(1 + RAND() * 48)),
('Marisa', FLOOR(1 + RAND() * 48)),
('Gilberto', FLOOR(1 + RAND() * 48)),
('Rafaela', FLOOR(1 + RAND() * 48)),
('Rafael', FLOOR(1 + RAND() * 48)),
('Evelyn', FLOOR(1 + RAND() * 48)),
('Hugo', FLOOR(1 + RAND() * 48)),
('Mariana', FLOOR(1 + RAND() * 48)),
('Edson', FLOOR(1 + RAND() * 48)),
('Raul', FLOOR(1 + RAND() * 48)),
('Elaine', FLOOR(1 + RAND() * 48)),
('Davi', FLOOR(1 + RAND() * 48)),
('Patrícia', FLOOR(1 + RAND() * 48)),
('Julio', FLOOR(1 + RAND() * 48)),
('Camilo', FLOOR(1 + RAND() * 48)),
('Amanda', FLOOR(1 + RAND() * 48)),
('Leandro', FLOOR(1 + RAND() * 48)),
('Milena', FLOOR(1 + RAND() * 48)),
('Adriano', FLOOR(1 + RAND() * 48)),
('Valéria', FLOOR(1 + RAND() * 48)),
('Breno', FLOOR(1 + RAND() * 48)),
('Giovana', FLOOR(1 + RAND() * 48)),
('Leila', FLOOR(1 + RAND() * 48)),
('Renan', FLOOR(1 + RAND() * 48)),
('Nádia', FLOOR(1 + RAND() * 48)),
('Augusto', FLOOR(1 + RAND() * 48)),
('Juliana', FLOOR(1 + RAND() * 48)),
('Valter', FLOOR(1 + RAND() * 48)),
('Sônia', FLOOR(1 + RAND() * 48)),
('Filipe', FLOOR(1 + RAND() * 48)),
('Clarice', FLOOR(1 + RAND() * 48)),
('Ricardo', FLOOR(1 + RAND() * 48)),
('Lara', FLOOR(1 + RAND() * 48)),
('Henrique', FLOOR(1 + RAND() * 48)),
('Ana', FLOOR(1 + RAND() * 48)),
('Francisco', FLOOR(1 + RAND() * 48)),
('Yasmin', FLOOR(1 + RAND() * 48)),
('Roberta', FLOOR(1 + RAND() * 48)),
('José', FLOOR(1 + RAND() * 48)),
('Teresa', FLOOR(1 + RAND() * 48)),
('Diego', FLOOR(1 + RAND() * 48)),
('Sandra', FLOOR(1 + RAND() * 48)),
('Alexandre', FLOOR(1 + RAND() * 48)),
('Luiza', FLOOR(1 + RAND() * 48)),
('Raquel', FLOOR(1 + RAND() * 48)),
('Bruno', FLOOR(1 + RAND() * 48)),
('Júlio', FLOOR(1 + RAND() * 48)),
('Cláudia', FLOOR(1 + RAND() * 48)),
('Eduardo', FLOOR(1 + RAND() * 48)),
('Felícia', FLOOR(1 + RAND() * 48)),
('Sabrina', FLOOR(1 + RAND() * 48)),
('Otávio', FLOOR(1 + RAND() * 48)),
('Natália', FLOOR(1 + RAND() * 48));

select nome_turma, count(id_turma) as total from turmas 
group by nome_turma
order by total asc;