CREATE DATABASE DBApi

use DBApi

create table Usuario(
idUsuario int primary key identity(1,1),
documento varchar(60),
nombres varchar(60),
apellidos varchar(60),
telefono varchar(60), 
correo varchar(60),
ciudad varchar(60),
fechaRegistro datetime 
)