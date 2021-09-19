show tables; # só existem no mysql (o que ele faz é um select no dic de dados) #

select now() ; 

select 'Natália Oliveira';

select NOME, SEXO, EMAIL from tb_cliente;

select NOME, SEXO, EMAIL, TELEFONE, now() as 'DATA_HORA', 'Natália Oliveira' as 'USUÁRIO'  from tb_cliente; # podemos umas um alias de coluna #

select * from tb_cliente; # * traz tudo dentro da tabela, usar apenas para fins academicos pois pode deixar o sistema lento #

select NOME, EMAIL from tb_cliente where SEXO = 'M';

select NOME, ENDERECO from tb_cliente where ENDERECO like '%WILSON'; # o like trabalha junto com o caracter coringa % #