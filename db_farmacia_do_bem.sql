create database db_farmacia_do_bem;

use db_farmacia_do_bem;

create table tb_categoria(
id bigint auto_increment,
categoria varchar(50),
ativo boolean,
primary key (id)
);


insert into tb_categoria (categoria,ativo) values ("Remédio dor de cabeça",true);
insert into tb_categoria (categoria,ativo) values ("Rémedio dor de estomago",true);
insert into tb_categoria (categoria,ativo) values ("Remédio prescritos",true);
insert into tb_categoria (categoria,ativo) values ("Desodorante",true);
insert into tb_categoria (categoria,ativo) values ("Preservativo",true);

create table tb_produto(
id bigint auto_increment,
produto varchar(50),
quantidade int,
preco decimal(4,2),
categoria_id bigint,
primary key (id),
FOREIGN KEY (categoria_id) REFERENCES tb_categoria (id)
);

insert into tb_produto (produto,quantidade,preco,categoria_id) values ("DorFlex",10,40.00,1);
insert into tb_produto (produto,quantidade,preco,categoria_id) values ("Rivotril",10,40.00,3);
insert into tb_produto (produto,quantidade,preco,categoria_id) values ("Dove Sensation",10,30.00,4);
insert into tb_produto (produto,quantidade,preco,categoria_id) values ("novalgina",10,50.00,1);
insert into tb_produto (produto,quantidade,preco,categoria_id) values ("estomazil",10,5.00,2);
insert into tb_produto (produto,quantidade,preco,categoria_id) values ("olla",10,5.00,5);
insert into tb_produto (produto,quantidade,preco,categoria_id) values ("Rexona sensation",10,10.00,4);
insert into tb_produto (produto,quantidade,preco,categoria_id) values ("jontex sesation",10,10.00,5);

select * from tb_categoria;
select *from tb_produto;

select * from tb_produto where preco > 50.00;
select * from tb_produto where preco between 3 and 60;

select * from tb_produto where produto like "%d%";

select * from tb_produto
	inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id;
 
 select * from tb_produto
    inner join tb_categoria on tb_categoria.id = tb_produto.categoria_id 
    where tb_categoria.id = 2;