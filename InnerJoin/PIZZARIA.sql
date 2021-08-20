create database db_pizzaria_legal;

USE db_pizzaria;

CREATE TABLE tb_categoria(
id BIGINT NOT NULL AUTO_INCREMENT,
cliente VARCHAR(50) NOT NULL,
endereco VARCHAR(255) NOT NULL,
refri BOOLEAN,
PRIMARY KEY (id)
);

CREATE TABLE tb_pizza(
tamanho VARCHAR(50) NOT NULL,
sabor VARCHAR(50) NOT NULL,
descricao VARCHAR(255) NOT NULL,
borda_recheada BOOLEAN,
preco FLOAT,
cid BIGINT NOT NULL,
FOREIGN KEY (cid) REFERENCES tb_categoria(id)
);

INSERT INTO tb_categoria (cliente, endereco, refri) VALUES
("Mariane", "Rua de trás, 00", false),
("Fulano", "Rua tal, 5", true),
("Agatha", "Rua das Figueiras, 25", true),
("Lucas", "Rua das borboletas, 7", false),
("Thiago", "Rua Ipe, 0", true);

INSERT INTO tb_pizza (tamanho, sabor, descricao, borda_recheada, preco, cid) VALUES
("Média", "Chocolate c/ Morango", "Chocolate com pedaços de morango e leite condensado", true, 35.99, 3),
("Grande", "Carne Seca", "Carne seca, acompanha molho de tomate e queijo cheddar", true, 51.99, 3),
("Média", "4 Queijos", "Mussarela, Provolone, Catupiry e Parmesão", false, 32.90, 1),
("Grande", "Frango Catupiry", "Frango desfiado com caturi e azeitona", true, 51.99, 5),
("Brotinho", "Carne seca", "Carne seca, acompanha molho de tomate e queijo cheddar", false, 15.50, 4),
("Brotinho", "Doce de leite c banana", "Doce de leite caseiro com rodelas de banana caramelizada", false, 15.50, 1),
("Grande", "Mussarela", "QUeijo mussarela com molho de tomate e azeitonas", false, 49.99, 2);

SELECT * FROM tb_pizza;

SELECT * FROM tb_pizza where preco > 45;

SELECT * FROM tb_pizza where preco > 29 and preco < 60;

SELECT * FROM tb_pizza where sabor like "%c%";

select tb_pizza.sabor, tb_pizza.preco, tb_categoria.cliente from tb_pizza
inner join tb_categoria on tb_categoria.id = tb_pizza.cid;

select tb_pizza.sabor, tb_pizza.preco, tb_categoria.cliente from tb_pizza 
inner join tb_categoria on tb_categoria.id = tb_pizza.cid where tb_pizza.sabor like "%Carne%";

