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
O sistema proposto envolve a chegada do cliente, no qual terá um cadastro que será associado a comanda responsável pelos pedidos. O cadastro de cliente deverá armazenar o nome e seu cpf, onde o cliente pode ter uma ou várias comandas, mas a comanda está relacionada com um, e somente um, cliente. Para conciliar o cliente à mesa, é necessário a leitura de um QR Code que estará disponível exclusivamente um por mesa e que conterá o número da comanda previamente organizado pela equipe, sem repetição. A comanda armazenará o número da mesa e a data do atendimento, onde a comanda estará associada com nenhum ou vários pedidos, entretanto o pedido estará relacionado com uma, e somente uma, comanda. Quando o cliente acessar o QR Code e fizer o seu registro, ele poderá visualizar o cardápio do restaurante e o espaço que conterá o resumo dos seus pedidos realizados nesse atendimento. Os pedidos só poderão ser alterados pelos funcionários do salão e com tempo máximo para cancelamento, já os funcionários da cozinha apenas visualizarão os pedidos no sistema. O funcionário do salão será identificado por nome e matrícula, e podem atender nenhuma ou várias comandas, entretanto a comanda só poderá ser atendida por um, e somente um, funcionário. Cada pedido para ser enviado ao preparo deverá estar atrelado a comanda e armazenar a quantidade de itens e hora da solicitação, podendo ter ou não uma observação, onde essa só possui sua descrição. Uma observação estará associada a um, e somente um, pedido. Os itens de cardápio que serão pedidos devem armazenar o nome, descrição, preço, tamanho e categoria. Todo item de cardápio possui um, e somente um, tamanho e categoria, no qual ambos armazenarão apenas suas respectivas descrições e poderão estar relacionados a nenhum ou vários itens de cardápio. O item de cardápio poderá estar associado a nenhum ou vários pedidos, mas um pedido estará associado a apenas um, e somente um, item de cardápio. Por fim, as telas serão diferentes entre os funcionários e os clientes, e o sistema não oferecerá pagamento, portanto, após todo o atendimento o cliente solicitará um funcionário para tal atividade e quando a comanda for paga em seu total, o funcionário encerrará no sistema.



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
    a) Esta tabela deve conter todos os atributos do sistema e um mínimo de 10 linhas/registros de dados.
    b) Esta tabela tem a intenção de simular um relatório com todos os dados que serão armazenados 
    
![Exemplo de Tabela de dados da Empresa Devcom](https://github.com/discipbd1/trab01/blob/master/arquivos/TabelaEmpresaDevCom_sample.xlsx?raw=true "Tabela - Empresa Devcom")
    
    
### 5.MODELO CONCEITUAL<br>
    A) Utilizar a Notação adequada (Preferencialmente utilizar o BR Modelo 3)
    B) O mínimo de entidades do modelo conceitual pare este trabalho será igual a 3 e o Máximo 5.
        * informe quais são as 3 principais entidades do sistema em densenvolvimento<br>(se houverem mais de 3 entidades, pense na importância da entidade para o sistema)       
    C) Principais fluxos de informação/entidades do sistema (mínimo 3). <br>Dica: normalmente estes fluxos estão associados as tabelas que conterão maior quantidade de dados 
    D) Qualidade e Clareza
        Garantir que a semântica dos atributos seja clara no esquema (nomes coerentes com os dados).
        Criar o esquema de forma a garantir a redução de informação redundante, possibilidade de valores null, 
        e tuplas falsas (Aplicar os conceitos de normalização abordados).   
        
![Alt text](https://github.com/discipbd1/trab01/blob/master/images/concept_sample.png?raw=true "Modelo Conceitual")
    
    
#### 5.1 Validação do Modelo Conceitual
    [Grupo01]: [Nomes dos que participaram na avaliação]
    [Grupo02]: [Nomes dos que participaram na avaliação]

#### 5.2 Descrição dos dados 
**CLIENTE**: Tabela que armazena as informações relativas aos clientes <br>
IDENTIFICAÇÃO CLIENTE: campo que armazena o número de identificação para cada cliente do restaurante <br>
NOME: campo que armazena o nome para cada cliente do restaurante <br>
CPF: campo que armazena o CPF para cada cliente do restaurante <br>

**FUNCIONÁRIO**: Tabela que armazena as informações relativas aos funcionários<br>
IDENTIFICAÇÃO FUNCIONÁRIO: campo que armazena o número de identificação para cada funcionário do restaurante <br>
MATRÍCULA: campo que armazena o número de matrícula para cada funcionário do restaurante <br>
NOME: campo que armazena o nome para cada funcionário do restaurante <br>

**ITEM_CARDÁPIO**: Tabela que armazena as informações relativas aos itens do cardápio <br>
IDENTIFICAÇÃO ITEM CARDÁPIO: campo que armazena o número de identificação para cada item do cardápio do restaurante  <br>
NOME: campo que armazena o nome para cada item do cardápio do restaurante  <br>
DESCRIÇÃO: campo que armazena a descrição para cada item de cardápio do restaurante <br>
PREÇO: campo que armazena o número do valor cobrado para cada item do cardápio do restaurante <br>

**OBSERVAÇÃO**: Tabela que armazena as informações relativas às observações dos pedidos <br>
IDENTIFICAÇÃO OBS: campo que armazena o número de identificação para cada observação de pedido do restaurante  <br>
DESCRIÇÃO: campo que armazena a descrição para cada observação de pedido do restaurante <br>

**TAMANHO**: Tabela que armazena as informações relativas aos possíveis tamanhos dos itens de cardápio <br>
IDENTIFICAÇÃO TAMANHO: campo que armazena o número de identificação para cada tamanho de item do cardápio possível do restaurante  <br>
DESCRIÇÃO: campo que armazena a descrição para cada tipo de tamanho de item do cardápio do restaurante <br>

**PEDIDO**: Tabela que armazena as informações relativas aos pedidos <br>
IDENTIFICAÇÃO PEDIDO: campo que armazena o número de identificação para cada pedido do restaurante  <br>
QUANTIDADE: campo que armazena o número de quantidade para cada pedido do restaurante <br>
HORA: campo que armazena a hora para cada pedido do restaurante <br>

**COMANDA**: Tabela que armazena as informações relativas às comandas<br>
IDENTIFICAÇÃO COMANDA: campo que armazena o número de identificação para cada comanda do restaurante  <br>
DATA: campo que armazena a data de cada comanda do restaurante <br>
NÚMERO DA MESA: campo que armazena o número da mesa para cada comanda do restaurante <br>

**CATEGORIA**: Tabela que armazena as informações relativas às categorias dos itens de cardápio<br>
IDENTIFICAÇÃO CATEGORIA: campo que armazena o número de identificação para cada categoria do item de cardápio do restaurante  <br>
DESCRIÇÃO: campo que armazena a descrição de cada categoria do item de cardápio do restaurante <br>


### 6	MODELO LÓGICO<br>
        a) inclusão do esquema lógico do banco de dados
        b) verificação de correspondencia com o modelo conceitual 
        (não serão aceitos modelos que não estejam em conformidade)


### 7	MODELO FÍSICO<br>
        a) inclusão das instruções de criacão das estruturas em SQL/DDL 
        (criação de tabelas, alterações, etc..) 
        
       
### 8	INSERT APLICADO NAS TABELAS DO BANCO DE DADOS<br>
        a) inclusão das instruções de inserção dos dados nas tabelas criadas pelo script de modelo físico
        (Drop para exclusão de tabelas + create definição de para tabelas e estruturas de dados + insert para dados a serem inseridos)
        b) Criar um novo banco de dados para testar a restauracao 
        (em caso de falha na restauração o grupo não pontuará neste quesito)
        c) formato .SQL


### 9	TABELAS E PRINCIPAIS CONSULTAS<br>
#### 9.1	CONSULTAS DAS TABELAS COM TODOS OS DADOS INSERIDOS (Todas) <br>
![Consultas simples realizadas no Google Colaboratory com suas respectivas instruções e resultados](https://github.com/adudars/PedidON/blob/master/9_1_ConsultasTabelas.ipynb)

># Marco de Entrega 01: Do item 1 até o item 9.1<br>

#### 9.2	CONSULTAS DAS TABELAS COM FILTROS WHERE (Mínimo 4)<br>
#### 9.3	CONSULTAS QUE USAM OPERADORES LÓGICOS, ARITMÉTICOS E TABELAS OU CAMPOS RENOMEADOS (Mínimo 11)
    a) Criar 5 consultas que envolvam os operadores lógicos AND, OR e Not
    b) Criar no mínimo 3 consultas com operadores aritméticos 
    c) Criar no mínimo 3 consultas com operação de renomear nomes de campos ou tabelas

#### 9.4	CONSULTAS QUE USAM OPERADORES LIKE E DATAS (Mínimo 12) <br>
    a) Criar outras 5 consultas que envolvam like ou ilike
    b) Criar uma consulta para cada tipo de função data apresentada.

#### 9.5	INSTRUÇÕES APLICANDO ATUALIZAÇÃO E EXCLUSÃO DE DADOS (Mínimo 6)<br>
    a) Criar minimo 3 de exclusão
    b) Criar minimo 3 de atualização

#### 9.6	CONSULTAS COM INNER JOIN E ORDER BY (Mínimo 6)<br>
    a) Uma junção que envolva todas as tabelas possuindo no mínimo 2 registros no resultado
    b) Outras junções que o grupo considere como sendo as de principal importância para o trabalho

#### 9.7	CONSULTAS COM GROUP BY E FUNÇÕES DE AGRUPAMENTO (Mínimo 6)<br>
    a) Criar minimo 2 envolvendo algum tipo de junção

#### 9.8	CONSULTAS COM LEFT, RIGHT E FULL JOIN (Mínimo 4)<br>
    a) Criar minimo 1 de cada tipo

#### 9.9	CONSULTAS COM SELF JOIN E VIEW (Mínimo 6)<br>
        a) Uma junção que envolva Self Join (caso não ocorra na base justificar e substituir por uma view)
        b) Outras junções com views que o grupo considere como sendo de relevante importância para o trabalho

#### 9.10	SUBCONSULTAS (Mínimo 4)<br>
     a) Criar minimo 1 envolvendo GROUP BY
     b) Criar minimo 1 envolvendo algum tipo de junção

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


