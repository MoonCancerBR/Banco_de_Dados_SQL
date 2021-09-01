CREATE TABLE USUARIO(
	Id Serial,
	Nome varchar(100),
	Senha varchar(8),
	Tipo varchar(1),
	Telefone varchar(11),
	Email varchar(50),
	CPF varchar(11)
);

CREATE TABLE CLIENTE(
	horas_Alugadas TIME NOT NULL,
	CONSTRAINT cliente_pkey PRIMARY KEY(Id)
)inherits(USUARIO);

CREATE TABLE FUNCIONARIO(
	expediente TIME NOT NULL,
	CONSTRAINT funcionario_pkey PRIMARY KEY(Id)
)inherits(USUARIO);

CREATE TABLE COMPUTADOR(
	Ip varchar(15),
	Status varchar(7),
	Periodo_Começo TIME NOT NULL,
	Periodo_Fim TIME NOT NULL,
	CONSTRAINT computador_pkey PRIMARY KEY(Ip)
);
CREATE TABLE ALUGA(
	Data date,
	Ip_Computador varchar(15),
	Id_cliente Integer,
	CONSTRAINT aluga_pkey PRIMARY KEY(Data),
	CONSTRAINT aluga_fkey1 FOREIGN KEY(Ip_Computador)
	REFERENCES computador(Ip),
	CONSTRAINT aluga_fkey2 FOREIGN KEY(Id_Cliente)
	REFERENCES Cliente(Id)
);

CREATE TABLE MONITORA(
	Expediente_Começo TIME NOT NULL,
	Expediente_Fim TIME NOT NULL,
	Id_Funcionario Integer,
	Ip_Computador varchar(15),
	CONSTRAINT monitora_pkey PRIMARY KEY(Id_Funcionario, Ip_Computador),
	CONSTRAINT monitora_fkey1 FOREIGN KEY(Id_Funcionario)
	REFERENCES funcionario(Id),
	CONSTRAINT monitora_fkey2 FOREIGN KEY(Ip_Computador)
	REFERENCES computador(Ip)
);