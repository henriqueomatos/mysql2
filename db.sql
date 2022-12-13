-- Para listar os bancos de dados de um servidor --
SHOW DATABASES;

-- Para criar um banco de dados --
CREATE DATABASE fs06_teste;

-- Para excluir um banco de dados --
DROP DATABASE fs06_teste;


-- Para selecionar um banco de dados --
USE fs06_teste;

-- Para listar as tabelas de um banco de dados --
SHOW TABLES;

-- Para criar uma tabela --
CREATE TABLE tb_teste (
    id INT(11) PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(20) NOT NULL,
    email VARCHAR(40) NOT NULL
);

-- Para detalhar a estrutura de uma tabela --
DESC tb_teste;

-- Para deletar uma tabela --
DROP TABLE tb_teste;



CREATE TABLE tb_veiculo (
    id INT(11) PRIMARY KEY AUTO_INCREMENT,
    marca VARCHAR(20) NOT NULL,
    modelo VARCHAR(20) NOT NULL,
    ano INT(4) NOT NULL
);

-- Para alterar uma coluna --
ALTER TABLE tb_veiculo MODIFY ano INT(5) NOT NULL;


-- Manipulação de Dados --

-- Para inserir dados na tabela --
INSERT INTO tb_veiculo (ano, modelo, marca)
VALUES (2010, 'Celta', 'Chevrolet');

INSERT INTO tb_veiculo (ano, modelo, marca)
VALUES (2014, 'Classic', 'Chevrolet');

INSERT INTO tb_veiculo (ano, modelo, marca)
VALUES (2004, 'Gol', 'VolksWalgen');

INSERT INTO tb_veiculo (ano, modelo, marca)
VALUES (1998, 'Uno', 'Fiat');

INSERT INTO tb_veiculo (ano, modelo, marca)
VALUES (2014, 'C180', 'Mercedes');

INSERT INTO tb_veiculo (ano, modelo, marca)
VALUES (2015, 'Celta', 'Chevrolet');

INSERT INTO tb_veiculo (ano, modelo, marca)
VALUES (2021, 'Mobi', 'Fiat');


-- Para buscar dados na tabela --
SELECT * FROM tb_veiculo;

-- * vai selecionar todas as colunas --

SELECT marca, modelo FROM tb_veiculo;

SELECT modelo as Model, id as Identifier FROM tb_veiculo;


-- filtrando dados de uma tabela --
SELECT * FROM tb_veiculo WHERE marca='Chevrolet';

SELECT * FROM tb_veiculo WHERE ano >= 2014;

SELECT * FROM tb_veiculo WHERE marca='Chevrolet' OR marca='Fiat';

SELECT * FROM tb_veiculo WHERE ano BETWEEN 2014 AND 2022;


-- ordenar pelo ano
SELECT * FROM tb_veiculo   ORDER BY ano ;

-- filtrar todos os modelos que começam com C
SELECT * FROM tb_veiculo WHERE modelo LIKE 'c%';




CREATE TABLE tb_cliente (
    id INT(11) PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    cpf CHAR(11) NOT NULL UNIQUE
);

INSERT INTO tb_cliente (nome, email, cpf)
VALUES 
('Alessandro', 'ale@email.com', '12312312312'),
('Rafael', 'ale@email.com', '22312312312'),
('Michael', 'ale@email.com', '32312312312'),
('Victor', 'ale@email.com', '42312312312'),
('Guilherme', 'ale@email.com', '52312312312');



-- Para excluir dados de uma tabela --
DELETE FROM tb_cliente WHERE id=5;

-- Para editar dados de uma tabela --
UPDATE tb_cliente SET nome = 'Guilherme da Silva' WHERE id=5;


SELECT * FROM movies WHERE legenda LIKE '%I am happy%'

