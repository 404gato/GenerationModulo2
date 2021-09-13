create database db_generation_game_online;
use db_generation_game_online;

create table tb_classe(
id INT PRIMARY KEY AUTO_INCREMENT,
tipo VARCHAR(30) NOT NULL,
vantagem VARCHAR(100) NOT NULL,
desvantagem VARCHAR(100) NOT NULL,
imunidade VARCHAR(100) NOT NULL
);

CREATE TABLE tb_personagens(
nome VARCHAR(30) NOT NULL,
ataque INT NOT NULL,
defesa INT NOT NULL,
vida INT NOT NULL,
tipo1 VARCHAR(15),
tipo2 VARCHAR(15),
id_tipo INT NOT NULL,
foreign key (id_tipo) references tb_classe(id)
);

INSERT INTO tb_classe (tipo, vantagem, desvantagem, imunidade) VALUES
("Planta", "Pedra, Terra, Água", "Fogo, Gelo, Venenoso, Voador", "Ataques de pó"),
("Fogo", "Planta, Ferro, Inseto, Gelo", "Água, Pedra, Terra", "Ataque Queimado"),
("Água", "Fogo, Terra, Pedra", "Planta, Elétrico", "Não possuem"),
("Elétrico", "Água, Voador", "Terra", "Ataque Paralizado"),
("Fantasma", "Psiquico, Fantasma", "Fantasma, Sombrio/Noturno", "Normal/Comum, Lutador");

INSERT INTO tb_personagens(nome, ataque, defesa, vida, tipo1, tipo2, id_tipo) VALUES
("Bulbassauro", 60, 40, 110, "Planta", "Venenoso", 1),
("Pikachu", 30, 20, 110, "Elétrico",null, 4),
("Charizard", 70, 50, 180, "Fogo","Voador", 2),
("Magneton", 60, 50, 130, "Elétrico", "Aço", 4),
("Blastoise", 70, 50, 180,"Água",null, 3),
("Oddish", 15, 10, 80,"Planta", "Venenoso", 1),
("Haunter", 60, 40, 120,"Fantasma", "Venenoso", 5),
("Poliwag", 40, 20, 100,"Água",null, 3);

select * from tb_personagens;
select * from tb_classe;

select * from tb_personagens where ataque > 50;

select * from tb_personagens where defesa >= 10 and defesa <= 20;

select * from tb_personagens where nome like "%c%";

select * from tb_personagens inner join tb_classe on tb_classe.id = tb_personagens.id_tipo;

select tb_personagens.nome, tb_classe.tipo, tb_personagens.tipo2, tb_personagens.id_tipo from tb_personagens
inner join tb_classe on tb_classe.id = tb_personagens.id_tipo;

select * from tb_personagens inner join tb_classe on tb_classe.id = tb_personagens.id_tipo
where tb_personagens.id_tipo = 3;


