CREATE TABLE pais (
    id_pais   NUMBER PRIMARY KEY,
    nome_pais VARCHAR2(30)
);

CREATE TABLE estado (
    id_estado   NUMBER PRIMARY KEY,
    nome_estado VARCHAR2(30),
    id_pais     NUMBER
);

ALTER TABLE estado ADD constraints pk_estado;

FOREIGN KEY ( ID_PAIS ) REFERENCES PAIS ( ID_PAIS );

CREATE TABLE cidade (
    id_cidade   NUMBER PRIMARY KEY,
    nome_cidade VARCHAR2(30),
    id_estado   NUMBER
);

CREATE TABLE CIDADE ADD CONSTRAINT PK_CIDADE FOREIGN KEY (ID_ESTADO) REFERENCES ESTADO (ID_ESTADO);

CREATE TABLE BAIRRO (
    id_BAIRRO NUMBER PRIMARY KEY,
    nome_BAIRRO VARCHAR2(30),
    id_CIDADE   NUMBER
);

CREATE TABLE bairro add constraint pk_bairro foreign key ( id_cidade ) references
cidade(id_cidade);

CREATE TABLE end_cliente (
    id_end      NUMBER PRIMARY KEY,
    logradouro  VARCHAR(50),
    numero      NUMBER,
    cep         NUMBER,
    id_tipo_log NUMBER,
    referencia  VARCHAR2(30),
    complemento VARCHAR2(30)
);

ALTER TABLE end_cliente ADD id_cliente NUMBER;

CREATE TABLE tipo_logradouro (
    id_tipo_log NUMBER PRIMARY KEY,
    descricao   VARCHAR2(30)
);

ALTER TABLE end_cliente
    ADD CONSTRAINT pk_tipo_log FOREIGN KEY ( id_tipo_log )
        REFERENCES tipo_logradouro ( id_tipo_log );

CREATE TABLE cliente (
    id_cliente  NUMBER PRIMARY KEY,
    nome        VARCHAR2(100),
    data_nasc   DATE,
    cpf_cnpj    NUMBER,
    id_tipo_cli NUMBER,
    id_genero   NUMBER,
    email       VARCHAR2(30),
    telefone    NUMBER
);

CREATE TABLE TIPO_CLIENTE (
ID_TIPO_CLI NUMBER PRIMARY KEY,
DESCRICAO VARCHAR2(30)
);

CREATE TABLE GENERO (
ID_GENERO NUMBER PRIMARY KEY,
DESCRICAO VARCHAR2(30)
);

ALTER TABLE CLIENTE
ADD CONTRAINT PK_GENERO FOREIGN KEY (ID_GENERO)
REFERENCES
genero(id_genero);

ALTER TABLE cliente
    ADD CONSTRAINT pk_tipo_cli FOREIGN KEY ( id_tipo_cli )
        REFERENCES tipo_cliente ( id_tipo_cli )
        
        
        