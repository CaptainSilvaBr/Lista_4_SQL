-- DDL
-- CREATE
-- ALTER
-- DROP

create database RedeSocial 
use RedeSocial

create table Usuarios 
(
id_usuario int primary key not null,
Nome Varchar (50) not null,
Senha Varchar (50),
Email Varchar (50)
)

create table Feeds
(
id_anuncio int primary key not null,
Postagens VARCHAR(50) NOT NULL,
Comentarios VARCHAR(100) NOT NULL,
Feed FLOAT NULL,
FK_Criador INT NOT NULL,
FOREIGN KEY (FK_Criador) REFERENCES Usuarios (id_usuario)
)