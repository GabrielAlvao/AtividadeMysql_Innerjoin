create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categorias(
id bigint auto_increment,
categoria varchar(50),
primary key (id)
);
alter table tb_categorias add ativo boolean;

insert into tb_categorias (categoria,ativo) values ("Pizza salgada",true);
insert into tb_categorias (categoria,ativo) values ("Pizza Doce",true);
insert into tb_categorias (categoria,ativo) values ("Esfiha Salgada",true);
insert into tb_categorias (categoria,ativo) values ("Esfiha Doce",true);
insert into tb_categorias (categoria,ativo) values ("Bebidas",true);

create table tb_pizza(
id bigint auto_increment,
produto varchar(50),
tamanho varchar(50),
preco decimal(4,2),
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categorias (id)
);

insert into tb_pizza (produto,tamanho,preco,categoria_id) values ("Pizza portuguesa","Grande",40.00,1);
insert into tb_pizza (produto,tamanho,preco,categoria_id) values ("Pizza Calabresa","Grande",40.00,1);
insert into tb_pizza (produto,tamanho,preco,categoria_id) values ("Pizza Chocolate","Pequena",30.00,2);
insert into tb_pizza (produto,tamanho,preco,categoria_id) values ("Pizza Chocolate","Grande",50.00,2);
insert into tb_pizza (produto,tamanho,preco,categoria_id) values ("Esfiha carne","",5.00,3);
insert into tb_pizza (produto,tamanho,preco,categoria_id) values ("Esfiha queijo","",5.00,3);
insert into tb_pizza (produto,tamanho,preco,categoria_id) values ("Esfiha Chocolate com Banana","",10.00,4);
insert into tb_pizza (produto,tamanho,preco,categoria_id) values ("Refrigerante 2l","",10.00,5);

select * from tb_categorias;
select *from tb_pizza;

select * from tb_pizza where preco > 45.00;
select * from tb_pizza where preco between 29 and 60;

select * from tb_pizza where produto like "%C%";

select * from tb_pizza
	inner join tb_categorias on tb_categorias.id = tb_pizza.categoria_id;
 
 select * from tb_pizza
    inner join tb_categorias on tb_categorias.id = tb_pizza.categoria_id 
    where tb_categorias.id = 2;