/*Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as
informações dos estudantes deste registro dessa escola.
Crie uma tabela estudantes e utilizando a habilidade de abstração e determine 5 atributos
relevantes dos estudantes para se trabalhar com o serviço dessa escola.

Popule esta tabela com até 8 dados;
Faça um select que retorne o/as estudantes com a nota maior do que 7.
Faça um select que retorne o/as estudantes com a nota menor do que 7.
Ao término atualize um dado desta tabela através de uma query de atualização.
salve as querys para cada uma dos requisitos o exercício em um arquivo .SQL ou texto e
coloque no seu GitHuB pessoal e compartilhe esta atividade.*/

create database db_escola;

use db_escola;

create table tb_estudantes(
id bigint auto_increment,
nome varchar(255),
idade int,
turma varchar(2),
nota float,
cod_matricula bigint,
primary key (id)
);

insert into tb_estudantes (nome, idade, turma, nota, cod_matricula) values("Vanessa", 16, "1C", 7.5, 123456);
insert into tb_estudantes (nome, idade, turma, nota, cod_matricula) values("Lucas", 15, "1A", 8.0, 123444);
insert into tb_estudantes (nome, idade, turma, nota, cod_matricula) values("Rafael", 18, "3B", 4.6, 654123);
insert into tb_estudantes (nome, idade, turma, nota, cod_matricula) values("Giovana", 17, "2C", 6.3, 234568);
insert into tb_estudantes (nome, idade, turma, nota, cod_matricula) values("Milena", 16, "2A", 9.2, 545123);
insert into tb_estudantes (nome, idade, turma, nota, cod_matricula) values("Fernando", 17, "3A", 8.5, 987513);
insert into tb_estudantes (nome, idade, turma, nota, cod_matricula) values("Thiago", 15, "1C", 5.4, 321568);
insert into tb_estudantes (nome, idade, turma, nota, cod_matricula) values("Amanda", 18, "3C", 3.6, 654982);

select * from tb_estudantes;

select nome, turma, nota from tb_estudantes where nota > 7;

select * from tb_estudantes where nota < 7;

