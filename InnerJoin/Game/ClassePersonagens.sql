create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id int primary key auto_increment,
superclasse varchar(50) not null,
habilidade varchar(50)
);

create table tb_personagens(
nome varchar(50) not null,
subclasse varchar(50),
raca varchar(50) not null,
ataque bigint,
defesa bigint,
classe_id int not null,
foreign key (classe_id) references tb_classe(id) 
);



select * from tb_classe;
select * from tb_personagens;

insert into tb_classe (superclasse, habilidade) values 
("Guerreiro", "Alto dano e sobrevivência"),
("Conjurador", "Alta sabedoria"),
("Especialista", "Alto nível de destreza"),
("Misto", "Alta habilidade específica");

insert into tb_personagens (nome, subclasse, raca, ataque, defesa, classe_id) values
("Phareman", "Bárbaro","Orc", 4300, 2000, 1),
("Olozor", "Mago", "Humano", 5000, 6000, 2),
("Aimon", "Assassino","Elfo", 3700, 1900, 3),
("Fralfyc", "Cavaleiro","Humano", 2500, 4000, 1),
("Xokx", "Bardo","Goblin", 1010, 2000,4),
("Garner", "Clérigo","Humano", 3900, 5700,2),
("Maknock", "Ladino","Meio-Orc", 6000, 3800,3),
("The Magnificent", "Paladino","Meio-Elfo", 700, 1100,4),
("Graycs", "Clérigo", "Anão", 2000, 3600,2),
("Aqinn", "Mago", "Meio-Anjo", 1034, 6700,2),
("Kiog", "Senhor da guerra", "Meio-Orc", 6700, 4000,1),
("Brogomath", "Assassino", "Demônio", 7800, 4700,3);