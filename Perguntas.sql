/* Qual o dia da semana em que há mais locações? */
SELECT  dia_semana_escrito, count(dia_semana_escrito) as soma 
FROM  fato
INNER JOIN dim_data
	on fato.DtInicio = dim_data.pk
GROUP BY dia_semana_escrito
ORDER BY soma DESC;

/*Tipo de veículo mais locado por dia da semana.*/
SELECT dia_semana_escrito, max(Tipo)
FROM fato
INNER JOIN dim_data
	on fato.DtInicio = dim_data.pk
INNER JOIN dim_veiculo
	on fato.dim_veiculo = dim_veiculo.pk
GROUP BY dia_semana_escrito ;  
	
/*Quantidade de locação de cada item opcional para um determinado período de tempo.*/
SELECT item, count(item)
FROM fato
INNER JOIN dim_item_op
	on dim_item_op.pk = fato.dim_item_opl
GROUP BY item;   
/*Quais itens opcionais são mais locados por tipo de carro?*/

/*Qual a média de idade do cliente por modelo de carro?*/
SELECT Modelo,avg(year(curdate())-year(DtNascimento)) as 'média idade'
FROM fato
INNER JOIN dim_cliente
	on dim_cliente.pk = fato.dim_cliente
INNER JOIN dim_veiculo
	on dim_veiculo.pk = fato.dim_veiculo
GROUP BY Modelo;

/*Quantidade de clientes, por estado civil, que locam carros durante o fim de semana?*/
/*Há um aumento de locações durante o natal?*/
/*Qual a média de gasto em locação por idade?*/
SELECT YEAR(curdate())-YEAR(DtNascimento) as 'idade', avg((DtFim-DtInicio)*VlrDiaria) as 'media gasta'
FROM fato
INNER JOIN dim_cliente
	on dim_cliente.pk = fato.dim_cliente
GROUP BY idade;   
/*Qual a média de gasto com itens opcionais por idade?
Qual a média de gasto com locação por estado civil?*/
SELECT EstadoCivil, avg(VlrDiaria)
FROM fato
INNER JOIN dim_cliente
	on fato.dim_cliente = dim_cliente.pk
GROUP BY EstadoCivil; 

/*Quantidade de clientes por UF (estado onde reside) em um determinado mês.*/
SELECT UF, COUNT(UF)
FROM fato
INNER JOIN dim_cliente
	on fato.dim_cliente = dim_cliente.pk
GROUP BY UF; 
/*Quanto cada funcionário vendeu (considerando aluguel de opcionais e veículo) para um período informado?*/


















