
Driver={PostgreSQL ANSI};Server=locahost;Port=5432;Database=Emprestimo;Uid=postgres;Pwd=postgres;

CREATE DATABASE "Emprestimo"
  WITH OWNER = postgres
       ENCODING = 'UTF8'
       TABLESPACE = pg_default
       LC_COLLATE = 'Portuguese_Brazil.1252'
       LC_CTYPE = 'Portuguese_Brazil.1252'
       CONNECTION LIMIT = -1;
PostgreSQL ANSI

CREATE TABLE CLIENTE (
	id          int4,
    Codigo      VARCHAR(5),
	nome        VARCHAR(100),
    documento   VARCHAR(20),
    CONSTRAINT pk_cliente PRIMARY KEY(id)
);


-- DROP TABLE cliente;

CREATE TABLE cliente
(
  id integer NOT NULL,
  Codigo      VARCHAR(5),
  nome character varying(100),
  documento character varying(20),
  CONSTRAINT pk_cliente PRIMARY KEY (id)
)
WITH (
  OIDS=FALSE
);

CREATE TABLE EMPRESTIMO (
	id                      int4,
	data_emprestimo         DATE,
    Moeda                   VARCHAR(3),
    valor_obtido            NUMERIC(12,2),
    Taxa                    NUMERIC(12,2),
    data_vencimento         DATE,
    CONSTRAINT pk_emprestimo PRIMARY KEY(id)
);

-- DROP TABLE emprestimo;

CREATE TABLE emprestimo
(
  id integer NOT NULL,
  data_emprestimo date,
  moeda character varying(3),
  valor_obtido numeric(12,2),
  taxa numeric(12,2),
  data_vencimento date,
  CONSTRAINT pk_emprestimo PRIMARY KEY (id)
)


