create table categorias(
	id_categoria int primary key auto_increment,
    nome_categoria varchar(100) not null
);

create table produto(
	id int primary key auto_increment,
    nome_produto varchar(100) not null,
    quantidade_produto int not null,
    valor decimal(10,2) not null,
    id_categoria int not null,
    
    foreign key (id_categoria) references categorias (id_categoria)
);

create table turmas(
	id_turma int primary key auto_increment,
    nome_turma varchar(10)
);

create table alunos(
	id_aluno int primary key auto_increment,
    nome_aluno varchar(100),
    id_turma int not null #,
    
    # foreign key (id_turma) references turmas(id_turma)
);

alter table alunos add foreign key (id_turma) references turmas(id_turma);