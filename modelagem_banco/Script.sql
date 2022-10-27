CREATE TABLE CLIENTE (
	ID INT IDENTITY(1,1) NOT NULL,
	NOME VARCHAR(100) NOT NULL,
	TELEFONE VARCHAR(13) NOT NULL,
	EMAIL VARCHAR (100) NOT NULL,
	SENHA VARBINARY(8000) NOT NULL,
	CARTAOCREDITO VARCHAR (16) NOT NULL,
	CONSTRAINT PK_CLIENTE PRIMARY KEY(ID)
);

 select * from CLIENTE;

CREATE TABLE MENSALIDADE(
	ID INT IDENTITY(1,1) NOT NULL,
	VALOR FLOAT(50),
	RENOVACAOASSINATURA VARCHAR(50),
	IDCLIENTE INT,
	DATAPAGAMENTO DATETIME NOT NULL
	CONSTRAINT PK_MENSALIDADE PRIMARY KEY(ID)
 );

select * from MENSALIDADE;

ALTER TABLE MENSALIDADE 
	ADD CONSTRAINT fk_CLIENTE FOREIGN KEY (IDCLIENTE) REFERENCES CLIENTE (ID);

CREATE TABLE SERIES(
	ID INT IDENTITY(1,1) NOT NULL,	
	NOME VARCHAR(50) NOT NULL,
	TEMPORADA INT NOT NULL,
	DESCRICAO VARCHAR (500),
	ANO DATE NOT NULL,
	DURACAO TIME(5) NOT NULL,
	IDIOMA VARCHAR(100) NOT NULL,
	NUMEROEPS INT NOT NULL,
	LEGENDAS BIT NOT NULL,
	CONSTRAINT PK_SERIES PRIMARY KEY(ID)
);

- ALTER TABLE SERIES 
	-- ADD CONSTRAINT fk_GENEROS FOREIGN KEY (IDGENERO) REFERENCES GENEROS (IDGENERO);

	
--CREATE TABLE GENEROS(
	--ID INT IDENTITY(1,1) NOT NULL,
	--NOMEGENERO VARCHAR (100),
--);

CREATE TABLE VIDEOS(
	ID INT IDENTITY(1,1) NOT NULL,
	TITULO VARCHAR(100) NOT NULL,
	GENREO VARCHAR (50) NOT NULL,
	DURACAO TIME(5) NOT NULL,
	PRODUTORA VARCHAR(50) NOT NULL,
	SINOPSE VARCHAR (300) NOT NULL,
	DIRETOR VARCHAR (100) NOT NULL,	
CONSTRAINT PK_VIDEOS PRIMARY KEY(ID)
);

CREATE TABLE FILMES(
	ID INT IDENTITY(1,1) NOT NULL,
	NOME VARCHAR(200) NOT NULL,
	IDIOMA CHAR(255) NOT NULL,
	LEGENDA BIT NOT NULL,
	ANO DATE NOT NULL,
	CONSTRAINT PK_FILMES PRIMARY KEY(ID)
);

CREATE TABLE DOCUMENTARIOS(
	ID INT IDENTITY(1,1) NOT NULL,
	NOME VARCHAR(200) NOT NULL,
	IDIOMA CHAR(255) NOT NULL,
	LEGENDA BIT NOT NULL,
	ANO DATE NOT NULL,
	TEMPORADA INT,
	DURACAO TIME(5) NOT NULL,
	NUMEROEP INT
	CONSTRAINT PK_DOCUMENTARIOS PRIMARY KEY(ID)
);