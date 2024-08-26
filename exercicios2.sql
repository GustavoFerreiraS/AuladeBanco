use bd2exercicios;

CREATE TABLE estudantes (
	id INT,
	nome varchar(255) NOT NULL,
	cidade varchar(255) NOT NULL
);

alter table estudantes
add primary key(id);

create table escritorios (
	id int(11) primary key auto_increment,
    localizacao varchar(255) not null,
    nome_responsavel varchar(255) not null,
    cpf_responsavel varchar(11) not null unique
);

create table autores (
	id int(11) primary key auto_increment,
    nome varchar(255) not null
);

create table artigos (
	id int(11) primary key auto_increment,
    nome varchar(255) not null,
    valor float not null,
    autor_id int(11) not null
);

alter table artigos
ADD FOREIGN KEY (autor_id) references autores(id);
