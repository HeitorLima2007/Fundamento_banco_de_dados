CREATE TABLE usuario(
id_usuario INTEGER PRIMARY KEY not NULL,
nome VARCHAR(100),
frase TEXT
)

insert into usuario (id_usuario, nome, frase) values (1, 'Manequinho', 'Sou esportista');
INSERT INTO usuario (id_usuario, nome, frase) values (2, 'Lucrécio', 'Estou pirando na batatinha!');
INSERT INTO usuario (id_usuario, nome, frase) values (3, 'Nemo', 'Gosto de nadar');
INSERT INTO usuario (id_usuario, nome, frase) VALUES (4, 'David', 'Sempre há uma luz no fim do túnel.');
INSERT INTO usuario (id_usuario, nome, frase) VALUES (5, 'Eva', 'Seja a mudança que você deseja ver.');
INSERT INTO usuario (id_usuario, nome, frase) VALUES (6, 'Frank', 'O sucesso é a soma de pequenos esforços.');
INSERT INTO usuario (id_usuario, nome, frase) VALUES (7, 'Grace', 'Acredite em si mesmo.');
INSERT INTO usuario (id_usuario, nome, frase) VALUES (8, 'Hank', 'O melhor ainda está por vir.');

--Seleciona tudo do usuário
SELECT * FROM usuario

--Seleciona tudo apenas de um usuário específico
SELECT * FROM usuario WHERE nome = 'Lucrécio'

--Buscar as frases de todos os usuários
SELECT frase from usuario


select nome,frase FROM usuario WHERE id_usuario = 4

--update (atualização)
update usuario set frase  = 'Gosta de Comer' where id_usuario = 4

UPDATE usuario set frase = 'Cozinho muito bem', nome = 'Gaspar' WHERE id_usuario = 1

select nome,frase from usuario

--delete
SELECT * from usuario where id_usuario = 5

DELETE from usuario where id_usuario = 5

select * from usuario

--Deleta o item especificado
DELETE from usuario
SELECT * FROM usuario

--Deleta toda a tabela selecionadademo
drop table usuario

--alter table (alterar tabela) / ADD COLUM (adicionar coluna)
ALTER table usuario add COLUMN hobby VARCHAR(50)

alter table usuario Add COLUMN qtd_familia INTEGER DEFAULT 2

--Deleta a coluna especificada
ALTER TABLE usuario DROP COLUMN hobby

--Operadores lógicos
SELECT * from usuario WHERE id_usuario >= 2

SELECT * from usuario WHERE id_usuario <> 2

select * from usuario where id_usuario >=1 and id_usuario <=3

select * from usuario where id_usuario >=1 OR id_usuario <=3

SELECT * from usuario where id_usuario BETWEEN 1 and 3

SELECT * FROM usuario WHERE id_usuario not in(1,3)

SELECT * from usuario WHERE id_usuario in(1,3)

SELECT * from usuario WHERE nome LIKE '%a%'

SELECT * from usuario WHERE nome LIKE 'M%'

SELECT * from usuario WHERE nome LIKE '%M'