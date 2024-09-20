create database gervenda;
use gervenda;

create table produtos(
produto_id int auto_increment primary key,
nome varchar (50),
preco decimal (10,2),
estoque int
);
create table vendas(
venda_id int auto_increment primary key,
produto_id int,
quantidade int,
data_venda date,
foreign key(produto_id) references produtos(produto_id)
);
insert into produtos(nome, preco, estoque)
values("Notebook Dell",7000.00,35),
("Iphone 13",3700.00,1),
("LG K10",1000.00,15),
("Nike Air Force",2000.00,10),
("Camiseta Corinthias",500.00,200);
select * from produtos;
select * from vendas;
insert into vendas (produto_id, quantidade, data_venda)
values (1,5,"2024-09-20"), (3,7,"2024-09-20"), (2,1,"2024-09-20");

update produtos
set preco = 6500.00
where produto_id = 1;

update vendas
set quantidade = 5
where venda_id = 5;

delete from produtos
where produto_id = 4;

delete from vendas
where venda_id = 1;

select * from vendas;
select quantidade, data_venda from vendas;

select * from produtos;
select nome, estoque from produtos;

select * from vendas
where venda_id = 2;

create database empresa3;
use empresa3;

CREATE TABLE departamento (
    dep_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(3)
);

CREATE TABLE funcionario (
    fun_codigo INT AUTO_INCREMENT PRIMARY KEY,
    funnome VARCHAR(300),
    nascimento DATE,
    salario DECIMAL,
    dep_id INT, 
    FOREIGN KEY (dep_id) REFERENCES departamento (dep_id) 
);

CREATE TABLE dependente (
    dp_id INT AUTO_INCREMENT PRIMARY KEY,
    dpnome VARCHAR(3),
    fun_codigo INT,  
    FOREIGN KEY (fun_codigo) REFERENCES funcionario (fun_codigo)  
);

INSERT INTO departamento (dep_id, nome)
VALUES
(1, 'TI'),
(2, 'RH'),
(3, 'ADM'),
(4, 'FIN'),
(5, 'MKT'),
(6, 'VND'),
(7, 'OPR'),
(8, 'ENG'),
(9, 'SUP'),
(10, 'DES');

INSERT INTO funcionario (funnome, nascimento, salario, dep_id)
VALUES
('Ana', '1985-07-12', 5000.00, 1),
('Bruno', '1990-02-25', 4500.00, 2),
('Carlos', '1982-11-30', 5500.00, 3),
('Diana', '1995-05-18', 4000.00, 1),
('Eduardo', '1988-09-09', 6000.00, 4),
('Fernanda', '1992-06-17', 4800.00, 5),
('Gustavo', '1994-03-29', 5200.00, 6),
('Helena', '1989-12-11', 4700.00, 7),
('Igor', '1991-10-22', 5300.00, 8),
('Juliana', '1993-08-14', 4900.00, 9);

INSERT INTO dependente (dpnome, fun_codigo)
VALUES
('João', 1),
('Maria', 2),
('Pedro', 3),
('Paula', 4),
('Lucas', 5),
('Larissa', 6),
('Rafael', 7),
('Bruna', 8),
('Vinícius', 9),
('Sofia', 10);