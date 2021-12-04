create database lab01_livraria;

use lab01_livraria;

create table livros(
nome_livro			varchar(100),
nome_autor			varchar(141),
sexo_autor			varchar(10),
n_paginas			integer,
nome_editora		varchar(70),
valor_livro			decimal, #eera pra colocar como float
estado				char(2),
ano_publicacao		integer
);


insert into livros values ('Cavaleiro Real', 'Ana Claudia', 'Feminino', 465, 'Atlas', 49.9, 'RJ', 2009),
								  ('SQL para leigos', 'João Nunes', 'Masculino', 450, 'Addison', 98, 'SP', 2018),
                                  ('Receitas Caseiras', 'Celia Tavares', 'Feminino', 210, 'Atlas', 45, 'RJ', 2008),
                                  ('Pessoas Efetivas', 'Eduardo Santos', 'Masculino', 390, 'Beta', 78.99, 'RJ', 2018),
                                  ('Habitos Saudáveis', 'Eduardo Santos', 'Masculino', 630, 'Beta', 150.98, 'RJ', 2019),
                                  ('A Casa Marrom', 'Hermes Macedo', 'Masculino', 250, 'Bubba', 60, 'MG', 2016),
                                  ('Estacio Querido', 'Geraldo Francisco', 'Masculino', 310, 'Insignia', 100, 'ES', 2015),
                                  ('Pra sempre amigas', 'Leda Silva', 'Feminino', 510, 'Insignia', 78.98, 'ES', 2011),
                                  ('Copas Inesqueciveis', 'Marco Alcantara', 'Masculino', 200, 'Larson', 130.98, 'RS', 2018),
                                  ('O poder da mente', 'Clara Mafra', 'Feminino', 120, 'Continental', 56.58, 'SP', 2017);
                                  
/* Trazer todos os dados*/
select * from livros; #correto

/* trazer o nome do livro e o nome da editora */
select nome_livro, nome_editora from livros; #correto

/* trazer o nome livro e a uf dos livros por autores do sexo masculino */
select nome_livro, estado from livros where sexo_autor = 'Masculino'; #correto

/* trazer o nome do livro e o numero de paginas dos livros publicados por autores do sexo feminino */
select nome_livro, n_paginas from livros where sexo_autor = 'Feminino'; #correto

/* trazer valores dos livros das editoras de são paulo */
select valor_livro from livros where estado = 'SP';

/* Trazer os dados dos autores do sexo masculino que tiveram livros publicados por sp ou rj questão desafio*/
#select nome_autor, sexo_autor, estado from livros where sexo_autor = 'Masculino' and estado = 'SP' or 'RJ';# incorreto
# abaixo sugestão correta:
select nome_autor, sexo_autor, estado 
from livros
where sexo_autor = 'Masculino'
and
(estado = 'SP' or estado = 'RJ');



                                  