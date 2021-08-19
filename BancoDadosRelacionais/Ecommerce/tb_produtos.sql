/*Crie um banco de dados para um e commerce, onde o sistema trabalhará com as
informações dos produtos deste ecommerce.
Crie uma tabela produtos e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos produtos para se trabalhar com o serviço deste ecommerce.
Popule esta tabela com até 8 dados;
Faça um select que retorne os produtos com o valor maior do que 500.
Faça um select que retorne os produtos com o valor menor do que 500.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.*/

create database db_ecommerce;

use db_ecommerce;

create table tb_produtos(
id bigint auto_increment,
produto varchar(255) not null,
fabricante varchar(255) not null,
valor_unidade float not null,
tipo varchar(255) not null,
estoque int not null, /*quantidade de produto disponivel no estoque*/
primary key (id)
);

insert into tb_produtos (produto, fabricante, valor_unidade, tipo, estoque) 
values ("Color Trend", "AVON", 13.59, "Delineador Liquido", 40);
insert into tb_produtos (produto, fabricante, valor_unidade, tipo, estoque) 
values ("Soul Kiss Me", "Eudora", 23.99, "Batom Matte Bastão", 17);
insert into tb_produtos (produto, fabricante, valor_unidade, tipo, estoque) 
values ("Lash Intensity", "Mary Kay", 57.68, "Mascara de cilios", 38);
insert into tb_produtos (produto, fabricante, valor_unidade, tipo, estoque) 
values ("Carbon Black", "Vult", 26.50, "Delineador caneta", 22);
insert into tb_produtos (produto, fabricante, valor_unidade, tipo, estoque) 
values ("Intense Super Fresh", "O Boticário", 44.90, "Base liquida", 36);
insert into tb_produtos (produto, fabricante, valor_unidade, tipo, estoque) 
values ("Basic 2 em 1", "Vult", 19.90, "Base liquida", 5);
insert into tb_produtos (produto, fabricante, valor_unidade, tipo, estoque) 
values ("Instant Age Rewind Eraser", "Maybelline", 50.0, "Corretivo liquido", 35);
insert into tb_produtos (produto, fabricante, valor_unidade, tipo, estoque) 
values ("Cushion Red Make B", "O Boticário", 49.90, "Batom liquido", 26);

select * from tb_produtos;

select produto, valor_unidade from tb_produtos where valor_unidade > 500;

select produto, valor_unidade from tb_produtos where valor_unidade < 500;
