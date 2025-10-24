CREATE TABLE cliente ( 

id_cliente SERIAL PRIMARY KEY,

matricula_cliente VARCHAR(6) UNIQUE NOT NULL,

cpf VARCHAR(15) UNIQUE NOT NULL,

email VARCHAR(100) UNIQUE NOT NULL,

nome VARCHAR(150) NOT NULL,

sobrenome VARCHAR(100) NOT NULL,

telefone VARCHAR(20) 

); -- cria tabela diante de parâmetros

CREATE TABLE  tipo_atendimento (
id_tipo_atendimento SERIAL PRIMARY KEY,

descricao VARCHAR(500)
);

CREATE TABLE status_atendimento (
id_status SERIAL PRIMARY KEY,

descricao VARCHAR(500)
);

CREATE TABLE atendimento (

id_atendimento SERIAL PRIMARY KEY,

id_status VARCHAR(1),

id_tipo_atendimento VARCHAR(1),

id_cliente VARCHAR(1),

id_usuario VARCHAR(1),

data_hora TIMESTAMP DEFAULT NOW()
);

CREATE TABLE comentario (

id_comentario SERIAL PRIMARY KEY,

id_atendimento VARCHAR(1),

id_usuario VARCHAR(1),

mensagem VARCHAR(500)
);

CREATE TABLE usuario(

id_usuario SERIAL PRIMARY KEY,

id_perfil VARCHAR(1),

email VARCHAR (150) NOT NULL,

senha VARCHAR(9) UNIQUE NOT NULL,

matricula_usuario VARCHAR(9) UNIQUE NOT NULL,

status BOOLEAN DEFAULT TRUE,

nome VARCHAR(100),

sobrenome VARCHAR(100)

);

CREATE TABLE perfil_usuario (

id_perfil SERIAL PRIMARY KEY,

descricao VARCHAR(500));