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

SELECT ESTADO, MAX(LIMITE_DE_CREDITO) AS LIMITE_MAXIMO_POR_UF FROM tabela_de_clientes group by ESTADO HAVING MAX(LIMITE_DE_CREDITO) >= 200000;

SELECT CPF, COUNT(*) FROM notas_fiscais WHERE YEAR(DATA_VENDA) = 2016  GROUP BY CPF  HAVING COUNT(*) > 2000

SELECT NOME,
	CASE WHEN YEAR(data_de_nascimento) < 1990 THEN 'Velho'WHEN YEAR(data_de_nascimento) >= 1990 AND
	YEAR(data_de_nascimento) <= 1995 THEN 'Jovens' 
	ELSE 'Crianças' 
END FROM tabela_de_clientes

SELECT EMBALAGEM,
CASE
   WHEN PRECO_DE_LISTA >= 12 THEN 'PRODUTO CARO'
   WHEN PRECO_DE_LISTA >= 7 AND PRECO_DE_LISTA < 12 THEN 'PRODUTO EM CONTA'
   ELSE 'PRODUTO BARATO'
END AS STATUS_PRECO, AVG(PRECO_DE_LISTA) AS PRECO_MEDIO
FROM tabela_de_produtos
WHERE sabor = 'Manga'
GROUP BY EMBALAGEM,
CASE
   WHEN PRECO_DE_LISTA >= 12 THEN 'PRODUTO CARO'
   WHEN PRECO_DE_LISTA >= 7 AND PRECO_DE_LISTA < 12 THEN 'PRODUTO EM CONTA'
   ELSE 'PRODUTO BARATO'
END
ORDER BY EMBALAGEM;

select * from tabela_de_vendedores;
select * from notas_fiscais;

select * from tabela_de_vendedores as a inner join notas_fiscais as b on a.MATRICULA = b.MATRICULA;

select a.MATRICULA, a.NOME, count(*) from tabela_de_vendedores as a inner join notas_fiscais as b on a.MATRICULA = b.MATRICULA group by a.MATRICULA, a.NOME;

select year(DATA_VENDA), sum(QUANTIDADE * PRECO) as Faturamento from notas_fiscais as NF inner join itens_notas_fiscais as INF ON NF.NUMERO = INF.NUMERO group by year(DATA_VENDA);

select count(*) from tabela_de_clientes;

select CPF, count(*) from notas_fiscais group by CPF;

select * from notas_fiscais group by CPF;

select distinct A.CPF, A.NOME, B.CPF from tabela_de_clientes as A
inner join notas_fiscais as B on A.CPF = B.CPF;

select distinct A.CPF, A.NOME, B.CPF from tabela_de_clientes as A
left join notas_fiscais as B on A.CPF = B.CPF;

select * from tabela_de_vendedores

select * from tabela_de_clientes

select * from tabela_de_vendedores inner join tabela_de_clientes on tabela_de_vendedores.BAIRRO = tabela_de_clientes.BAIRRO;