CREATE DATABASE MeuPrimeiroBanco;

create table Usuario(

  is_usuario INTEGER PRIMARY KEY not NULL,
  nome VARCHAR(200),
  idade INTEGER
  
)

CREATE TABLE Aluno(
  id_aluno INTEGER PRIMARY KEY not NULL,
  nome VARCHAR(150),
  cpf VARCHAR(14),
  idade INTEGER,
  ano INTEGER,
  periodo VARCHAR(150)
)