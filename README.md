# TRABALHO 01:  PedidON
Trabalho desenvolvido durante a disciplina de BD1

# Sumário

### 1. COMPONENTES<br>
Eduarda Simões: eduardarsimoes@gmail.com<br>
Gabrielle Azevedo Duda: gabiabacduda@gmail.com<br>
Thiago Freitas: thiagocfreitas2@gmail.com<br>


### 2.INTRODUÇÃO E MOTIVAÇÃO<br>
A empresa "TEG" visa colaborar com desenvolvimento de cardápio digital e a automação da realização de pedidos dentro de um restaurante local. Sabendo-se dos desafios para gerenciar projetos dentro de um estabelecimento e visando unir as informações relativas a funcionários, pedidos, itens de cardapio e clientes em um mesmo local, ficamos motivados com o desenvolvimento deste sistema. O Sistema "PedidON" tem como objetivo gerenciar algumas informações referentes ao atendimento gastrônomico afim de facilitar e principalmente, pela atual pandemia, mitigar o contato entre funcionários e clientes devido ao contágio fácil do COVID-19. Portanto, para realizar essas operações adequadamente o restaurante necessita que sistema que armazene informações relativas aos Clientes, Funcionários, Pedidos, Cardápio e Comandas, além de também armazenar dados sobre Observações dos pedidos e Tamanhos dos itens. Ademais a isso, o sistema também será responsável por gerar um conjunto de relatórios que por sua vez atenderá as necessidades e desejos do restaurante em questão.
 

### 3.MINI-MUNDO<br>
O sistema proposto envolve a chegada do cliente, no qual terá um cadastro que será associado a comanda responsável pelos pedidos. O cadastro de cliente deverá armazenar o seu nome e cpf, onde o cliente pode ter uma ou várias comandas, mas a comanda estará relacionada com um, e somente um, cliente. Para conciliar o cliente à comanda é necessário a leitura de um QR Code que estará disponível exclusivamente um por mesa. A comanda armazenará o número da mesa e a data do atendimento, e estará associada com nenhum ou vários pedidos, entretanto o pedido estará relacionado com uma, e somente uma, comanda. Após o cliente acessar o QR Code e fizer o seu registro, ele poderá visualizar o cardápio do restaurante e o espaço que conterá o resumo dos seus pedidos a serem realizados nesse atendimento. Os pedidos só poderão ser alterados pelos funcionários do salão e com tempo máximo para cancelamento, já os funcionários da cozinha apenas visualizarão os pedidos no sistema. Sobre o funcionário do salão será armazenado o seu nome e a sua matrícula, e estes poderão atender nenhuma ou várias comandas, porém a comanda só poderá ser atendida por um, e somente um, funcionário. Cada pedido para ser enviado ao preparo deverá estar atrelado a comanda e armazenar a quantidade de itens e a hora da solicitação, podendo estar associada ou não a uma observação, onde esta -observação- armazenará a sua descrição e poderá estar associada a um, e somente um, pedido. Os itens de cardápio que serão pedidos devem armazenar o nome, descrição, preço e estarem associados a um tamanho e categoria. Todo item de cardápio possuirá um, e somente um, tamanho e categoria, no qual ambos armazenarão apenas suas respectivas descrições e poderão estar relacionados a nenhum ou vários itens de cardápio. O item de cardápio estará associado a nenhum ou vários pedidos, mas um pedido estará associado a apenas um, e somente um, item de cardápio. Por fim, as telas serão diferentes entre os funcionários e os clientes, e o sistema não oferecerá pagamento, portanto, após todo o atendimento o cliente solicitará um funcionário para tal atividade e quando a comanda for paga em seu total, o funcionário encerrará no sistema.



### 4.PROTOTIPAÇÃO, PERGUNTAS A SEREM RESPONDIDAS E TABELA DE DADOS<br>
#### 4.1 RASCUNHOS BÁSICOS DA INTERFACE (MOCKUPS)<br>
![Arquivo PDF do Protótipo Balsamiq feito para o restaurante praiano: versão do cliente](https://github.com/adudars/PedidON/blob/master/arquivos/Prototipo_Cliente.pdf?raw=true "empresa 'TEG'")<br>
![Arquivo PDF do Protótipo Balsamiq feito para o restaurante praiano: versão do funcionário](https://github.com/adudars/PedidON/blob/master/arquivos/Prototipo_Funcionario.pdf?raw=true "empresa 'TEG'")

#### 4.2 QUAIS PERGUNTAS PODEM SER RESPONDIDAS COM O SISTEMA PROPOSTO?
O restaurante em questão precisa inicialmente dos seguintes relatórios:
* Relatório Funcionário destaque: mostrar o nome e a quantidade de comandas atendidas pelo funcionário que mais realizou atendimentos no mês.
* Relatório Frequência de clientes: mostrar o nome e a frequência do cliente no mês. Os resultados devem ser apresentados ordenados pelo valor referente a frequência de forma decrescente.
* Relatório Cardápio Top 3: mostrar o nome e valor dos itens de cardápio mais pedidos no mês. Os resultados devem ser apresentados ordenados pelo valor do item de cardápio de forma decrescente e limitado com apenas 3 linhas de consulta.
* Relatório Faturamento mensal: mostrar o valor total faturado no mês.
* Relatório Gasto por clientes: mostrar os nomes e o valor total gasto de cada cliente no mês. Os resultados devem estar ordenados pelo valor total gasto de forma decrescente.
 
#### 4.3 TABELA DE DADOS DO SISTEMA:

![Tabela de dados do PedidON](https://github.com/adudars/PedidON/blob/master/arquivos/4.3_Tabela%20de%20dados%20do%20sistema.xlsx "Tabela - PedidON")
    
    
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
![Modelo Físico](https://github.com/adudars/PedidON/blob/master/arquivos/7_Modelo%20fisico.sql "7 Modelo Físico")
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
	descricao VARCHAR(30)
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
	descricao VARCHAR(140),
	fk_id_Pedido INTEGER,
	FOREIGN KEY (fk_id_Pedido) REFERENCES PEDIDO(id_Pedido)
);

CREATE TABLE ITEM_CARDAPIO (
	id_ItemCardapio SERIAL PRIMARY KEY,
	nome_Item VARCHAR(80),
	preco FLOAT,
	descricao VARCHAR(200),
	fk_id_Categoria INTEGER,
	fk_id_Tamanho INTEGER,
	FOREIGN KEY (fk_id_Categoria) REFERENCES CATEGORIA(id_Categoria),
	FOREIGN KEY (fk_id_Tamanho) REFERENCES TAMANHO(id_Tamanho)
);

ALTER TABLE PEDIDO ADD
FOREIGN KEY (fk_id_ItemCardapio) REFERENCES ITEM_CARDAPIO(id_ItemCardapio);


```
  
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
![Insert nas tabelas](https://github.com/adudars/PedidON/blob/master/arquivos/8_Insert.sql)
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
	descricao VARCHAR(30)
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
	descricao VARCHAR(140),
	fk_id_Pedido INTEGER,
	FOREIGN KEY (fk_id_Pedido) REFERENCES PEDIDO(id_Pedido)
);

CREATE TABLE ITEM_CARDAPIO (
	id_ItemCardapio SERIAL PRIMARY KEY,
	nome_Item VARCHAR(80),
	preco FLOAT,
	descricao VARCHAR(200),
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

insert into tamanho(descricao)
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

insert into item_cardapio(nome_item, descricao, preco, fk_id_categoria, fk_id_tamanho)
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

insert into observacao(descricao, fk_id_pedido)
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

```


### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
![Consultas simples realizadas no Google Colaboratory com suas respectivas instruções e resultados](https://github.com/adudars/PedidON/blob/master/arquivos/9.1_ConsultasSimplesTabelas.ipynb)

># Marco de Entrega 01: Do item 1 até o item 9.1<br>

#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>
![Consultas Where](https://github.com/adudars/PedidON/blob/master/arquivos/9.2_Consultas_Where.sql)
```
select * from comanda where fk_id_funcionario=1;

select id_comanda from comanda where mesa=1;

select nome_cliente from cliente where id_cliente=10;

select * from item_cardapio where preco<50;
```
#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11)
![Consultas Operadores Lógico, Aritméticos e tabelas ou campos renomeados](https://github.com/adudars/PedidON/blob/master/arquivos/9.3_Consulta_Operadores.sql)
    a) Criar 5 consultas que envolvam os operadores lógicos AND, OR e Not
    b) Criar no mínimo 3 consultas com operadores aritméticos 
    c) Criar no mínimo 3 consultas com operação de renomear nomes de campos ou tabelas
 ```
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
 ```
 
#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE E DATAS (Mínimo 12) <br>
![Consultas com like/ilike e datas](https://github.com/adudars/PedidON/blob/master/arquivos/9.4_Consultas_Like&Data.sql "9.4 Consultas com like/ilike e datas")
##### 9.4.1	CONSULTAS QUE USAM OPERADORES LIKE
```
select nome_cliente
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
```
    
##### 9.4.2	CONSULTAS QUE USAM DATA
```
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
```
    

#### 9.5	INSTRUÇÕES APLICANDO ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
    a) Criar minimo 3 de exclusão
    b) Criar minimo 3 de atualização
```
```

#### 9.6	CONSULTAS COM INNER JOIN E ORDER BY (Mínimo 6)<br>
    a) Uma junção que envolva todas as tabelas possuindo no mínimo 2 registros no resultado
    b) Outras junções que o grupo considere como sendo as de principal importância para o trabalho
```
```

#### 9.7	CONSULTAS COM GROUP BY E FUNÇÕES DE AGRUPAMENTO (Mínimo 6)<br>
![Consultas com group by e funções de agrupamento](https://github.com/adudars/PedidON/blob/master/arquivos/9.7_Consultas_GroupBy&Agrupamento.sql "9.4 Consultas com group by e funções de agrupamento")
```
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
```

#### 9.8	CONSULTAS COM LEFT, RIGHT E FULL JOIN (Mínimo 4)<br>
    a) Criar minimo 1 de cada tipo
```
```

#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)<br>
        a) Uma junção que envolva Self Join (caso não ocorra na base justificar e substituir por uma view)
        b) Outras junções com views que o grupo considere como sendo de relevante importância para o trabalho
```
```

#### 9.10	SUBCONSULTAS (Mínimo 4)<br>
     a) Criar minimo 1 envolvendo GROUP BY
     b) Criar minimo 1 envolvendo algum tipo de junção
```
```

># Marco de Entrega 02: Do item 9.2 até o ítem 9.10<br>

### 10 RELATÓRIOS E GRÁFICOS

#### a) análises e resultados provenientes do banco de dados desenvolvido (usar modelo disponível)
#### b) link com exemplo de relatórios será disponiblizado pelo professor no AVA
#### OBS: Esta é uma atividade de grande relevância no contexto do trabalho. Mantenha o foco nos 5 principais relatórios/resultados visando obter o melhor resultado possível.

    

### 11	AJUSTES DA DOCUMENTAÇÃO, CRIAÇÃO DOS SLIDES E VÍDEO PARA APRESENTAÇAO FINAL <br>

#### a) Modelo (pecha kucha)<br>
#### b) Tempo de apresentação 6:40 

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

    
### OBSERVAÇÕES IMPORTANTES

#### Todos os arquivos que fazem parte do projeto (Imagens, pdfs, arquivos fonte, etc..), devem estar presentes no GIT. Os arquivos do projeto vigente não devem ser armazenados em quaisquer outras plataformas.
1. <strong>Caso existam arquivos com conteúdos sigilosos<strong>, comunicar o professor que definirá em conjunto com o grupo a melhor forma de armazenamento do arquivo.

#### Todos os grupos deverão fazer Fork deste repositório e dar permissões administrativas ao usuário do git "profmoisesomena", para acompanhamento do trabalho.

#### Os usuários criados no GIT devem possuir o nome de identificação do aluno (não serão aceitos nomes como Eu123, meuprojeto, pro456, etc). Em caso de dúvida comunicar o professor.


Link para BrModelo:<br>
http://www.sis4.com/brModelo/download.html
<br>


Link para curso de GIT<br>
![https://www.youtube.com/curso_git](https://www.youtube.com/playlist?list=PLo7sFyCeiGUdIyEmHdfbuD2eR4XPDqnN2?raw=true "Title")


