drop table observacao;
drop table pedido;
drop table item_cardapio;
drop table categoria;
drop table tamanho;
drop table comanda;
drop table cliente;
drop table funcionario;

CREATE TABLE CLIENTE (
	id_Cliente SERIAL PRIMARY KEY,
	nome_Cliente VARCHAR(40),
	cpf_Cliente INTEGER
);

CREATE TABLE FUNCIONARIO (
	id_Funcionario SERIAL PRIMARY KEY,
	nome_Funcionario VARCHAR(40),
	matricula_Funcionario INTEGER
);

CREATE TABLE COMANDA (
	id_Comanda SERIAL PRIMARY KEY,
	mesa INTEGER,
	data DATE,
	fk_id_Cliente INTEGER,
	fk_id_Funcionario INTEGER,
	FOREIGN KEY (fk_id_Cliente) REFERENCES CLIENTE(id_Cliente),
	FOREIGN KEY (fk_id_Funcionario) REFERENCES FUNCIONARIO(id_Funcionario)
);

CREATE TABLE TAMANHO (
	id_Tamanho SERIAL PRIMARY KEY,
	descricao_tamanho VARCHAR(30)
);

CREATE TABLE CATEGORIA (
	id_Categoria SERIAL PRIMARY KEY,
	nome_Categoria VARCHAR(40)
);

CREATE TABLE PEDIDO (
	id_Pedido SERIAL PRIMARY KEY,
	quantidade INTEGER,
	hora TIME,
	fk_id_Comanda INTEGER,
	fk_id_ItemCardapio INTEGER,
	FOREIGN KEY (fk_id_Comanda) REFERENCES COMANDA(id_Comanda)
);

CREATE TABLE OBSERVACAO (
	id_Obs SERIAL PRIMARY KEY,
	descricao_obs VARCHAR(140),
	fk_id_Pedido INTEGER,
	FOREIGN KEY (fk_id_Pedido) REFERENCES PEDIDO(id_Pedido)
);

CREATE TABLE ITEM_CARDAPIO (
	id_ItemCardapio SERIAL PRIMARY KEY,
	nome_Item VARCHAR(80),
	preco FLOAT,
	descricao_item VARCHAR(200),
	fk_id_Categoria INTEGER,
	fk_id_Tamanho INTEGER,
	FOREIGN KEY (fk_id_Categoria) REFERENCES CATEGORIA(id_Categoria),
	FOREIGN KEY (fk_id_Tamanho) REFERENCES TAMANHO(id_Tamanho)
);

ALTER TABLE PEDIDO ADD
FOREIGN KEY (fk_id_ItemCardapio) REFERENCES ITEM_CARDAPIO(id_ItemCardapio);

insert into cliente(nome_cliente, cpf_cliente)
values('Lara', 10582),
('Jorge', 11736),
('Clara', 12890),
('Davi', 14045),
('Milton', 15199),
('Luiza', 18662),
('Ana', 16354),
('Tais', 17508),
('Isabella', 19817),
('Henrique', 22010);

insert into funcionario(nome_funcionario, matricula_funcionario )
values('Bernardo', 2210921),
('Matheus', 3874638),
('Ismael', 4733307);

insert into comanda(mesa, data, fk_id_cliente, fk_id_funcionario)
values(13,'2020-07-30', 1, 1),
(1, '2020-07-30', 2, 1),
(4, '2020-07-30', 3, 2),
(12, '2020-07-30', 4, 3),
(3, '2020-07-30', 5, 2),
(1, '2020-07-31', 2, 3),
(13, '2020-07-31', 6, 1),
(2, '2020-07-31', 7, 2),
(12, '2020-07-31', 8, 3),
(4, '2020-08-01', 4, 1),
(13, '2020-08-01', 2, 2),
(12, '2020-08-01', 9, 3),
(13, '2020-08-01', 10, 2);

insert into tamanho(descricao_tamanho)
values('2 pessoas'),
('1 pessoa'),
('infantil'),
('long neck'),
('lata');

insert into categoria(nome_categoria)
values('entrada'),
('drink'),
('principal'),
('sobremesa');

insert into item_cardapio(nome_item, descricao_item, preco, fk_id_categoria, fk_id_tamanho)
values('Reta da Penha', 'Filé Mignon marinado na mostarda antiga, servido com pães da casa.', 56.90, 1, 2),
('Rua Sete', 'Filé Mignon ao conhaque, servido com pães da casa', 55, 1, 2),
('Parque Moscoso', 'Polvo à galega - Polvo cozido servido com sal e azeite, acompanhado de batatas e legumes tostados', 145, 3, 1),
('Convento da Penha', 'Peixe do dia servido inteiro e assado com limão siciliano, ervas e alcaparras, acompanhado de massa na manteiga de limão',115, 3, 1),
('Ilha de Socó', 'Chocolate em mousse fria e semi congelada com praliné de nozes', 22, 4, 2),
('Bons ventos te trazem', 'Gin, redução de flor de sabugueiro, maracujá, mix cítricos, espuma de gengibre e angostura bitter', 25.9, 2, 2),
('Barlavento', 'Gin, xarope de morango, maracujá, suco de laranja, espuma de gengibre e angostura bitter', 25.9, 2, 2),
('Stella Artois', 'Stella Artois Long Neck', 5.99, 2, 4),
('Pepsi', 'Refrigerante', 6.9, 2, 5),
('Cidade Sol', 'Whiskey Jack Daniels, maracujá, mix de cítricos, xarope de hibisco, tomilho e licor 43.', 29.9, 2, 2);

insert into pedido(quantidade,hora,fk_id_comanda,fk_id_itemcardapio)
values(2, '12:58:00',1, 1),
(1, '13:19:00', 1, 2),
(1, '12:34:00', 2, 3),
(3, '12:45:00', 3, 4),
(1, '12:45:00', 3, 5),
(2, '13:30:00', 3, 6),
(1, '12:23:00', 4, 7),
(1, '12:37:00', 4, 8),
(2, '13:42:00', 5, 9),
(1, '12:26:00', 6, 10),
(1, '12:57:00', 6, 1),
(2, '12:21:00', 7, 2),
(3, '13:15:00', 8, 3),
(3, '13:38:00', 8, 4),
(1, '13:02:00', 9, 5),
(2, '13:04:00', 10, 6),
(3, '13:37:00', 10, 7),
(1, '13:49:00', 10, 8),
(1, '12:18:00', 11, 9),
(1, '12:43:00', 12, 1),
(2, '13:09:00', 12, 2),
(3, '13:38:00', 13, 3),
(4, '13:51:00', 13, 4),
(2, '14:23:00', 13, 5),
(1, '14:29:00', 13,6);

insert into observacao(descricao_obs, fk_id_pedido)
values('Sem sal', 1),
('Um prato e talher extra', 4),
('Sem nozes', 5),
('Sem espuma', 7),
('Dois copos com gelo e limão', 9),
('Sem os pães da casa', 12),
('Sem maracujá', 10),
('Servir no copo', 8),
('Porção extra de arroz', 14),
('Adicionar pimenta', 11);
