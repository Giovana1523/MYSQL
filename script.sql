CREATE TABLE cliente(
	cpf varchar(11) AUTO_INCREMENT,
	nome varchar(30) NOT NULL,
	endereco varchar(50),
	PRIMARY KEY (cpf)
);

CREATE TABLE produto(
	codigo int(8) AUTO_INCREMENT,
	descricao varchar(50),
	preco float NOT NULL,
	unidade varchar(5),
	PRIMARY KEY(codigo)
);
CREATE TABLE compra(
	cpf_cliente varchar(11),
	codigo_produto int(8),
	quantidade float NOT NULL,
	FOREIGN KEY (cpf_cliente) REFERENCES cliente (cpf),
	FOREIGN KEY (codigo_produto) REFERENCES produto (codigo)
);
