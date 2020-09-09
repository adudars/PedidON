select * from comanda where mesa=13 and fk_id_funcionario =1;
select * from pedido where hora>'13:00' and fk_id_itemcardapio=2;
select cpf_cliente from cliente where id_cliente=1 or id_cliente=2;
select * from cliente where not id_cliente=1;
select fk_id_funcionario from comanda where data='2020-07-30' or (not mesa=1 and not fk_id_cliente=2);

select preco*2 from item_cardapio;
select quantidade+1 from pedido where id_pedido=1;
select preco/2 from item_cardapio;

select preco as valor from item_cardapio;
select nome_item as item from item_cardapio;
select id_comanda as comanda from comanda;