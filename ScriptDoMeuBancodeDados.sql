CREATE DATABASE samuelbancodedados_sql;
USE samuelbancodedados_sql;

CREATE TABLE filmes 
(
	id int unsigned not null auto_increment,
    nome varchar(45)  not null ,
    salario double not null default '0',
    departamento varchar(45) not null,
    PRIMARY KEY (id)
); 

CREATE TABLE Lista
(
id int unsigned not null auto_increment,
series_id int unsigned default null,
bombando varchar(45) not null default '',
lancamentos varchar(10) not null default '',
PRIMARY KEY (id), 
CONSTRAINT fk_series_filmes FOREIGN KEY (series_id) REFERENCES filmes (id)
);

CREATE TABLE populares
(
principal varchar(45) not null,
assistido double not null,
bombando double not null,
PRIMARY KEY (principal) 
);

ALTER TABLE filmes  CHANGE COLUMN departamento Aventura  varchar(45) not null;

DROP TABLE salarios;

CREATE INDEX Aventura ON filmes (Aventura);
CREATE INDEX nome ON filmes (nome(6));