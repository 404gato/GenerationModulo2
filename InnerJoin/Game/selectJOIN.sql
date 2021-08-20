use db_generation_game_online;

select * from tb_personagens where ataque > 2000;

select * from tb_personagens where defesa >= 1000 and defesa <= 2000;

select * from tb_personagens where nome like "%c%";

select * from tb_personagens inner join tb_classe on tb_classe.id = tb_personagens.classe_id;

select tb_personagens.nome, tb_personagens.subclasse, tb_classe.superclasse from tb_personagens
inner join tb_classe on tb_classe.id = tb_personagens.classe_id;

select * from tb_personagens inner join tb_classe on tb_classe.id = tb_personagens.classe_id
where tb_personagens.classe_id = 2;