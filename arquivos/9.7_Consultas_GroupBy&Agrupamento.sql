select id_comanda, nome_cliente, nome_funcionario, avg(preco) as media_preco
from comanda as c
inner join pedido as p on
(c.id_comanda = p.fk_id_comanda)
inner join item_cardapio as ic on
(p.fk_id_itemcardapio = ic.id_itemcardapio)
inner join cliente as cl on
(cl.id_cliente = c.fk_id_cliente)
inner join funcionario as f on
(f.id_funcionario = c.fk_id_funcionario)
group by id_comanda, nome_cliente, nome_funcionario
order by id_comanda;

select id_comanda, max(preco) as preço_max
from item_cardapio as ic
inner join pedido as p on
(p.fk_id_itemcardapio = ic.id_itemcardapio)
inner join comanda as c on
(c.id_comanda = p.fk_id_comanda)
group by id_comanda
order by id_comanda;

select nome_cliente, count(id_comanda) as quantidade_comandas
from comanda as c
inner join cliente as cl on
(cl.id_cliente = c.fk_id_cliente)
group by nome_cliente;

select id_comanda, sum(preco) as valor_total
from comanda as c
inner join pedido as p on
(c.id_comanda = p.fk_id_comanda)
inner join item_cardapio as ic on
(p.fk_id_itemcardapio = ic.id_itemcardapio)
group by id_comanda
order by valor_total desc;

select nome_funcionario, count(nome_funcionario) as comandas_atendidas
from comanda as c
inner join pedido as p on
(c.id_comanda = p.fk_id_comanda)
inner join funcionario as f on
(c.fk_id_funcionario = f.id_funcionario)
group by nome_funcionario;

select id_comanda, nome_item, min(preco) as menor_valor_pedido
from comanda as c
inner join pedido as p on
(c.id_comanda = p.fk_id_comanda)
inner join item_cardapio as ic on
(p.fk_id_itemcardapio = ic.id_itemcardapio)
group by id_comanda, nome_item
order by menor_valor_pedido asc;