select * from tabela_de_produtos where SABOR = 'manga' OR EMBALAGEM = 'PET';

select * from tabela_de_produtos where SABOR = 'manga' AND EMBALAGEM = 'PET';

select * from tabela_de_produtos where SABOR = 'manga' AND not EMBALAGEM = 'PET';