select * from tabela_de_produtos where SABOR = 'manga' OR EMBALAGEM = 'PET';

select * from tabela_de_produtos where SABOR = 'manga' AND EMBALAGEM = 'PET';

select * from tabela_de_produtos where SABOR = 'manga' AND not EMBALAGEM = 'PET';

select * from tabela_de_produtos where SABOR in ('laranja', 'manga');

select * from tabela_de_clientes where CIDADE in ('Rio de Janeiro') AND IDADE between 25 and 28;