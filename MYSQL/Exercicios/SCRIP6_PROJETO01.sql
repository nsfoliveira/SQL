use projeto;

describe tb_cliente;

select * from tb_cliente;

/* NULL - NOT NULL */

/* Trazendo os registros com campos NULOS */

select * from tb_cliente where CPF is null;

/* Trazendo registros sem campos NULOS */

select * from tb_cliente where CPF is not null;

/* UPDATE */

/* Atualizando campos nulos com UPDATE */

update tb_cliente 
set CPF = 1234567911
where NOME = 'NATALIA';

update tb_cliente 
set CPF = 1244567911
where NOME = 'LILIAN';

update tb_clienTe 
set CPF = 1234537911
where NOME = 'MARCO';

update tb_cliente 
set CPF = 1234567921
where NOME = 'ANDRIELLE';

/* DELETE */
/* importate! sempre usar o delete junto com a cláusula WHERE  */

select count(*) from tb_cliente;

select count(*) from tb_cliente where NOME = 'LILIAN';

delete from tb_cliente where NOME = 'LILIAN';

SELECT 6-1;
