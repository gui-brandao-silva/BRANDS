create database brands;
use brands;

create table produtos(
    idProduto int primary key auto_increment,
    preco decimal (4,2),
    tipoProduto varchar(8)
);

create table usuario(
idBanda int primary key auto_increment,
nome varchar(45),
numIntegrantes varchar (10),
email varchar (40),
senha varchar(45),
vendas varchar(40)
);



create table venda (
    fkBanda int,
    foreign key (fkBanda) references usuario(idBanda),
    fkProdutos int,
    foreign key (fkProdutos) references produtos(idProduto)
);

insert into produtos values (1, 45, "Camiseta"), (2, 25, "Caneca"), (3, 30, "Boné");

select * from usuario;
select * from venda;
select * from produtos;