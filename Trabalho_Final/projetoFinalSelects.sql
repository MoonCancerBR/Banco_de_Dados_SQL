---------------------------------SELECTS------------------------------------

-- Mostrar todos os clientes registrados
SELECT * FROM CLIENTE

-- Mostrar todos os computadores registrados
SELECT * FROM COMPUTADOR
-- Mostrar todos os funcionarios registrados
SELECT * FROM FUNCIONARIO
-- Mostrar os computadores que estão livres para uso.
SELECT * FROM COMPUTADOR WHERE status LIKE 'livre';

-- Mostrar os computadores que estão com defeito.
SELECT * FROM COMPUTADOR WHERE status LIKE 'defeito';

-- Mostrar o ip e o tempo final de um computador em uso.
SELECT Ip, periodo_começo, periodo_fim  FROM COMPUTADOR WHERE status LIKE 'em uso';

-- Mostrar o nome,id, Ip e tempo do computador e do cliente que está usando o computador. 
SELECT Nome, Ip, Id, Periodo_começo, Periodo_fim FROM ALUGA, COMPUTADOR, CLIENTE 
WHERE status LIKE 'em uso' AND Ip LIKE Ip_computador AND Id_Cliente = Id;

---------------------------------UPDATES----------------------------------
-- Mudar o computador para 'defeito'.
UPDATE COMPUTADOR SET status = 'defeito' WHERE ip = '156.465.654.653';

-- Mudar o computador para 'livre'.
UPDATE COMPUTADOR SET status = 'livre' WHERE ip = 'Insira o IP';

--Mudar o computador para 'em uso'.
UPDATE COMPUTADOR SET status = 'em uso' WHERE ip = '976.213.948.098';

-- Mudar o periodo de uso de um computador
UPDATE COMPUTADOR SET periodo_começo = '13:00:00', periodo_fim = '15:00:00' WHERE ip = '976.213.948.098'

------------------------------------------INSERTS ----------------------------------------

-- Adicionar um novo Cliente na tabela.
INSERT INTO CLIENTE(nome, tipo, telefone, email, cpf, horas_alugadas) VALUES
					('Luís', 1, '85924872653', 'luis.pereira@gmail.com', '12345678910', '02:00')
-- Registrar um novo aluguel
INSERT INTO ALUGA (ip_computador, id_cliente, data) VALUES
					('976.213.948.098', 17, '30-03-2021')
					
					
					
--------------------------------------ALUGUEL e REGISTRO--------------------------
-- Adicionar um novo Cliente na tabela.
INSERT INTO CLIENTE(nome, tipo, telefone, email, cpf, horas_alugadas) VALUES
					('Jorje', 1, '85945675134', 'jorje@gmail.com', '12458530801', '02:00')

-- Mostrar os computadores que estão livres para uso.
SELECT * FROM COMPUTADOR WHERE status LIKE 'livre';

-- Adicionar um novo aluguel
INSERT INTO ALUGA (ip_computador, id_cliente, data) VALUES
					('078.783.516.908', 18, '02-02-2021')

-- Mudar o periodo de uso de um computador			
UPDATE COMPUTADOR SET periodo_começo = '16:00:00', periodo_fim = '18:00:00' WHERE ip = '078.783.516.908'

--Mudar o computador para 'em uso'.
UPDATE COMPUTADOR SET status = 'em uso' WHERE ip = '078.783.516.908';

-- Mostrar o nome, id, Ip e tempo do computador e do cliente que está usando o computador. 
SELECT Nome, Ip, Id, Periodo_começo, Periodo_fim FROM ALUGA, COMPUTADOR, CLIENTE 
WHERE status LIKE 'em uso' AND Ip LIKE Ip_computador AND Id_Cliente = Id;
