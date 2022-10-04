create database Armarinho;
use Armarinho;

create table clientes(
id int auto_increment,
nome varchar(70) NOT NULL,
endereco varchar(70) NOT NULL,
cidade varchar(20) NOT NULL,
estado char(2) default 'RS',	
limite_de_credito float(7,2),
primary key (id),
check (estado in ('ES','MG','PR','RJ','SC','SP','RS'))
);

insert into clientes (nome, endereco, cidade, estado, limite_de_credito) values
('Pedro Augusto da Rocha', 'Rua Pedro Carlos Hoffman', 'Porto Alegre', 'RS', 700),
('Antonio Carlos Mamel', 'Av. Pinheiros', 'Belo Horizonte', 'MG', 3500),
('Luiza Augusta Mhor', 'Rua Salto Grande', 'Niteroi', 'RJ', 4000),
('Jane Ester', 'Av. 7 de Setembro', 'Erichin', 'RS', 800),
('Marcos Antônio dos Santos', 'Av. Farrapos', 'Porto Alegre', 'RS', '4250.25');

select * from clientes;

insert into clientes (nome, endereco, cidade, estado, limite_de_credito) values
('Maria da Graça Xuxa Meneghel', 'Av. Rio Grande do Sul', 'Santa Rosa', 'RS', 99999.99),
('Angélica Ksyvickis Huck', 'Estr. do Joá', 'Rio de Janeiro', 'RJ', 77777.77),
('Luiz Inácio Lula da Silva', 'Rua Pau Brasil', 'São Paulo', 'SP', 1313.13);

select * from clientes;

SELECT * FROM clientes WHERE estado = 'ES' OR estado = 'SP' OR estado = 'RJ' OR estado = 'MG' ORDER BY id; 