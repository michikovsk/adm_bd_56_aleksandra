delete from funcionarios;
set SQL_SAFE_UPDATES = 0;

select * from funcionarios;

#contagem da quantidade de funcionarios agrupados por departamento
#contagem de funcionarios por departamento

select id_departamento, count(*) as total_funcionarios
from funcionarios
group by id_departamento;

select id_departamento, count(*) as total_funcionarios
from funcionarios
where salario > 10000
group by id_departamento;

select id_departamento, count(*) as total_funcionarios
from funcionarios
where salario between 5000 and 10000
group by id_departamento;

select id_departamento, sum(salario) as soma_salario
from funcionarios
group by id_departamento;

select id_departamento, select avg(salario) as media_salario
from funcionarios
group by id_departamento;