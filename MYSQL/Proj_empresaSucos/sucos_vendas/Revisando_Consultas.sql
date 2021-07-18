use sucos_vendas;

select * from itens_notas_fiscais;

select * from notas_fiscais;

select * from tabela_de_clientes;

select * from tabela_de_produtos;

select * from tabela_de_vendedores;

select CPF as Identificador, NOME as Cliente from tabela_de_clientes;

select * from notas_fiscais where MATRICULA = 00235;

select * from notas_fiscais where IMPOSTO between 0.1 and 0.13;

SELECT EMBALAGEM, TAMANHO FROM tabela_de_produtos

SELECT DISTINCT EMBALAGEM, TAMANHO FROM tabela_de_produtos; 

SELECT DISTINCT BAIRRO FROM tabela_de_clientes WHERE CIDADE = "Rio de Janeiro";

SELECT NOME FROM tabela_de_clientes;

SELECT NOME FROM tabela_de_clientes LIMIT 3; # AQUI ESTOU PEGANDO OS 3 PRIMEIROS REGISTROS #

SELECT NOME FROM tabela_de_clientes LIMIT 3,2; # AQUI ESTOU PEGANDO DEPOIS DOS 3 PRIMEIROS REGISTROS, OS DOIS REGISTROS SEGUINTES #

SELECT * FROM notas_fiscais WHERE DATA_VENDA = '2017-01-01' LIMIT 10

