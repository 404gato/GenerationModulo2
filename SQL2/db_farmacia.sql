

USE db_farmacia_do_bem;

CREATE TABLE tb_categoria(
id BIGINT NOT NULL AUTO_INCREMENT,
cliente VARCHAR(255) NOT NULL,
cpf BIGINT(11) NOT NULL,
tipo INT NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE tb_produto(
nome VARCHAR(255) NOT NULL,
tipo VARCHAR(255),
tipo_remedio VARCHAR(255),
preco FLOAT,
cid BIGINT NOT NULL,
FOREIGN KEY (cid) REFERENCES tb_categoria (id)
);

INSERT INTO tb_categoria (cliente, cpf, tipo) VALUES
("Roberto", 34632478635, 1),
("Agatha", 12345678952, 1),
("Jessica",23456789356, 2),
("Matheus", 65498732156, 3);

INSERT INTO tb_produto(nome, tipo, tipo_remedio, preco, cid) VALUES
("Paracetamol", "Rémedio", "Comprimido", 4.90, 1),
("Dipirona", "Rémedio", "Gotas", 2.99, 1),
("Soro fisiológico", "Solução",null, 3.50, 2),
("Colírio", "Solução",null, 7.00, 2),
("BAND-aid", "Curativo",null, 5.60, 3);

SELECT * FROM tb_produto where preco > 50;

SELECT * FROM tb_produto where preco > 3 and preco < 60;

SELECT tb_produto.nome, tb_produto.preco FROM tb_produto where tb_produto.nome like "%b%";

SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_categoria.id = tb_produto.cid;

SELECT tb_categoria.cliente, tb_produto.nome, tb_produto.preco FROM tb_produto 
INNER JOIN tb_categoria ON tb_categoria.id = tb_produto.cid WHERE tb_produto.tipo LIKE "%rém";