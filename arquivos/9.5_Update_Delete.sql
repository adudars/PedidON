update funcionario set nome_funcionario='Ronaldo' where id_funcionario=1;
update pedido set quantidade=3 where id_pedido=1;
update item_cardapio set preco=60 where nome_item='Reta da Penha';

delete from pedido where id_pedido=1;
delete from pedido where id_pedido=3;
delete from observacao where fk_id_pedido=12;