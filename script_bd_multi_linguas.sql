CREATE TABLE usuario (
  id_usuario SERIAL PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL ,
  senha_hash VARCHAR(255) NOT NULL,
  data_nascimento DATE NOT NULL,
  faixa_etaria VARCHAR(255) NOT NULL,
  tipo_perfil  VARCHAR(255) NOT NULL,
  id_turma INT,
  data_cadastro TIMESTAMP

);

SELECT * FROM usuario;

INSERT INTO usuario (nome, email, senha_hash, data_nascimento, faixa_etaria, tipo_perfil, id_turma, data_cadastro) values ('ja', 'j@gmail.com', '12', '2011/05/14', '15', 'es', '01', '2026/01/01');


CREATE TABLE perfil_estudante (
  id_perfil SERIAL PRIMARY KEY,
  id_usuario INT NOT NULL,
  idioma_nativo VARCHAR (10) NOT NULL,
  idioma_estudo VARCHAR (10) NOT NULL,
  estilo_vocabulario varchar (255),
  modulos_concluidos_acumulados INT,
  nivel_fluencia_atual VARCHAR (20)
);

SELECT * FROM perfil_estudante;

INSERT INTO perfil_estudante (id_usuario, idioma_nativo, idioma_estudo) values ('2', 'formal', 'academico') ;

TRUNCATE TABLE perfil_estudante;



CREATE TABLE recomendacao_vocabulario(
  id_recomendacao SERIAL PRIMARY KEY,
  id_usuario int NOT NULL,
  palavra_expressao varchar(100) NOT NULL,
  traducao varchar(100) NOT NULL,
  frequencia_uso int,
  sugeriada_por_nlp boolean,
  data_ultima_ocorrencia timestamp

);
SELECT * FROM recomendacao_vocabulario;
INSERT INTO recomendacao_vocabulario(id_usuario, palavra_expressao, traducao) values ('2','TEXTO','MAIS TEXTO');

CREATE TABLE reporte_falha_traducao (
  id_reporte SERIAL PRIMARY KEY,
  id_usuario         int  NOT NULL,
  texto_original     text NOT NULL,
  traducao_incorreta text NOT NULL,
  carrecao_sugerida  text,
  data_reporte       timestamp
);

SELECT * FROM reporte_falha_traducao;
INSERT INTO reporte_falha_traducao(id_usuario, texto_original, traducao_incorreta) VALUES ('2','textoo','mais textoo')

drop table turma

CREATE TABLE turma (
  id_turma SERIAL PRIMARY KEY,
  id_escola    int          NOT NULL,
  nome_turma   varchar(100) NOT NULL,
  ano_letivo   int          NOT NULL
);
SELECT * FROM turma;
INSERT INTO turma(id_escola, nome_turma, ano_letivo) VALUES ('3','escola','1839')

drop TABLE professor
drop TABLE pessoa
