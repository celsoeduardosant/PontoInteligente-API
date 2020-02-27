CREATE TABLE "empresa" (
  "id" bigint NOT NULL,
  "cnpj" varchar(255) NOT NULL,
  "data_atualizacao" date NOT NULL,
  "data_criacao" date NOT NULL,
  "razao_social" varchar(255) NOT NULL,
  PRIMARY KEY ("id")
);

CREATE TABLE "funcionario" (
  "id" bigint NOT NULL,
  "cpf" varchar(255) NOT NULL,
  "data_atualizacao" date NOT NULL,
  "data_criacao date" date NOT NULL,
  "email" varchar(255) NOT NULL,
  "nome" varchar(255) NOT NULL,
  "perfil" varchar(255) NOT NULL,
  "qtd_horas_almoco" float DEFAULT NULL,
  "qtd_horas_trabalho_dia" float DEFAULT NULL,
  "senha" varchar(255) NOT NULL,
  "valor_hora" decimal(19,2) DEFAULT NULL,
  PRIMARY KEY ("id"),
  "empresa_id" bigint DEFAULT NULL
);

CREATE TABLE "lancamento" (
  "id" bigint NOT NULL,
  "data" date NOT NULL,
  "data_atualizacao" date NOT NULL,
  "data_criacao" date NOT NULL,
  "descricao" varchar(255) DEFAULT NULL,
  "localizacao" varchar(255) DEFAULT NULL,
  "tipo" varchar(255) NOT NULL,
  PRIMARY KEY ("id"),
  "funcionario_id" bigint DEFAULT NULL
);

ALTER TABLE funcionario ADD CONSTRAINT func_emp_fk 	FOREIGN KEY(empresa_id) 	REFERENCES empresa(id);

ALTER TABLE lancamento	ADD CONSTRAINT lanc_func_fk FOREIGN KEY(funcionario_id) REFERENCES funcionario(id);