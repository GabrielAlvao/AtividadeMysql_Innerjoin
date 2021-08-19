create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe(
id bigint auto_increment,
classe varchar(20),
descrição varchar(50),
primary key(id)
);

insert into tb_classe(classe,descrição) values ("Lutador","boa defesa e bom ataque");
insert into tb_classe(classe,descrição) values ("Tanque","muita defesa");
insert into tb_classe(classe,descrição) values ("Atirador","bom ataque à distancia");
insert into tb_classe(classe,descrição) values ("Suporte","boa defesa e velocidade");
insert into tb_classe(classe,descrição) values ("Mago","bom poder magico");

select * from tb_classe;

create table tb_personagem(
id bigint auto_increment,
nome varchar(20),
poder_de_ataque int,
poder_de_defesa int,
poder_magico int,
velocidade int,
classe_id bigint,
primary key(id),
foreign key (classe_id) references tb_classe(id)
);

insert into tb_personagem(nome,poder_de_ataque,poder_de_defesa,poder_magico,velocidade,classe_id) values ("Sett",500,200,0,400,1);
insert into tb_personagem(nome,poder_de_ataque,poder_de_defesa,poder_magico,velocidade,classe_id) values ("Darius",450,250,0,400,1);
insert into tb_personagem(nome,poder_de_ataque,poder_de_defesa,poder_magico,velocidade,classe_id) values ("Maokai",100,500,0,350,2);
insert into tb_personagem(nome,poder_de_ataque,poder_de_defesa,poder_magico,velocidade,classe_id) values ("Jhin",600,100,0,400,3);
insert into tb_personagem(nome,poder_de_ataque,poder_de_defesa,poder_magico,velocidade,classe_id) values ("Lulu",100,150,300,450,4);
insert into tb_personagem(nome,poder_de_ataque,poder_de_defesa,poder_magico,velocidade,classe_id) values ("Veigar",100,150,800,400,5);
insert into tb_personagem(nome,poder_de_ataque,poder_de_defesa,poder_magico,velocidade,classe_id) values ("Yasuo",600,200,0,400,1);
insert into tb_personagem(nome,poder_de_ataque,poder_de_defesa,poder_magico,velocidade,classe_id) values ("Cassiopeia",100,200,600,500,5);

select * from tb_personagem;

select * from tb_personagem where poder_de_ataque > 200;
select * from tb_personagem where poder_de_ataque < 200;

select * from tb_personagem where nome like "%C%";

select * from tb_personagem
	inner join tb_classe on tb_classe.id = tb_personagem.classe_id;
 
 select * from tb_personagem 
    inner join tb_classe on tb_classe.id = tb_personagem.classe_id 
    where tb_classe.id = 3;
    
    
    
