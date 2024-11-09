create table  ESCOLA(
escola_id INTEGER  PRIMARY KEY NOT NULL,
nome VARCHAR(200),
endereco VARCHAR(300),
telefone VARCHAR(15),
data_fundacao DATE
)

INSERT INTO escola(escola_id,nome,endereco,telefone,data_fundacao) VALUES (1,'Escola ABC', 'Rua A, 123','1234-5678','2000-01-01'), (2,'Escola XYZ','Avenida B, 456', '2345-6789', '2005-06-15'), (3,'Escola 123', 'Praça C, 789', '3456-7890', '2010-09-20');

SELECT * FROM ESCOLA


CREATE TABLE tipo_funcionario(
tipo_id INTEGER  PRIMARY KEY NOT NULL,
descricao VARCHAR(200),
nivel INTEGER,
responsabilidade VARCHAR(200),
salario_base NUMERIC(7,2)
)

INSERT INTO tipo_funcionario(tipo_id,descricao,nivel,responsabilidade,salario_base) VALUES
(1,'Professor', 2, 'Ensinar', 3000.00),
(2,'Secretária', 1, 'Administrar documentação', 2500.00),
(3,'Serviços Gerais', 1, 'Manutenção e limpeza', 2000.00),
(4,'Diretor', 3, 'Gerenciar escola', 4000.00),
(5,'Bibliotecário', 2, 'Gerenciar biblioteca', 2800.00)

select * from tipo_funcionario
 
CREATE TABLE funcionario(
funcionario_id INTEGER  PRIMARY KEY NOT NULL,
nome VARCHAR(200),
data_nascimento DATE,
tipo_id INTEGER,
escola_id INTEGER,
CONSTRAINT  FK_tipo_id FOREIGN key (tipo_id) REFERENCES tipo_funcionario(tipo_id),
CONSTRAINT FK_escola_id FOREIGN KEY (escola_id) REFERENCES escola(escola_id)
)  

INSERT into funcionario(funcionario_id,nome,data_nascimento,tipo_id,escola_id)  VALUES
(1,'Ana Costa', '1985-03-12', 4, 1),
(2,'Bruno Lima', '1990-04-20', 1, 1),
(3,'Carla Silva', '1988-07-15', 2, 1),
(4,'David Santos', '1975-12-25', 3, 1),
(5,'Eva Oliveira', '1982-05-10', 1, 2),
(6,'Fernando Sousa', '1980-11-30', 5, 2),
(7,'Gabriela Costa', '1993-06-22', 3, 2),
(8,'Hugo Almeida', '1987-09-08', 2, 2),
(9,'Isabela Martins', '1981-02-18', 1, 3),
(10,'João Pereira', '1992-03-25', 3, 3),
(11,'Karen Almeida', '1989-08-05', 2, 3),
(12,'Lucas Rodrigues', '1979-10-12', 5, 3),
(13,'Maria Fernandes', '1984-07-07', 1, 2),
(14,'Nina Gomes', '1991-12-01', 3, 2),
(15,'Otávio Pereira', '1990-04-25', 4, 3)

select * from funcionario

CREATE TABLE turma(
turma_id INTEGER  PRIMARY KEY NOT NULL,
nome VARCHAR(250),
ano VARCHAR(100),
nivel VARCHAR(200),
escola_id INTEGER,
FOREIGN KEY (escola_id) REFERENCES escola(escola_id)
)
 
INSERT INTO turma(turma_id,nome,ano,nivel,escola_id) VAlues
(1,'Turma 1A', 2024, '1º ano', 1),
(2,'Turma 2A', 2024, '2º ano', 1),
(3,'Turma 3A', 2024, '3º ano', 2),
(4,'Turma 4A', 2024, '4º ano', 2),
(5,'Turma 5A', 2024, '5º ano', 3),
(6,'Turma 6A', 2024, '6º ano', 3),
(7,'Turma 7A', 2024, '7º ano', 1)

select * from turma

CREATE TABLE aluno(
aluno_id INTEGER  PRIMARY KEY NOT NULL,
nome VARCHAR(200),
data_nascimento DATE,
turma_id INTEGER,
escola_id INTEGER,
CONSTRAINT FK_TURMA FOREIGN KEY (turma_id) REFERENCES turma(turma_id),
CONSTRAINT FK_ESCOLA FOREIGN KEY (escola_id)  REFERENCES  escola(escola_id)
)

INSERT INTO aluno (aluno_id,nome,data_nascimento,turma_id,escola_id) VALUES
(1,'Alice Silva', '2012-01-15', 1, 1),
(2,'Bruno Costa', '2011-02-20', 1, 1),
(3,'Carla Lima', '2010-03-25', 2, 1),
(4,'Daniela Oliveira', '2011-04-30', 2, 1),
(5,'Eduardo Santos', '2012-05-15', 3, 1),
(6,'Fernanda Almeida', '2010-06-20', 3, 1),
(7,'Gabriel Pereira', '2011-07-25', 4, 1),
(8,'Heloísa Martins', '2012-08-10', 4, 2),
(9,'Igor Souza', '2011-09-15', 5, 2),
(10,'Júlia Gomes', '2010-10-20', 6, 2),
(11,'Kaique Costa', '2012-11-25', 6, 2),
(12,'Larissa Oliveira', '2011-12-30', 7, 2),
(13,'Mariana Fernandes', '2010-01-10', 5, 3),
(14,'Nicolas Santos', '2011-02-15', 5, 3),
(15,'Olivia Costa', '2012-03-20', 6, 3),
(16,'Pedro Almeida', '2010-04-25', 6, 3),
(17,'Quésia Lima', '2011-05-30', 7, 3),
(18,'Rafael Pereira', '2012-06-15', 7, 3),
(19,'Sofia Silva', '2010-07-20', 7, 3),
(20,'Tiago Souza', '2012-08-25', 7, 3)

CREATE TABLE disciplina (
    disciplina_id SERIAL PRIMARY KEY,   -- Identificador único da disciplina
    nome VARCHAR(100) NOT NULL,         -- Nome da disciplina (ex: Matemática)
    carga_horaria INTEGER NOT NULL      -- Carga horária da disciplina em horas
);

create table frequencia_alunos(
  frequencia_id Serial primary Key not NULL,
  dia_aula DATE,
  turma_id INTEGER,
  id_disciplina INTEGER
)


insert into frequencia_alunos (dia_aula, turma_id, id_disciplina) VALUES
('11/09/2024', 1, 1),
('11/14/2024', 1, 2),
('11/19/2024', 6, 4),
('11/21/2024', 3, 6),
('12/04/2024', 5, 3)

CREATE TABLE horario_aula (
    horario_id SERIAL PRIMARY KEY,      -- Identificador único do horário
    turma_id INTEGER NOT NULL,          -- Referência à turma
    disciplina_id INTEGER NOT NULL,     -- Referência à disciplina
    dia_semana VARCHAR(10) NOT NULL,    -- Dia da semana (ex: "Segunda-feira")
    horario_inicio TIME NOT NULL,       -- Hora de início da aula
    horario_fim TIME NOT NULL,          -- Hora de término da aula
    CONSTRAINT FK_turma_id FOREIGN KEY (turma_id) REFERENCES turma(turma_id),
    CONSTRAINT FK_disciplina_id FOREIGN KEY (disciplina_id) REFERENCES disciplina(disciplina_id)
);

select * from escola

update escola set endereco = 'Rua laranjeira 525' where escola_id = 1

alter table escola rename telefone to contato_telefone
alter table escola rename to unidade_escolar
alter table unidade_escolar rename to escola
alter table turma alter column ano type INTEGER using ano :: INTEGER
alter table turma alter column ano type VARCHAR(50)
alter table aluno add COLUMN email varchar(200)

create or replace procedure inserir_funcionario( nome VARCHAR,
data_nascimento DATE, funcao VARCHAR, escola VARCHAR)
language plpgsql as $$
DECLARE
	escola_id INTEGER;
    funcao_id integer;
    funcionario_id INTEGER;
BEGIN
select e.escola_id into escola_id FROM escola e where e.nome = escola;
select tf.tipo_id into funcao_id FROM tipo_funcionario tf 
where tf.descricao = funcao_id;
select f.funcionario_id into funcionario_id from funcionario f 
order by f.funcionario_id desc limit 1;
funcionario_id = funcionario_id + 1;
INSERT into funcionario (funcionario_id, nome, data_nascimento, tipo_id, escola_id)
values(funcionario_id,nome, data_nascimento,funcao_id, escola_id);
END;
$$;

select max(f.funcionario_id)from funcionario f

call inserir_funcionario('Carlo josé',
'12/07/1985', 'Serviços Gerais', 'Escola XYZ')
select * from escola

create or replace function listar_alunos()
RETURNS TEXT[] as $$
DECLARE
    func_cursor CURSOR FOR
    SELECT al.nome FROM aluno al WHERE al.turma_id = 2;
    alunos TEXT[];
    indice integer := 1;
BEGIN
    FOR al IN func_cursor LOOP
         alunos[indice] := al.nome;
         indice  = indice + 1;
         
    END LOOP;
    return  := alunos;
    
END
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION lista_alunos()
RETURNS TEXT[] AS $$
DECLARE
    func_cursor CURSOR FOR
        select a.nome from aluno a where a.turma_id =2;
    nome_aluno TEXT[];
    indice integer :=1;
BEGIN
     for al in func_cursor loop
       nome_aluno[indice] := al.nome;
       indice := indice + 1;
     end loop;
     RETURN nome_aluno;
END
$$ LANGUAGE plpgsql;

--select a.nome from aluno a where a.turma_id =2;

select unnest(lista_alunos())