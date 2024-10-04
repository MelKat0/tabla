create database venda_bd;
use venda_bd;

create table vendas(
id_venda int auto_increment
	primary key not null,
	produto varchar(100) not null,
    quantidade int not null,
    preco decimal(10,2) not null
);

insert into vendas(produto, quantidade, preco)
	values 
    ("Ferrari",10,10000000.00),
    ("Fusca",10,10000.00),
    ("Porsche",10,50000000.00),
    ("Kombi",5,20000.00),
    ("Variant II",9,30000.00),
    ("Logan",7,400000.00),
    ("F1",1,110000.00),
    ("Celta",8,12000.00),
    ("NEW HRV",4,150000.00),
    ("Kwid",10,70000.00);
    
insert into vendas(produto, quantidade, preco)
	values 
    ("Ferrari",8,10000000.00),
    ("Fusca",23,10000.00),
    ("Porsche",2,50000000.00),
    ("Kombi",7,20000.00),
    ("Variant II",5,30000.00),
    ("Logan",2,400000.00),
    ("F1",4,110000.00),
    ("Celta",10,12000.00),
    ("NEW HRV",7,150000.00),
    ("Kwid",5,70000.00);
    
select * from vendas;

select count(*) AS Total_vendas
from vendas;

select sum(quantidade) AS Total_produtos
from vendas;

select avg(preco) AS Média_de_preço
from vendas;

select min(preco) AS Menor_preço
from vendas;

select max(preco) AS Maior_preço
from vendas;

select produto, count(*) AS Total_vendas
from vendas
group by produto;

select produto, sum(quantidade) AS Total_produtos_vendas
from vendas
group by produto
having Total_produtos_vendas >= 15;

select produto, quantidade, preco
from vendas
order by produto asc
limit 5;

select produto, preco,
		(select max(preco) from vendas) AS Maior_preço
from vendas;

