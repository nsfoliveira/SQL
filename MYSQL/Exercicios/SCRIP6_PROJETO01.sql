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
set CPF = 12345678911
where NOME = 'NATALIA';

