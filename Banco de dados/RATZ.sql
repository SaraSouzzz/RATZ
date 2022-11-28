CREATE DATABASE ratz;
USE ratz;

CREATE TABLE usuario (
	id INT PRIMARY KEY AUTO_INCREMENT,
	nome VARCHAR(50),
    email VARCHAR(50),
    senha CHAR(8)
);
CREATE TABLE aviso (
	id INT PRIMARY KEY AUTO_INCREMENT,
	titulo VARCHAR(100),
	descricao VARCHAR(150),
	fk_usuario INT,
	FOREIGN KEY (fk_usuario) REFERENCES usuario(id)
);

CREATE TABLE Quiz(
idquiz int auto_increment primary key,
pontuacao int,
fk_usuario INT,
	FOREIGN KEY (fk_usuario) REFERENCES usuario(id)
);

-- alter table usuario add column sobrenome varchar(50);

select * from usuario;
select * from aviso;
select * from quiz;
