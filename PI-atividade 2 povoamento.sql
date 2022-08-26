USE clinica_odontologica;

INSERT INTO paciente (nome, cpf, data_nascimento, telefone, endereco)
VALUES	('Anny Quintanilha', '47852698754', '1970-10-11', '+5555546523451', 'Rua Flores 10, apto 101'),
		('Allison Arquimedes', '254876935824', '1981-01-05', '+5511142790202', 'Rua Albieri 480'),
        ('Joaquim dos Santos', '25486357236', '1976-02-05', '+5555987422132', ' Rua Bozano 540'),
        ('Gerson Figueiredo', '24158963785', '1968-12-31', '+5553996987126', 'Rua Josefina 601'),
        ('Tiburço frederico', '56974436589', '1983-12-06', '+5545987963521', 'Rua Dom Pedro 402'),
        ('Maria José Ribeiro', '78954466355', '1952-05-30', '+5511998524966', 'Rua Andradas 112'),
        ('Bruna Mariano', '03541425245', '1995-05-20', '+5555984414547', 'Rua Andradas, 2200'),
        ('Fabiane Dias', '04454721332', '1988-09-23', '+5551986554789', 'Rua Tuiutí, 1450');
        
INSERT INTO prof_adm_tipo (prof_tipo, descricao)
VALUES	('secretaria','profissional responsável pela administração do consultório'),
		('tesouraria','profissional pelos lançamentos e fechamentos financeiros'),
        ('recepcionista','profissional responsável pelo atendimento de pacientes na recpção');
        
INSERT INTO prof_adm (nome, cpf, data_nascimento, telefone, fk_id_prof_adm_tipo)
VALUES 	('Juremir Machado', '55562542895', '1982-05-30', '+5555874125444', 3),
		('Fabiana Dantur', '66666666666', '1966-06-16', '+5551966666666', 3),
        ('Juliana Albiere', '41544787633', '1984-04-12', '+5555875486985', 1),
        ('João Felipe Souza', '23522654388', '1985-11-25', '+55559845725563', 2);
        
INSERT INTO atend_recepcao (data_hora_chegada, data_hora_encaminhado, observacao, fk_id_prof_adm, fk_id_paciente)
VALUES 	('2022-01-12 14:32:22', '2022-01-12 15:01:24', 'paciente relata que próxima consulta seja realizada no turno da manhã', 2, 1),
		('2022-01-12 15:00:35', '2022-01-12 15:52:20', NULL, 2, 2),
        ('2022-01-13 08:02:25', '2022-01-13 08:05:56', NULL, 1, 3),
        ('2022-01-13 08:05:22', '2022-01-13 08:57:11', NULL, 1, 4), 
        ('2022-01-13 08:45:01', '2022-01-13 09:35:25', 'paciente se queixa de dor onde houve troca de restauração', 1, 1),
        ('2022-01-13 09:22:01', '2022-01-13 10:40:29', NULL, 2, 5),
        ('2022-01-13 13:01:25', '2022-01-13 13:31:12', NULL, 3, 6),
        ('2022-01-13 14:02:44', '2022-01-13 14:54:22', NULL, 2, 7),
        ('2022-01-13 14:03:25', '2022-01-13 15:59:01', NULL, 3, 8),
        ('2022-01-14 08:03:15', '2022-01-14 08:09:55', NULL, 2, 1),
        ('2022-01-14 08:12:42', '2022-01-14 09:01:23', NULL, 1, 4);
        
INSERT INTO prof_odonto_tipo (prof_tipo, descricao)
VALUES 	('Cirugião-Dentista','Profissional com formação em nível superior em Odontologia'),
		('Auxiliar em Saúde Bucal','Profissional com formação para atuar como auxiliar na área da Odontologia'),
        ('Técnico em Saúde Bucal', 'Profissional com formação em nível Técnico para atuar como auxiliar na área da Odontologia');
        
INSERT INTO prof_odontologia (nome, cro, data_nascimento, cpf, telefone, fk_id_prof_odonto_tipo)
VALUES 	('Guilherme dos Santos', '21402RS','1983-02-12', '248175496385', '+5555874112245', 1),
		('João Luiz Medeiros', '21540RS', '1988-06-26', '32254682155', '+5555966635241', 1),
        ('Juliane Alves', '25331RS', '1992-05-30', '54469855722', '+5555988775421', 2),
        ('Maria de Fátima Moro', '28998RS', '1965-04-12', '45614277854', '+5555966842177', 3),
        ('Mauricio Hoffman', '29887RS', '1989-12-15', '44563385466', '+5555977445114', 2),
        ('Thiago Fonte', '24555RS', '1985-06-30', '41125532689', '+5555968345566', 3),
        ('Luane Brondani', '22306RS', '1989-04-25', '22255365498', '+5555966635241', 1),
        ('Luiz Ferdinan', '19587RS', '1975-10-25', '03345865236', '+5555988874122', 1),
        ('Daiane Fortrin', '20065RS', '1991-08-31', '01145421436', '+5555986872144', 1);
        
INSERT INTO especialidade (especialidade, descricao)
VALUES	('Ortodontia', 'Especialidade responsável pela área de ortodontia (aparelhos)'),
		('Endodontia', 'Especialidade responsável pelo tratamento de canal'),
        ('Odontogeriatria', 'Especialidade responsável pelo tratamento de pessoas idosas'),
        ('Periodontia', 'Especialidade responsável pelo tratamento dos tecidos do periodonto');
        
INSERT INTO prof_especialidade (fk_id_prof_odontologia, fk_id_especialidade)
VALUES 	(1, 4),
		(2, 2),
        (3, NULL),
        (4, NULL),
        (5, NULL),
        (6, NULL),
        (7, 3),
        (8, 1),
        (9, NULL);
        
INSERT INTO atend_consultorio (data_hora_inicio, data_hora_saida, observacao, fk_id_prof_odontologia, fk_id_atend_recepcao, fk1_id_prof_odontologia)
VALUES 	('2022-01-12 15:03:12', '2022-01-12 15:45:01', NULL, 2, 1, 3),
		('2022-01-12 15:59:20', '2022-01-12 17:03:25', NULL, 9, 2, 5), 
        ('2022-01-13 08:09:14', '2022-01-13 08:49:11', NULL, 1, 3, 6),
        ('2022-01-13 08:59:36', '2022-01-13 09:31:23', NULL, 7, 4, 2),
        ('2022-01-13 09:38:44', '2022-01-13 10:35:21', NULL, 8, 5, 4),
        ('2022-01-13 10:42:45', '2022-01-13 11:40:21', NULL, 2, 6, 5),
        ('2022-01-13 13:35:15', '2022-01-13 14:45:10', NULL, 1, 7, 3),
        ('2022-01-13 14:57:01', '2022-01-13 15:53:21', NULL, 2, 8, 6),
        ('2022-01-13 16:02:15', '2022-01-13 17:12:22', NULL, 7, 9, 2),
        ('2022-01-14 08:12:02', '2022-01-14 08:56:03', NULL, 8, 10, 5),
        ('2022-01-14 09:02:45', '2022-01-14 10:15:24', NULL, 9, 11, 3);
        
INSERT INTO atend_relatorio (data_hora, valor, procedimentos, fk_id_atend_consultorio)
VALUES	('2022-01-12 15:45:01', 1200.00,'Consulta de retorno.Elemento 16. Retirada de material obturador provisório, assepsia dos canais radiculares, obturação dos canais(4) e restauração provisória com cimento de ionômero de vidro',1),
		('2022-01-12 15:59:20', 450.00, 'Paciente reclama de dor no elemento 44. Radiografia periapical do elemento 44. Retirada restauração de resina composta, retirada de dentina infectada, forramento com hidroxo de cálcio + restauração provisória de cimento de ionômero de vidro',2),
        ('2022-01-13 08:09:14', 280.00, 'Consulta de retorno. Raspagem supragengival dos de todos os quadrantes + rap.auxiliar supra quadrante 3,', 3), 
        ('2022-01-13 08:59:36', 150.00, 'Paciente chegou reclamando de "ardencia na boca". Limpeza PT superior e inferior. Recomendações + receita: Nistatina 100.000 UI/mL, 1 frasco 50ml, 6/6h durante 2 dias', 4),
        ('2022-01-13 09:38:44', 600.00, 'Montagem do aparelho superior e inferior + recomendações', 5), 
        ('2022-01-13 10:42:45', 400.00, 'Paciente chegou reclamando de dores na região do dente 46.Radiografia periapical.Necropulpectomia. Abertura coronária, assepsia dos canais radiculares(2), debridamento do forame radicular.Medicamento intra-canal formocresol. Restauração provisória(interi).', 6),
        ('2022-01-13 13:35:15', 250.00, 'Primeira consulta. limpeza + RAPSUPRA 4 quadrantes + Orientações', 7),
        ('2022-01-13 14:57:01', 800.00, 'Consulta de retorno. Retirada da restauração provisória. Obturação dos canais + Restauração provisória com ionômero de vidro.', 8),
        ('2022-01-13 16:02:15', 150.00, 'Consulta de rotina. Limpeza + orientações', 9),
        ('2022-01-14 08:12:02', 200.00, 'Manutenção do aparelho ortodontico', 10),
        ('2022-01-14 09:02:45', 350.00, 'Paciente chegou encaminhado de um colega com radiografia. Retirada de tecido contaminado. Hidroxo de cálcio + Resina composta no elemento 36', 11);
        
        
        
        
        
        
        
        
        
        
        
        
