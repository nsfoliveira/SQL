create table tb_func(
id					int primary key not null,
estado_civil		varchar(30),
grau_instrucao		varchar(30),
numero_filhos		int,
salario_hora		double,
idade				int,
reg_procedencia		varchar(30)
)

select * from tb_func;

alter table tb_func modify numero_filhos varchar(2);

select * from tb_func order by id asc