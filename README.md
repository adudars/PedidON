# TRABALHO 01:  PedidON
Trabalho desenvolvido durante a disciplina de BD1

# Sumário

### 1. COMPONENTES<br>
Eduarda Simões: eduardarsimoes@gmail.com<br>
Gabrielle Azevedo Duda: gabiabacduda@gmail.com<br>
Thiago Freitas: thiagocfreitas2@gmail.com<br>


### 2.INTRODUÇÃO E MOTIVAÇÃO<br>
<p align="justify">A empresa "TEG" visa colaborar com desenvolvimento de cardápio digital e a automação da realização de pedidos dentro de um restaurante local. Sabendo-se dos desafios para gerenciar projetos dentro de um estabelecimento e visando unir as informações relativas a funcionários, pedidos, itens de cardapio e clientes em um mesmo local, ficamos motivados com o desenvolvimento deste sistema. O Sistema "PedidON" tem como objetivo gerenciar algumas informações referentes ao atendimento gastrônomico afim de facilitar e principalmente, pela atual pandemia, mitigar o contato entre funcionários e clientes devido ao contágio fácil do COVID-19. Portanto, para realizar essas operações adequadamente o restaurante necessita que sistema que armazene informações relativas aos Clientes, Funcionários, Pedidos, Cardápio e Comandas, além de também armazenar dados sobre Observações dos pedidos, Categorias e Tamanhos dos itens. Ademais a isso, o sistema também será responsável por gerar um conjunto de relatórios que por sua vez atenderá as necessidades e desejos do restaurante em questão.</p>
 

### 3.MINI-MUNDO<br>
<p align="justify">O sistema proposto envolve a chegada do cliente, no qual terá um cadastro que será associado a comanda responsável pelos pedidos. O cadastro de cliente deverá armazenar o seu nome e cpf, onde o cliente pode ter uma ou várias comandas, mas a comanda estará relacionada com um, e somente um, cliente. Para conciliar o cliente à comanda é necessário a leitura de um QR Code que estará disponível exclusivamente um por mesa. A comanda armazenará o número da mesa e a data do atendimento, e estará associada com nenhum ou vários pedidos, entretanto o pedido estará relacionado com uma, e somente uma, comanda. Após o cliente acessar o QR Code e fizer o seu registro, ele poderá visualizar o cardápio do restaurante e o espaço que conterá o resumo dos seus pedidos a serem realizados nesse atendimento. Os pedidos só poderão ser alterados pelos funcionários do salão e com tempo máximo para cancelamento, já os funcionários da cozinha apenas visualizarão os pedidos no sistema. Sobre o funcionário do salão será armazenado o seu nome e a sua matrícula, e estes poderão atender nenhuma ou várias comandas, porém a comanda só poderá ser atendida por um, e somente um, funcionário. Cada pedido para ser enviado ao preparo deverá estar atrelado a comanda e armazenar a quantidade de itens e a hora da solicitação, podendo estar associada ou não a uma observação, onde esta -observação- armazenará a sua descrição e poderá estar associada a um, e somente um, pedido. Os itens de cardápio que serão pedidos devem armazenar o nome, descrição, preço e estarem associados a um tamanho e categoria. Todo item de cardápio possuirá um, e somente um, tamanho e categoria, no qual ambos armazenarão apenas suas respectivas descrições e poderão estar relacionados a nenhum ou vários itens de cardápio. O item de cardápio estará associado a nenhum ou vários pedidos, mas um pedido estará associado a apenas um, e somente um, item de cardápio. Por fim, as telas serão diferentes entre os funcionários e os clientes, e o sistema não oferecerá pagamento, portanto, após todo o atendimento o cliente solicitará um funcionário para tal atividade e quando a comanda for paga em seu total, o funcionário encerrará no sistema.</p>



### 4.PROTOTIPAÇÃO, PERGUNTAS A SEREM RESPONDIDAS E TABELA DE DADOS<br>
#### 4.1 RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>
[Arquivo PDF do Protótipo Balsamiq feito para o restaurante praiano: versão do cliente](https://github.com/adudars/PedidON/blob/master/arquivos/Prototipo_Cliente.pdf?raw=true "empresa 'TEG'")<br>
[Arquivo PDF do Protótipo Balsamiq feito para o restaurante praiano: versão do funcionário](https://github.com/adudars/PedidON/blob/master/arquivos/Prototipo_Funcionario.pdf?raw=true "empresa 'TEG'")

#### 4.2 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?
<p align="justify">O restaurante em questão precisa inicialmente dos seguintes relatórios:
- Relatório Funcionário destaque: mostrar o nome e a quantidade de comandas atendidas pelo funcionário que mais realizou atendimentos no mês.<br>
- Relatório Frequência de clientes: mostrar o nome e a frequência do cliente no mês. Os resultados devem ser apresentados ordenados pelo valor referente a frequência de forma decrescente.<br>
- Relatório Cardápio Top 3: mostrar o nome e valor dos itens de cardápio mais pedidos no mês. Os resultados devem ser apresentados ordenados pelo valor do item de cardápio de forma decrescente e limitado com apenas 3 linhas de consulta.<br>
- Relatório Faturamento diário: mostrar o valor total faturado no dia.<br>
- Relatório Gasto por clientes: mostrar os nomes e o valor total gasto de cada cliente no mês. Os resultados devem estar ordenados pelo valor total gasto de forma decrescente.
</p> 
#### 4.3 TABELA DE DADOS DO SISTEMA:

[Tabela de dados do PedidON](https://github.com/adudars/PedidON/blob/master/arquivos/4.3_TabelaDeDadosDoSistema.xlsx "Tabela - PedidON")
    
    
### 5.MODELO CONCEITUAL<br>

![Modelo Conceitual](https://github.com/adudars/PedidON/blob/master/images/5_Modelo%20Conceitual.png "5 Modelo Conceitual")
    
    
#### 5.1 Validação do Modelo Conceitual
**Grupo 01:** Kelvin Lehrback Guilherme (Provisões de Emergência)<br>
	Foi avaliado que mudássemos a disposição das entidades, para seguir o padrão de ordem de leitura, de cima para baixo e da esquerda para a direita.<br>
**Grupo 02:** Gabriel Nascimento, Luiza de Alencar e Rebeca Borlini (Naruhodo!)<br>
	Não recomendaram possíveis modificações.

#### 5.2 Descrição dos dados 
**CLIENTE**: Tabela que armazena as informações relativas aos clientes <br>
ID_CLIENTE: campo que armazena o número de identificação para cada cliente do restaurante <br>
NOME_CLIENTE: campo que armazena o nome para cada cliente do restaurante <br>
CPF_CLIENTE: campo que armazena o CPF para cada cliente do restaurante <br>

**FUNCIONARIO**: Tabela que armazena as informações relativas aos funcionários<br>
ID_FUNCIONARIO: campo que armazena o número de identificação para cada funcionário do restaurante <br>
MATRICULA_FUNCIONARIO: campo que armazena o número de matrícula para cada funcionário do restaurante <br>
NOME_FUNCIONARIO: campo que armazena o nome para cada funcionário do restaurante <br>

**ITEM_CARDAPIO**: Tabela que armazena as informações relativas aos itens do cardápio <br>
ID_ITEMCARDAPIO: campo que armazena o número de identificação para cada item do cardápio do restaurante  <br>
NOME_ITEMCARDAPIO: campo que armazena o nome para cada item do cardápio do restaurante  <br>
DESCRICAO_ITEMCARDAPIO: campo que armazena a descrição para cada item de cardápio do restaurante <br>
PREÇO_ITEMCARDAPIO: campo que armazena o número do valor cobrado para cada item do cardápio do restaurante <br>

**OBSERVACAO**: Tabela que armazena as informações relativas às observações dos pedidos <br>
ID_OBSERVACAO: campo que armazena o número de identificação para cada observação de pedido do restaurante  <br>
DESCRICAO_OBSERVACAO: campo que armazena a descrição para cada observação de pedido do restaurante <br>

**TAMANHO**: Tabela que armazena as informações relativas aos possíveis tamanhos dos itens de cardápio <br>
ID_TAMANHO: campo que armazena o número de identificação para cada tamanho de item do cardápio possível do restaurante  <br>
DESCRICAO_TAMANHO: campo que armazena a descrição para cada tipo de tamanho de item do cardápio do restaurante <br>

**PEDIDO**: Tabela que armazena as informações relativas aos pedidos <br>
ID_PEDIDO: campo que armazena o número de identificação para cada pedido do restaurante  <br>
QUANTIDADE_PEDIDO: campo que armazena o número de quantidade para cada pedido do restaurante <br>
HORA_PEDIDO: campo que armazena a hora para cada pedido do restaurante <br>

**COMANDA**: Tabela que armazena as informações relativas às comandas<br>
ID_COMANDA: campo que armazena o número de identificação para cada comanda do restaurante  <br>
DATA_COMANDA: campo que armazena a data de cada comanda do restaurante <br>
MESA_COMANDA: campo que armazena o número da mesa para cada comanda do restaurante <br>

**CATEGORIA**: Tabela que armazena as informações relativas às categorias dos itens de cardápio<br>
ID_CATEGORIA: campo que armazena o número de identificação para cada categoria do item de cardápio do restaurante  <br>
DESCRICAO_CATEGORIA: campo que armazena a descrição de cada categoria do item de cardápio do restaurante <br>


### 6	MODELO LÓGICO<br>
![Modelo Lógico](https://github.com/adudars/PedidON/blob/master/images/6_Modelo%20Logico%20(1).png "6 Modelo lógico")


### 7	MODELO FÍSICO<br>
![Modelo Físico](https://github.com/adudars/PedidON/blob/master/arquivos/7.Modelo%20fisico.sql "7 Modelo Físico")
```
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

CREATE TABLE PEDIDO (
	id_Pedido SERIAL PRIMARY KEY,
	quantidade INTEGER,
	hora TIME,
	fk_id_Comanda INTEGER,
	fk_id_ItemCardapio INTEGER,
	FOREIGN KEY (fk_id_Comanda) REFERENCES COMANDA(id_Comanda),
	FOREIGN KEY (fk_id_ItemCardapio) REFERENCES ITEM_CARDAPIO(id_ItemCardapio)
);

CREATE TABLE OBSERVACAO (
	id_Obs SERIAL PRIMARY KEY,
	descricao_obs VARCHAR(140),
	fk_id_Pedido INTEGER,
	FOREIGN KEY (fk_id_Pedido) REFERENCES PEDIDO(id_Pedido)
);

```
  
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
[Insert nas tabelas](https://github.com/adudars/PedidON/blob/master/arquivos/8.Insert.sql)
```
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

CREATE TABLE PEDIDO (
	id_Pedido SERIAL PRIMARY KEY,
	quantidade INTEGER,
	hora TIME,
	fk_id_Comanda INTEGER,
	fk_id_ItemCardapio INTEGER,
	FOREIGN KEY (fk_id_Comanda) REFERENCES COMANDA(id_Comanda),
	FOREIGN KEY (fk_id_ItemCardapio) REFERENCES ITEM_CARDAPIO(id_ItemCardapio)	
);

CREATE TABLE OBSERVACAO (
	id_Obs SERIAL PRIMARY KEY,
	descricao_obs VARCHAR(140),
	fk_id_Pedido INTEGER,
	FOREIGN KEY (fk_id_Pedido) REFERENCES PEDIDO(id_Pedido)
);

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
('Henrique', 22010),
('Clarice',25648),
('Bento',34862),
('Diego',56412),
('Mauro',15649),
('Antonella',26456),
('José Geraldo', 11111),
('Eduarda', 22222),
('Gabrielle', 33333),
('Thiago', 44444),
('Moises', 55555);

insert into funcionario(nome_funcionario, matricula_funcionario )
values('Bernardo', 2210921),
('Matheus', 3874638),
('Ismael', 4733307),
('Fernanda',1321541),
('Martin',2241335),
('Gabriel',1124365),
('Aline',2214289),
('Maria',3298845),
('Eloisa',1139887),
('Ana Clara',4423569),
('Juliana',6565279),
('Adrian',2325499),
('Ronaldo', 9999999),
('Roberto Carlos', 6666666),
('Marcos', 1111111),
('Rivaldo', 1010101),
('Cafu', 2222222),
('Lucio', 3333333),
('Roque Junior', 4444444),
('Edmilson', 5555555);

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
(13, '2020-08-01', 10, 2),
(1, '2020-08-02', 11, 1),
(2, '2020-08-02', 12, 2),
(3, '2020-08-02', 13, 3),
(4, '2020-08-02', 14, 4),
(5, '2020-08-02', 15, 5),
(6, '2020-08-02', 1, 6),
(7, '2020-08-02', 2, 7),
(8, '2020-08-02', 3, 8),
(9, '2020-08-02', 4, 9),
(10, '2020-08-02', 5, 10),
(11, '2020-08-03', 6, 11),
(12, '2020-08-03', 7, 12),
(13, '2020-08-03', 8, 1),
(1, '2020-08-03', 9, 2),
(2, '2020-08-03', 10, 3),
(3, '2020-08-03', 11, 4),
(4, '2020-08-03', 12, 5),
(5, '2020-08-03', 13, 6),
(6, '2020-08-03', 14, 7),
(7, '2020-08-03', 15, 8),
(8, '2020-08-03', 1, 9),
(9, '2020-08-03', 2, 10),
(10, '2020-08-04', 3, 11),
(11, '2020-08-04', 4, 12),
(12, '2020-08-04', 5, 1),
(13, '2020-08-04', 6, 2),
(1, '2020-08-04', 7, 3),
(2, '2020-08-04', 8, 4),
(3, '2020-08-04', 9, 5),
(4, '2020-08-04', 10, 6),
(5, '2020-08-04', 11, 7),
(6, '2020-08-04', 12, 8),
(7, '2020-08-04', 13, 9),
(8, '2020-08-04', 14, 10),
(9, '2020-08-04', 15, 11),
(10, '2020-08-04', 1, 12),
(11, '2020-08-04', 2, 1),
(1, '2020-08-03', 26, 13),
(2, '2020-08-03', 27, 14),
(3, '2020-08-03', 28, 15),
(4, '2020-08-03', 29, 16),
(5, '2020-08-03', 30, 17),
(6, '2020-08-04', 26, 18),
(7, '2020-08-04', 27, 19),
(8, '2020-08-04', 28, 20),
(9, '2020-08-04', 29, 1),
(10, '2020-08-04', 30, 2),
(12,'2020-08-31',7,1),
(10,'2020-09-23',27,6);

insert into tamanho(descricao_tamanho)
values('2 pessoas'),
('1 pessoa'),
('3 pessoas'),
('long neck'),
('lata'),
('4 pessoas'),
('5 pessoas'),
('jarra'),
('copo'),
('taça'),
('garrafa'),
('330ml'),
('500ml'),
('600ml'),
('1l'),
('2l'),
('3l'),
('dose'),
('combo'),
('unidade');

insert into categoria(nome_categoria)
values('entrada'),
('drink'),
('principal'),
('sobremesa'),
('vinho branco'),
('sanduiche'),
('crepioca'),
('cerveja'),
('whisky'),
('vodka'),
('gin'),
('vinho tinto'),
('espumante'),
('softdrink'),
('petisco'),
('refrigerante'),
('suco'),
('infantil'),
('bebida'),
('cachaça');

insert into item_cardapio(nome_item, descricao_item, preco, fk_id_categoria, fk_id_tamanho)
values('Reta da Penha', 'Filé Mignon marinado na mostarda antiga, servido com pães da casa.', 56.90, 1, 2),
('Rua Sete', 'Filé Mignon ao conhaque, servido com pães da casa', 55, 1, 2),
('Parque Moscoso', 'Polvo à galega - Polvo cozido servido com sal e azeite, acompanhado de batatas e legumes tostados', 145, 3, 1),
('Convento da Penha', 'Peixe do dia servido inteiro e assado com limão siciliano, ervas e alcaparras, acompanhado de massa na manteiga de limão',115, 3, 1),
('Ilha de Socó', 'Chocolate em mousse fria e semi congelada com praliné de nozes', 22, 4, 2),
('Bons ventos te trazem', 'Gin, redução de flor de sabugueiro, maracujá, mix cítricos, espuma de gengibre e angostura bitter', 25.9, 2, 12),
('Barlavento', 'Gin, xarope de morango, maracujá, suco de laranja, espuma de gengibre e angostura bitter', 25.9, 2, 12),
('Stella Artois', 'Stella Artois Long Neck', 5.99, 8, 4),
('Pepsi', 'Refrigerante', 6.9, 17, 5),
('Cidade Sol', 'Whiskey Jack Daniels, maracujá, mix de cítricos, xarope de hibisco, tomilho e licor 43.', 29.9, 2, 12),
('Beira mar','Ostras frescas de Santa Catarina',17.99,15,20),
('Caiaque','Massa ao molho de queijo e iscas de filé mignon ou peixe',36,19,2),
('Arrais','Crepioca de queijo minas, salsa de tomates, manjericão e azeite',27,7,2),
('Brisa','Ciabatta, cogumelos shitake e paris e legume tostados',26,6,2),
('Cachaça','Princesa Isabel',11.9,16,18),
('Appia','Colorado',25.9,8,14),
('Red Label','com 03 águas de coco',299,9,19),
('Ciroc','','1890',10,17),
('Taqueray Experience','com 05 tônicas',559,11,19),
('Borgo Magredo','Uva: Pinot Grigio. País: Itália',95,5,11),
('Semblante','Uva: Carbenet Sauvignon. País: Chile',31.99,12,10),
('Chandon Passion','Demi-Sec',144.99,13,11),
('Palácio Anchieta','Camarão VG, lula em anéis, lagosta e filé de peixe, acompanhado de massa na manteiga de limão',298.99,3,7),
('Paneleiras','Releitura da moqueca capixabas - Peixe grelhado, salsa de tomate e coentro, purê de banana da terra e farofa de urucum',217.99,3,6),
('Gruta da onça','Entrecôte, salsa chermoula e legumes tostados',177.99,3,3)
('Suco','Acerola, Laranja, Maracujá ou Limonada',23.99,18,8),
('Suco','Acerola com Laranja, Frutas vermelhas ou Abacaxi com hortelã',8.99,18,9),
('Red Bull','Tropical',12.9,14,5),('Alto mar','Manjericão orgânico, Xarope de maçã verde, Mix de cítricos e suco de laranja',27.9,14,12),
('Capitão Sharky','Abacaxi, Xarope de frutas vermelhas, mix de cítricos, suco de laranja e espuma de gengibre',45.9,14,13),
('Mojito','Rum Havana Club, Mix de cítricos, hortelã, xarope simples e água com gás',31.9,2,15),
('Coca cola','Original',9.9,17,16),
('Viejo Rincon Reserva','Uva: Malbec. País: Argentina',79,12,10),
('Chungara Gran Reserva','Uva: Sauvignon Blanc. País: Chile',129,5,10),
('Veuve Clicquot','Ponsardin Brut',529,13,11),
('Absolut','Original',249,10,15),
('Campari','Bitter',9.9,16,18),
('Jack Daniels','com água de coco separado',29.9,9,18),
('Colorado','Indica',25.9,8,14),
('Água','sem Gás',4.9,20,12),
('Beffeater pink','com 05 red bull tropical',359,11,19),
('Ilha do Frade','Brownie de limão, sorbet de frutas vermelhas, creme de baunilha e crumble de laranja',33.9,4,1),
('Maresia','Pão rústico, rosbife marinado na mostarda e mix de verdes',31.9,6,2),
('Marujo','Crepioca de peito de peru defumado, queijo branco e alho poró',22.9,7,2),
('Marinheiro','Crepioca de cogumelos salteados no azeito de tomilho',24.99,7,2),
('Pituã Island','Absinto, xarope de pêssego, mix de cítricos, xarope de framboesa e suco de laranja',27.9,2,13),
('Brasil Brasil','Cachaça de Umburana, manjericão orgânico, mix de cítricos, xarope de framboesa e suco de laranja',24.9,2,16),
('Corona','acompanhado de copo com limão',11.9,8,4),
('Brahma','0.0% álcool',6.9,8,4),
('Água','com Gás',6.9,20,12);

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
(1, '14:29:00', 13,6),
(2, '12:00:00',14, 11),
(1, '12:19:00', 15, 12),
(1, '12:34:00', 16, 13),
(3, '12:45:00', 17, 14),
(1, '12:45:00', 18, 15),
(2, '13:00:00', 19, 16),
(1, '13:15:00', 20, 17),
(1, '13:30:00', 21, 18),
(2, '13:50:00', 22, 19),
(1, '14:00:00', 23, 20),
(1, '12:00:00', 24, 21),
(2, '12:15:00', 25, 22),
(3, '12:30:00', 26, 23),
(3, '12:45:00', 27, 24),
(1, '13:00:00', 28, 25),
(2, '13:15:00', 29, 26),
(3, '13:30:00', 30, 27),
(1, '13:45:00', 31, 28),
(1, '13:50:00', 32, 29),
(1, '14:00:00', 33, 30),
(2, '12:00:00', 34, 31),
(3, '12:10:00', 35, 32),
(4, '12:15:00', 36, 33),
(2, '12:30:00', 37, 34),
(1, '12:45:00', 38, 35),
(1, '13:00:00', 39, 36),
(3, '13:15:00', 40, 37),
(1, '13:35:00', 41, 38),
(2, '13:50:00', 42, 39),
(1, '14:00:00', 43, 40),
(1, '12:00:00', 44, 41),
(2, '12:12:00', 45, 42),
(1, '12:26:00', 46, 43),
(1, '12:57:00', 47, 44),
(2, '13:00:00', 48, 45),
(3, '13:23:00', 49, 46),
(3, '13:30:00', 50, 47),
(1, '13:34:00', 61, 48),
(2, '13:50:00', 62, 49),
(3, '14:00:00', 63, 50),
(1, '12:00:00', 64, 11),
(1, '12:18:00', 65, 12),
(1, '12:43:00', 66, 13),
(2, '13:09:00', 67, 14),
(3, '13:38:00', 68, 15),
(4, '13:51:00', 69, 16),
(2, '14:00:00', 70, 17),
(4, '13:14:00', 71, 14),
(4, '13:28:00', 71, 15),
(4, '13:37:00', 71, 16),
(6, '13:14:00', 72, 29),
(1, '13:28:00', 72, 18);

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
('Adicionar pimenta', 11),
('Só filé mignon', 27),
('Copo com gelo', 30),
('Azeitonas no copo', 35),
('Legumes no ponto', 40),
('Limonada', 41),
('Abrir na minha frete', 50),
('Água de coco junto', 54),
('Coloca limão', 55),
('Ostras de Vitória mesmo. De Santa Catarina vai demorar pra chegar', 66),
('2 águas de coco', 72);
```


### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
[Consultas simples realizadas no Google Colaboratory com suas respectivas instruções e resultados](https://github.com/adudars/PedidON/blob/master/arquivos/9.1_ConsultasTabelas.ipynb)

># Marco de Entrega 01: Do item 1 até o item 9.1<br>

#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>
[Consultas com Where realizadas no Google Colaboratory com suas respectivas instruções e resultados](https://github.com/adudars/PedidON/blob/master/arquivos/9.2_ConsultasWhere.ipynb)


#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11)
[Consultas Operadores Lógico, Aritméticos e tabelas ou campos renomeados realizadas no Google Colaboratory com suas respectivas instruções e resultados](https://github.com/adudars/PedidON/blob/master/arquivos/9.3_ConsultasOperadoresLogicoseAritmeticos%26TabelasouCamposRenomeados.ipynb "9.3 Consultas Operadores Logicos e Aritmeticos & Tabelas ou Campos Renomeados")
 
 
#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE E DATAS (Mínimo 12) <br>
[Consultas com Like/Ilike e Datas realizadas no Google Colaboratory com suas respectivas instruções e resultados](https://github.com/adudars/PedidON/blob/master/arquivos/9.4_ConsultasOperadoresLikeIlike&Datas.ipynb "9.4 Consultas com like/ilike e datas")
    

#### 9.5	INSTRUÇÕES APLICANDO ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
[Instruções aplicando atualização e exclusão de dados realizadas no Google Colaboratory com suas respectivas instruções e resultados](https://github.com/adudars/PedidON/blob/master/arquivos/9.5_InstrucoesAtualizacao&ExclusaoDados.ipynb "9.5 Instrucoes Atualizacao & Exclusao Dados")


#### 9.6	CONSULTAS COM INNER JOIN E ORDER BY (Mínimo 6)<br>
[Consultas com Inner Join e Order By realizadas no Google Colaboratory com suas respectivas instruções e resultados](https://github.com/adudars/PedidON/blob/master/arquivos/9.6_ConsultasInnerJoin%26OrderBy.ipynb "9.6 Consultas Inner Join & Order By")


#### 9.7	CONSULTAS COM GROUP BY E FUNÇÕES DE AGRUPAMENTO (Mínimo 6)<br>
[Consultas com Group By e funções de Agrupamento realizadas no Google Colaboratory com suas respectivas instruções e resultados](https://github.com/adudars/PedidON/blob/master/arquivos/9.7_ConsultasGroupBy&FuncoesAgrupamento.ipynb "9.7 Consultas com Group By e funções de Agrupamento")


#### 9.8	CONSULTAS COM LEFT, RIGHT E FULL JOIN (Mínimo 4)<br>
[Consultas com Left, Right e Full Join realizadas no Google Colaboratory com suas respectivas instruções e resultados](https://github.com/adudars/PedidON/blob/master/arquivos/9.8_ConsultasLeft%26Right%26FullJoin.ipynb)


#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)<br>
[Consultas com Self Join e View realizadas no Google Colaboratory com suas respectivas instruções e resultados](https://github.com/adudars/PedidON/blob/master/arquivos/9.9_ConsultasSelfJoin&View.ipynb "9.9 Consultas com Self Join & View")


#### 9.10	SUBCONSULTAS (Mínimo 4)<br>
[Subconsultas realizadas no Google Colaboratory com suas respectivas instruções e resultados](https://github.com/adudars/PedidON/blob/master/arquivos/9.10_Subconsultas.ipynb "9.10 Subconsultas")


># Marco de Entrega 02: Do item 9.2 até o ítem 9.10<br>

### 10 RELATÓRIOS E GRÁFICOS
[Relatórios e gráficos realizados no Google Colaboratory com suas respectivas instruções e resultados](https://github.com/adudars/PedidON/blob/master/arquivos/10.Relatórios&Gráficos.ipynb "10 Relatórios e gráficos")

    

### 11	AJUSTES DA DOCUMENTAÇÃO, CRIAÇÃO DOS SLIDES E VÍDEO PARA APRESENTAÇAO FINAL <br>
[Slides modelo Pecha Kucha](https://github.com/adudars/PedidON/blob/master/arquivos/11.%20Slides_Modelo%20Pecha%20Kucha.pdf "Slides modelo Pecha Kucha")<br>
[Apresentação](https://www.youtube.com/watch?v=yKHjnASLETY&feature=youtu.be&ab_channel=EduardaSimoes "Apresentação")
># Marco de Entrega 03: Itens 10 e 11<br>
<br>
<br>
<br> 



### 12 FORMATACAO NO GIT:<br> 
https://help.github.com/articles/basic-writing-and-formatting-syntax/
<comentario no git>
    
##### About Formatting
    https://help.github.com/articles/about-writing-and-formatting-on-github/
    
##### Basic Formatting in Git
    https://help.github.com/articles/basic-writing-and-formatting-syntax/#referencing-issues-and-pull-requests
    
##### Working with advanced formatting
    https://help.github.com/articles/working-with-advanced-formatting/
    
#### Mastering Markdown
    https://guides.github.com/features/mastering-markdown/
