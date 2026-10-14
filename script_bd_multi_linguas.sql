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
