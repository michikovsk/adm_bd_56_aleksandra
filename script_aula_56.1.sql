create database empresa_xpto;
use empresa_xpto;

create table funcionarios(
id int auto_increment,
nome varchar(60),
sobrenome varchar(60),
salario decimal(10,2),
primary key (id)
);


load data infile 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/funcionarios.csv'
into table funcionarios
fields terminated by ','
lines terminated by '\n'
ignore 1 lines
(nome, sobrenome, salario) set id = null;

drop table funcionarios;
select * from funcionarios;

select * from funcionarios where salario < 1238.11;

select nome, sobrenome from funcionarios where salario order by salario limit 5;

select nome, sobrenome from funcionarios where salario order by salario desc limit 5;

select * from funcionarios where nome = 'Carlo' or nome ='Gil';

select * from funcionarios where nome = 'Carlo' or 'Gil' and salario > 15000;

select sobrenome from funcionarios where sobrenome = 'Beardsell' or sobrenome = 'Hubbucks';

select sobrenome from funcionarios where sobrenome = 'Beardsell' or sobrenome = 'Hubbucks' and salario < 5000;

select * from funcionarios where salario between 5000 and 10000;

select nome, sobrenome from funcionarios where salario between 2000 and 3000;

select sum(salario) as soma_salario from funcionarios;

select avg(salario) as media_salario from funcionarios;

select count(*) as total_funcionarios from funcionarios;

select max(salario) as maio_salario from funcionarios;

select min(salario) as menor_salario from funcionarios;

select count(*) as total_funcionarios from funcionarios where salario > 15000;

select count(*) as total_funcionarios from funcionarios where salario between 1212 and 5000;

select count(*) as total_funcionarios from funcionarios where salario between 5001 and 10000;

select count(*) as total_funcionarios from funcionarios where salario between 10001 and 15000;

#fazendo relacionamentos entre a tabela funcionarios e departamento
#alteração da tabela funcionarios
#adicionando a coluna id_departamentos como chave estrangeira

alter table funcionarios
add column id_departamento int,
add constraint fk_funcionarios_departamentos
foreign key (id_departamento) references departamentos(id);

select * from funcionarios;

#comando para adicionar os departamentos de seus devidos funcionarios

update funcionarios 
set id_departamento = 1
where id = 1;

update funcionarios 
set id_departamento = 2
where id = 3 or id = 4 or id = 5;

update funcionarios 
set id_departamento = 4
where id = 6 or id = 7 or id = 8 or id = 9;

update funcionarios 
set id_departamento = 5
where id = 10 or id = 11 or id = 12 or id = 13;

update funcionarios 
set id_departamento = 9
where id = 14 or id = 15 or id = 16 or id = 17;

#descobrindo o id do funcionario com maior salario

select * from funcionarios where id order by salario desc;


update funcionarios 
set id_departamento = 12
where id = 44;

update funcionarios 
set id_departamento = 13
where id = 413;

update funcionarios 
set id_departamento = 15
where id = 642;

update funcionarios 
set id_departamento = 14
where id = 462;







