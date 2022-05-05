-- DDL
-- CREATE
-- ALTER
-- DROP

create database db_classificados

use db_classificados

create table Usuarios 
(
id_usuario int primary key not null,
Nome Varchar (50) not null,
Numero Varchar (50),
Email Varchar (50)
)

create table Anuncios
(
id_anuncio int primary key not null,
titulo VARCHAR(50) NOT NULL,
descricao VARCHAR(100) NOT NULL,
preco FLOAT NULL,
FK_Criador INT NOT NULL,
FOREIGN KEY (FK_Criador) REFERENCES Usuarios (id_usuario)
)