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
