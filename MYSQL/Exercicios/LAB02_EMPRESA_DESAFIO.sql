use lab2_empresa;

select * from funcionarios limit 0,5;

/* Considerando o que vc aprendeu sobre performance, resolva os exercicios abaixo */

select count(*) from funcionarios;
# 975 registors

/*--Traga os funcionarios que trabalhem no departamento de filmes OU no departamento de roupas */

select  departamento, count(*) from funcionarios group by departamento order by  1;
# Filmes 21 | Roupas 53

/*--Como estamos trabalhando com OR e a segunda condicao é opcional colocamos na primeira condicao quem tem mais chances de uma saida verdadeira, pois a segunda condicao nao será checada nesse caso.*/

select nome, departamento from funcionarios
where departamento = 'Roupas' or departamento = 'Filmes'; # CORRETO

/*--O gestor de marketing pediu a lista das funcionarias (AS) = FEMININO que trabalhem no departamento de filmes ou no departamento lar. Ele necessita enviar um email para as colaboradoras desses dois setores.*/
# filmes 21 | lar 52
 
select sexo, count(*) from funcionarios group by sexo;
# feminino 491 | masculino 484

 /*OR +  AND*/
 select nome, sexo, email, departamento from funcionarios where (departamento = 'Lar' or  departamento = 'Filmes') and sexo = 'Feminino'; # PARCIALMENTE CORRETA

# query correta
select nome, sexo, email, departamento from funcionarios where (departamento = 'Lar' and sexo = 'Feminino') or (departamento = 'Filmes' and sexo = 'Feminino');
 
/*--Traga os funcionarios do sexo masculino ou os funcionarios que trabalhem no setor Jardim*/
#Jardim 47 | masculino 484

select nome, sexo, departamento from funcionarios
where sexo = 'Masculino' or departamento = 'Jardim'; #CORRETO
