CREATE DATABASE db_construindo_a_nossa_vida;

USE db_construindo_a_nossa_vida;

CREATE TABLE tb_categoria(
id BIGINT AUTO_INCREMENT,
categoria VARCHAR(50),
PRIMARY KEY (id)
);

CREATE TABLE tb_produtos(
sub_categoria VARCHAR(30),
nome VARCHAR(30),
marca VARCHAR(30),
cor VARCHAR(10),
preco FLOAT,
cid BIGINT,
FOREIGN KEY (cid) REFERENCES tb_categoria(id)
);

INSERT INTO tb_categoria (categoria) VALUES
("Pisos e Revestimentos"), ("Tintas e Acessórios"), ("Materias de construção"), ("Ferramentas"), ("Iluminação"), ("Elétrica");

INSERT INTO tb_produtos (sub_categoria, nome, marca, cor, preco, cid) VALUES
("Rejuntes", "Rejunte Acrílico", "Quartzolite", "Marrom", 39.57, 1),
("Blocos", "Tijolo comum", "ABareias", "Vermelho", 8.63, 3),
("Luminárias", "Arandela Bel", "EmaLustre", "Preto", 106.68, 5),
("Fios e Cabos", "Cabo Flexível 2,50mm 100m 750V", "Sil", "Vermelho", 242.49, 6),
("Esmalte", "Esmalte Sintético", "Coralar", "Branco", 69.74, 2),
("Acabamento", "Soleira", "Itabira", "Ocre", 27.64, 1),
("Pastilhas", "Vidro Cristal 30x30", "Colortil", "Verde", 17.45, 1),
("Luminárias", "Luminária de Mesa", "Spiralle", "Rosa", 58.19, 5),
("Manuais", "Machado Cabo de Fibra", "Brasford", "Azul", 96.99, 4);

SELECT * FROM tb_produtos WHERE preco > 50;

SELECT * FROM tb_produtos WHERE preco >3 and preco <60;

SELECT * FROM tb_produtos INNER JOIN tb_categoria ON tb_categoria.id = tb_produtos.cid;

SELECT tb_produtos.nome, tb_produtos.preco, tb_produtos.sub_categoria, tb_categoria.categoria FROM tb_produtos 
INNER JOIN tb_categoria ON tb_categoria.id = tb_produtos.cid;

SELECT * FROM tb_produtos INNER JOIN tb_categoria ON tb_categoria.id = tb_produtos.cid WHERE tb_produtos.cid = 1;
