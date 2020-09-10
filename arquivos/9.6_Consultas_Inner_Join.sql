select * from observacao
inner join pedido on observacao.fk_id_pedido = pedido.id_pedido 
inner join comanda on pedido.fk_id_comanda = comanda.id_comanda
inner join item_cardapio on pedido.fk_id_itemcardapio = item_cardapio.id_itemcardapio
inner join cliente on comanda.fk_id_cliente = cliente.id_cliente 
inner join funcionario on comanda.fk_id_funcionario = funcionario.id_funcionario
inner join tamanho on item_cardapio.fk_id_tamanho = tamanho.id_tamanho
inner join categoria on item_cardapio.fk_id_categoria = categoria.id_categoria;

select * from observacao inner join pedido on observacao.fk_id_pedido = pedido.id_pedido;
select * from pedido inner join item_cardapio on pedido.fk_id_itemcardapio = item_cardapio.id_itemcardapio;
select nome_funcionario,id_comanda,mesa from comanda inner join funcionario on comanda.fk_id_funcionario = funcionario.id_funcionario;
select nome_cliente, id_comanda,mesa from comanda inner join cliente on comanda.fk_id_cliente = cliente.id_cliente;
select nome_cliente, nome_funcionario from cliente inner join comanda on cliente.id_cliente = comanda.fk_id_cliente inner join funcionario on funcionario.id_funcionario = comanda.fk_id_funcionario;
