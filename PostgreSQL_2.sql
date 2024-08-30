CREATE table investimentos(
  id_investimento integer primary key not null,
  nome varchar(100),
  valor_inicial numeric(7,2),--o valor entre "()" sigifica que 
  rendimento_mensal numeric(6,2),
  recebimento_mensal numeric(6,2)
)

INSERT INTO investimentos(id_investimento, nome, valor_inicial, rendimento_mensal, recebimento_mensal) VALUES (1, 'tesouro direto', 5000.00, 50.00, 52.00);

ALTER table investimentos rename to investimentos

insert into investimentos(id_investimento, nome, valor_inicial, rendimento_mensal, recebimento_mensal) values (2, 'Fundo imobiliario', 5000.00, 50.00, 52.00)

select * from investimentos

INSERT INTO investimentos(id_investimento, nome, valor_inicial, rendimento_mensal, recebimento_mensal) VALUES (3, 'mini dolar', 3000.00, 30.00, 32.00);
INSERT INTO investimentos(id_investimento, nome, valor_inicial, rendimento_mensal, recebimento_mensal) VALUES (4, 'XP MM', 4000.00, 40.00, 42.00);
INSERT INTO investimentos(id_investimento, nome, valor_inicial, rendimento_mensal, recebimento_mensal) VALUES (5, 'tesouro direto', 5500.00, 55.00, 57.00);
INSERT INTO investimentos(id_investimento, nome, valor_inicial, rendimento_mensal, recebimento_mensal) VALUES (6, 'petrogas', 6500.00, 65.00, 68.00);
INSERT INTO investimentos(id_investimento, nome, valor_inicial, rendimento_mensal, recebimento_mensal) VALUES (7, 'mini dolar', 3200.00, 32.00, 34.00);
INSERT INTO investimentos(id_investimento, nome, valor_inicial, rendimento_mensal, recebimento_mensal) VALUES (8, 'XP MM', 4200.00, 42.00, 44.00);
INSERT INTO investimentos(id_investimento, nome, valor_inicial, rendimento_mensal, recebimento_mensal) VALUES (9, 'tesouro direto', 6000.00, 60.00, 63.00);
INSERT INTO investimentos(id_investimento, nome, valor_inicial, rendimento_mensal, recebimento_mensal) VALUES (10, 'petrogas', 7000.00, 70.00, 73.00);
INSERT INTO investimentos(id_investimento, nome, valor_inicial, rendimento_mensal, recebimento_mensal) VALUES (11, 'mini dolar', 3400.00, 34.00, 36.00);
INSERT INTO investimentos(id_investimento, nome, valor_inicial, rendimento_mensal, recebimento_mensal) VALUES (12, 'XP MM', 4400.00, 44.00, 47.00);
INSERT INTO investimentos(id_investimento, nome, valor_inicial, rendimento_mensal, recebimento_mensal) VALUES (13, 'tesouro direto', 6500.00, 65.00, 68.00);
INSERT INTO investimentos(id_investimento, nome, valor_inicial, rendimento_mensal, recebimento_mensal) VALUES (14, 'petrogas', 7500.00, 75.00, 78.00);
INSERT INTO investimentos(id_investimento, nome, valor_inicial, rendimento_mensal, recebimento_mensal) VALUES (15, 'mini dolar', 3600.00, 36.00, 38.00);
INSERT INTO investimentos(id_investimento, nome, valor_inicial, rendimento_mensal, recebimento_mensal) VALUES (16, 'XP MM', 4600.00, 46.00, 49.00);
INSERT INTO investimentos(id_investimento, nome, valor_inicial, rendimento_mensal, recebimento_mensal) VALUES (17, 'tesouro direto', 7000.00, 70.00, 73.00);
INSERT INTO investimentos(id_investimento, nome, valor_inicial, rendimento_mensal, recebimento_mensal) VALUES (18, 'petrogas', 8000.00, 80.00, 83.00);
INSERT INTO investimentos(id_investimento, nome, valor_inicial, rendimento_mensal, recebimento_mensal) VALUES (19, 'mini dolar', 3800.00, 38.00, 40.00);
INSERT INTO investimentos(id_investimento, nome, valor_inicial, rendimento_mensal, recebimento_mensal) VALUES (20, 'XP MM', 4800.00, 48.00, 51.00);
INSERT INTO investimentos(id_investimento, nome, valor_inicial, rendimento_mensal, recebimento_mensal) VALUES (21, 'tesouro direto', 7500.00, 75.00, 78.00);
INSERT INTO investimentos(id_investimento, nome, valor_inicial, rendimento_mensal, recebimento_mensal) VALUES (22, 'petrogas', 8500.00, 85.00, 88.00);
INSERT INTO investimentos(id_investimento, nome, valor_inicial, rendimento_mensal, recebimento_mensal) VALUES (23, 'mini dolar', 4000.00, 40.00, 42.00);
INSERT INTO investimentos(id_investimento, nome, valor_inicial, rendimento_mensal, recebimento_mensal) VALUES (24, 'XP MM', 5000.00, 50.00, 53.00);
INSERT INTO investimentos(id_investimento, nome, valor_inicial, rendimento_mensal, recebimento_mensal) VALUES (25, 'tesouro direto', 8000.00, 80.00, 83.00);

--retorna o numero total de investimentos cadastrados
select count(*) from investimentos

--retornar o numero total de investimentos cadastrados no tesouro direto
SELECT count(*) from investimentos WHERE nome = 'tesouro direto'

--descobrir o maior valor investido
SELECT max(valor_inicial) from investimentos

--descobrir o menor investimento
SELECT min(valor_inicial) from investimentos

--descobrir a media do rendimento mensal
SELECT avg(rendimento_mensal) from investimentos

--seleciona o valor total dos investimentos
SELECT sum(valor_inicial) from investimentos

--colocar um apelido na coluna do select(alias)
--sem apelido(aliás)
SELECT sum(valor_inicial),sum(rendimento_mensal),sum(recebimento_mensal) from investimentos

--com aliás
SELECT sum(valor_inicial) AS valor_inicial, sum(rendimento_mensal) "rendimento_mensal",sum(recebimento_mensal) recebimento_mensal from investimentos

--concatenação
select 'Investimento: ' || sum(valor_inicial) ||' Rendimentos ' || sum(rendimento_mensal) Valores from investimentos 

--descobrir a media de rendimento mensal com round- Arredonda v com s casas decimais
select avg(recebimento_mensal), round(avg(recebimento_mensal)) from investimentos

select round(avg(recebimento_mensal),2) from investimentos

--Descobri a média do rendimento mensal com ceil - inteiro mais próximo maior ou igual ao argumento arendonda para cima
select avg(recebimento_mensal),ceil(avg(recebimento_mensal)) from investimentos

--Descobri a média do rendimento mensal com floor  - inteiro mais próximo menor ou igual ao argumento arendonda para baixo
select avg(recebimento_mensal),floor(avg(recebimento_mensal)) from investimentos

--Group By 
-- é usada para agrupar linhas que tem os mesmos valores em colunas específicas, permitindo-nos realizar operações de agregação em cada grupo

--Retornar o número total de investimentos cadastrados agrupados por grupo de investimento:
select  nome, count(*),sum(recebimento_mensal) from investimentos  group by nome

-------------- Having --------------
--permite filtrar o conjunto de resultados usando dados agregados

--Retornar o número total de investimentos cadastrados agrupados por grupo de investimento:
SELECT nome, COUNT(*), SUM(recebimento_mensal) from investimentos group by nome HAVING sum(recebimento_mensal)>=200

--Retornar o número total de investimentos cadastrados agrupados por grupo de investimento e com operadores lógicos
SELECT nome, count(*), sum(recebimento_mensal) from investimentos group by nome having sum(recebimento_mensal)>=200 and count(*)<6


-----------------------------------------------------------------------------------------------------------------------------------------
CREATE table estoque(

  id_estoque integer PRIMARY key not NULL,
  nome VARCHAR(250),
  cnpj VARCHAR(20) UNIQUE not NULL
  
);

create TABLE nota_fiscal(

  id_nota_fiscal INTEGER PRIMARY KEY NOT NULL,
  qta_itens INTEGER CHECK(qta_itens > 0),
  num_comprador INTEGER,
  data_compra TIMESTAMP,
  valor_total numeric(10,2)
  
);

CREATE TABLE produtos(

  id_produtos INTEGER PRIMARY KEY,
  id_nota_fiscal INTEGER,
  id_estoque INTEGER,
  nome VARCHAR(100),
  descricao VARCHAR(300),
  avariado CHAR(1),
  valor NUMERIC(7,2) check(valor > 0),
  validade DATE,
  CONSTRAINT fk_id_nota_fiscal foreign key(id_nota_fiscal) REFERENCES nota_fiscal(id_nota_fiscal),
  constraint fk_id_estoque foreign key(id_estoque) REFERENCES estoque(id_estoque)
  
);