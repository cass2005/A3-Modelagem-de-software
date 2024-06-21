create database jogo;

use jogo;

/*Criação da tabela de Jogadores */

create table tb_rank(
idJogador INT NOT NULL PRIMARY KEY,
emailJogador VARCHAR(100),
senha VARCHAR(100));

create table fases(
idFase int not null primary key,
idchaves int not null,
buracos int not null);

create table chaves(
idchave int not null primary key);

create table gameplay(
idJogador int not null,
idFase int not null,
idchave int not null);

insert into tb_rank
values 
(1, 'hugo.meyer@gmail.com', 'testeSenha'),
(2, 'carlos@gmail.com', 'testeSenha2'),
(3, 'eduarda@gmail.com', 'testeSenha3'),
(4, 'joaopedro@gmail.com', 'testeSenha4');

insert into chaves
values 
(1),
(2),
(3),
(4),
(5),
(6);

insert into fases
values
(1, 1, 1),
(2, 2, 4),
(3, 3, 9),
(4, 4, 16),
(5, 5, 25),
(6, 6, 36);

alter table gameplay
add passou boolean, add derrota boolean;

insert into gameplay
values
(1, 1, 0, 0, 1),
(1, 1, 1, 1, 0),
(1, 2, 2, 1, 0),
(1, 3, 0, 0, 1),
(1, 3, 0, 0, 1),
(1, 3, 3, 1, 0),
(1, 4, 4, 0, 1),
(2, 1, 0, 0, 1),
(2, 1, 1, 1, 0),
(2, 2, 0, 0, 1),
(2, 2, 0, 0, 1),
(2, 2, 0, 0, 1),
(2, 2, 2, 1, 0),
(2, 3, 3, 1, 0),
(3, 1, 1, 1, 0),
(3, 2, 2, 1, 0),
(3, 3, 3, 1, 0),
(3, 4, 4, 1, 0),
(3, 5, 0, 0, 1),
(3, 5, 0, 0, 1),
(3, 5, 5, 1, 0),
(4, 1, 1, 1, 0),
(4, 2, 2, 1, 0),
(4, 3, 3, 1, 0),
(4, 4, 4, 1, 0),
(1, 5, 5, 1, 0),
(1, 6, 0, 0, 1),
(1, 6, 6, 1, 0);


select * from fases;

select * from tb_rank;

select * from gameplay;

select idJogador, sum(derrota) from gameplay group by idJogador;

select idFase, sum(passou) from gameplay group by idFase;