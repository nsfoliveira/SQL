use sucos_vendas;

select * from itens_notas_fiscais;

select * from notas_fiscais;

select * from tabela_de_clientes;

select * from tabela_de_produtos;

select * from tabela_de_vendedores;

select CPF as Identificador, NOME as Cliente from tabela_de_clientes;

select * from notas_fiscais where MATRICULA = 00235;

select * from notas_fiscais where IMPOSTO between 0.1 and 0.13;