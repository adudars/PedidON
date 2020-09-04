/**LIKE/ILIKE**/
from cliente
where nome_cliente like '_a__';

select *
from cliente
where nome_cliente ilike '%a%';

select nome_funcionario
from funcionario
where nome_funcionario ilike '%O';

select *
from item_cardapio
where nome_item like 'B%';

select *
from item_cardapio
where nome_item ilike '__________';


/**DATA**/
select mesa
from comanda
where data >= '2020-07-31';

select data as data_pedidos, current_date as data_de_hoje, age(current_date,data) as dias_corridos_ate_hoje
from comanda
group by data_pedidos
order by data_pedidos asc;

select data as data_pedidos, date_part('month',data) as mes
from comanda
group by data_pedidos;

select isfinite(data) as datas_finita
from comanda
group by datas_finita;

select data as data_pedidos, extract('year' from data) as ano
from comanda
group by data_pedidos;

select nome_cliente, concat(data, ' ' ,hora) as data_hora_pedido
from comanda as c
inner join pedido as p on
(p.fk_id_comanda = c.id_comanda)
inner join cliente as cl on
(cl.id_cliente = c.fk_id_cliente)
order by data_hora_pedido asc;

select data as data_pedido, hora
from comanda as c
inner join pedido as p on
(p.fk_id_comanda = c.id_comanda)
where hora >= '13:00:00' and data = '2020-07-31';
