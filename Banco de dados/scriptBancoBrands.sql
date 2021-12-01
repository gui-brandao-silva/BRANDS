create database brands;
use brands;

create table produtos(
    idProduto int primary key auto_increment,
    preco decimal (4,2),
    tipoProduto varchar(8)
);

create table banda(
idBanda int primary key auto_increment,
numIntegrantes varchar (10),
genero varchar (40),
vendas varchar(1),
check (vendas = 'S' or vendas = 'N')
);

create table integrante(
idIntegrante int primary key auto_increment,
nomeIntegrante varchar(80),
email varchar(70),
fkBanda int,
foreign key (fkBanda) references banda(idBanda)
);



create table venda (
    fkBanda int,
    foreign key (fkBanda) references banda(idBanda),
    fkProdutos int,
    foreign key (fkProdutos) references produtos(idProduto)
);

insert into produtos values (1, 45, "Camiseta"), (2, 25, "Caneca"), (3, 30, "Boné");

select * from banda;
select * from integrante;
select * from venda;
select * from produtos;