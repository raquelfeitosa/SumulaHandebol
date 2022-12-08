CREATE database SumulaHandebol;
use SumulaHandebol;

CREATE table Time (
id_time INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
Nome varchar (100) Not Null,
Capitão varchar (100) Not Null
primary key (id_time),
);

Create table Tecnico (
id_tecnico INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
Nome varchar (100) Not Null,
Idade int not null,
Nacionalidade varchar (100) not null
primary key (id_tecnico)
);

Create table Medico (
id_Medico INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
Nome varchar (100) Not Null,
Idade int not null,
Nacionalidade varchar (100) not null
primary key(id_Medico)
);

create table diretor(id_diretor int auto_increment,
Nome varchar(100) not null, 
Idade int not null, 
Nacionalidade varchar(100) not null,
primary key(id_diretor)
);

create table advertencias(id_advertencias int auto_increment
nome_jogador varchar(20),
time_ varchar(20) ,
tempo time ,
desclassificacao varchar(20) ,
advertencias varchar(20) ,
id_partida int,
primary key(id_advertencias)
foreign key(id_partida)

);

create table Cadastro(id_cadastro  int auto_increment,
competicao varchar(20),
numero_do_jogo int, 
categoria varchar(20),
sexo varchar(20), 
Time_A varchar(20), 
Time_B varchar(20),
id_partida int,
primary key(id_cadastro)
foreign key(id_partida)
);



create table gols(
id_gols int auto_increment,
nome_jogador varchar(30),
time_ varchar(20),
tempo time,
gols varchar(20), 
id_partida int(11),
Primary Key(id_gols)
foreign key(id_partida),
);

create table time_partida(
id_time_fk int, 
id_partida_fk int);

Create table partida(
id_partida int auto_increment,
resultado varchar(20), 
Arbitro1 varchar(30), 
Arbitro2 varchar(30), 
cronometrista varchar(20), 
delegado varchar(20), 
data_ date ,
inicio time ,
termino time,
Primary Key(id_partida)
);

create table jogador (id_jogador int auto_increment,
nome varchar(20),
Camisa int,
idade int,
Nacionalidade varchar(20), 
telefone int,
Primary key(id_jogador)
);

create table jogador_advertencias(
id_jogador_fk int,
id_advertencias_fk int);

create table jogador_partida(
id_jogador_fk int,
id_partida_fk int);
