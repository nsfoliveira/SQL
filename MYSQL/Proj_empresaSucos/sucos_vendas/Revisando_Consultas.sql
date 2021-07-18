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

SELECT NOME FROM tabela_de_clientes ORDER BY NOME ASC

SELECT * FROM tabela_de_produtos ORDER BY PRECO_DE_LISTA;

SELECT ESTADO, LIMITE_DE_CREDITO FROM tabela_de_clientes

SELECT ESTADO, MAX(LIMITE_DE_CREDITO) AS LIMITE_MAXIMO_POR_UF FROM tabela_de_clientes group by ESTADO

SELECT MAX(`QUANTIDADE`) as 'MAIOR QUANTIDADE' FROM itens_notas_fiscais WHERE `CODIGO_DO_PRODUTO` = '1101035' ;

SELECT COUNT(*) FROM itens_notas_fiscais WHERE codigo_do_produto = '1101035' AND QUANTIDADE = 99;