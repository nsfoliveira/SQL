SELECT CPF, NOME FROM tbcliente LIMIT 5; /*limit me limitará aos 5 primeiros registros */

SELECT CEP AS CPF_CLIENTE, NOME AS NOME_CLIENTE FROM tbcliente LIMIT 5; /*utilizamos um alias 'as' para 'renomear' o nome do atributo na visualização*/

SELECT NOME, MATRICULA FROM tbvendedores;

SELECT * FROM tbcliente WHERE CIDADE = 'Rio de Janeiro'; /*clausula que diz da onde queremos que retorne o registro, ou seja, faz um filtro*/

SELECT * FROM tbvendedores WHERE PERCENTUAL_COMISSAO > 0.1;