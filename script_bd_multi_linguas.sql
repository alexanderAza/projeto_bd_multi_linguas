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
