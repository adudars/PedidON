select * from observacao 
right outer join pedido on observacao.fk_id_pedido = pedido.id_pedido;

select * from observacao 
left outer join pedido on observacao.fk_id_pedido = pedido.id_pedido;

select * from observacao 
full outer join pedido on observacao.fk_id_pedido = pedido.id_pedido;

select * from pedido 
right outer join item_cardapio on pedido.fk_id_itemcardapio = item_cardapio.id_itemcardapio 
order by hora;
