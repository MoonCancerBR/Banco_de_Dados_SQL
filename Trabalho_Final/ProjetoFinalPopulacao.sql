-- SELECT * FROM CLIENTE
-- SELECT * FROM FUNCIONARIO
-- SELECT * FROM USUARIO
-- SELECT * FROM COMPUTADOR
-- SELECT * FROM ALUGA
-- SELECT * FROM MONITORA
INSERT INTO CLIENTE(nome, tipo, telefone, email, cpf, horas_alugadas)
			values ('Rodrigo Oliveira', '1', '85954875326', 'rod.oliveira@gmail.com', '07578532163', '02:00'),
					('Roberto Borges', '1', '85975498543', 'bebeto.borges@gmail.com', '42598753215', '03:00'),
					('Balman', '1', '85985748965', 'bal.man@gmail.com', '35487561875', '02:00'),
					('Brand', '1', '85945732587', 'mago.sup@gmail.com', '65485217020', '02:00'),
					('Ryze', '1', '85945687213', 'mago.jungler@gmail.com', '78631578953', '02:00'),
					( 'Ahri', '1', '85932578542', 'galinha.jungler@gmail.com', '25485498350', '02:00');
INSERT INTO FUNCIONARIO (nome, tipo, telefone, email, cpf, expediente) values
						('Pedro', '2', '85945687210', 'pedro@gmail.com', '45678200510', '08:00'),
						('Tiago', '2', '85948753218', 'tiago@gmail.com', '25488602760', '13:00'),
						('João', '2', '85945687210', 'joão@gmail.com', '45105805409', '18:00'),
						('Cledson', '2', '85945157520', 'darksorcerer@gmail.com', '45215085753', '23:00');
						
INSERT INTO COMPUTADOR(ip, status, periodo_começo, periodo_fim) values
						('456.231.124.116', 'em uso', '05:25', '07:25'),
						('156.465.654.653', 'livre', '00:00', '00:00'),
						('987.156.023.908', 'livre', '00:00', '00:00'),
						('908.456.053.420', 'em uso', '08:37', '10:37'),
						('980.064.687.566', 'defeito', '00:00', '00:00'),
						('159.614.321.387', 'defeito', '00:00', '00:00'),
						('078.783.516.908', 'livre', '00:00', '00:00'),
						('976.213.948.098', 'livre', '00:00', '00:00'),
						('780.540.354.566', 'em uso', '16:50', '19:50');
						
INSERT INTO ALUGA(data, ip_computador, id_cliente) values
				('22.03.2021','780.540.354.566', 2);
					 
