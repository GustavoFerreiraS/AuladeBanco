-- atividade 1
create database bd2exercicios;

use bd2exercicios;

create table usuarios (
	id int(11) primary key auto_increment,
	nome varchar(255) not null,
	email varchar(255) not null,
	senha varchar(255) not null,
	perfil varchar(255) not null
);

select * from usuarios;

insert into usuarios (nome, email, senha, perfil)
values ('André Neves', 'andre@andre.com.br', sha2('123456789',256), 'desenvolvedor');

insert into usuarios(nome, email, senha, perfil)
values('Luciene', 'lu@lu.com.br', sha2('987654321',256), 'administrador');

insert into usuarios(nome, email, senha, perfil)
values ('Ana', 'ana@ana.com.br', sha2('989898989', 256),'gerente');


create table carro (
  id int(11) primary key auto_increment,
  nome varchar(200) not null,
  valor int(11),
  endereco varchar(255)
);

rename table carro to carros;

alter table carros
modify column valor float(8,2);

alter table carros 
drop endereco;

alter table carros
add observacao text;

-- atividade 2--
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

