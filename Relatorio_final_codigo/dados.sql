/*Populando a tabela liga */
INSERT INTO liga VALUES ('Ufscar', 'Kanto');
INSERT INTO liga VALUES ('Liga de banco de dados', 'Kalos');
INSERT INTO liga VALUES ('Liga do Avast', 'Kanto');
INSERT INTO liga VALUES ('Gran Tour Pokemon', 'Sinnoh');
INSERT INTO liga VALUES ('Liga das ligas', 'Sinnoh');
INSERT INTO liga VALUES ('Representantes de Bidoof', 'Alola');
INSERT INTO liga VALUES ('Adeptos de Arceus', 'Sinnoh');


/*Populando a tabela professor */
INSERT INTO professor VALUES ('Sahudi', 'Liga de banco de dados');
INSERT INTO professor VALUES ('Thiago', 'Liga do Avast');
INSERT INTO professor VALUES ('Mario', 'Representantes de Bidoof');
INSERT INTO professor VALUES ('Candida', 'Ufscar');
INSERT INTO professor VALUES ('Gustavo', 'Ufscar');
INSERT INTO professor VALUES ('Zaina', 'Gran Tour Pokemon');


/*Populando a tabela treinador */
INSERT INTO treinador VALUES ('Vanderlei', 4, 5, 'Sahudi');
INSERT INTO treinador VALUES ('Ariel', NULL, 2, 'Thiago');
INSERT INTO treinador VALUES ('Danilo', 2, 1, 'Gustavo');
INSERT INTO treinador VALUES ('Gabriel',6 , 1, 'Sahudi');
INSERT INTO treinador VALUES ('Erik', 4, 4, 'Candida');
INSERT INTO treinador VALUES ('Nicolas', 1, 3, 'Zaina');

/*Populando a tabela torneio */
INSERT INTO torneio VALUES ('Interbixos', 'Ufscar');
INSERT INTO torneio VALUES ('Ufscar Vs Unicamp', 'Gran Tour Pokemon');
INSERT INTO torneio VALUES ('BCC Vs Produção', 'Representantes de Bidoof');
INSERT INTO torneio VALUES ('Banco de dados fight', 'Liga de banco de dados');

/*Populando a tabela Ginasio */

INSERT INTO ginasio VALUES (546, 47946367, 'Representantes de Bidoof', 'Nicolas');
INSERT INTO ginasio VALUES (456, 12345678, 'Gran Tour Pokemon', 'Gabriel');
INSERT INTO ginasio VALUES (236, 76479568, 'Liga do Avast', 'Erik');


/*Populando a tabela participa_ginasio */

INSERT INTO participa_ginasio VALUES (67, True, 'Vanderlei', '546');
INSERT INTO participa_ginasio VALUES (56, False, 'Ariel', '546');
INSERT INTO participa_ginasio VALUES (45, False, 'Vanderlei', '456');
INSERT INTO participa_ginasio VALUES (98, True, 'Danilo', '546');
INSERT INTO participa_ginasio VALUES (87, True, 'Vanderlei', '236');
INSERT INTO participa_ginasio VALUES (98, True, 'Danilo', '236');
INSERT INTO participa_ginasio VALUES (11, True, 'Ariel', '236');
INSERT INTO participa_ginasio VALUES (14, False, 'Danilo', '236');
INSERT INTO participa_ginasio VALUES (55, False, 'Ariel', '456');
INSERT INTO participa_ginasio VALUES (76, False, 'Danilo', '546');
INSERT INTO participa_ginasio VALUES (23, False, 'Danilo', '236');
INSERT INTO participa_ginasio VALUES (84, False, 'Danilo', '456');

/*Populando a tabela participa_torneio */

INSERT INTO participa_torneio VALUES (988, 'Campeão', 'Danilo', 'Interbixos');
INSERT INTO participa_torneio VALUES (657, 'Desqualificado', 'Vanderlei', 'Ufscar Vs Unicamp');
INSERT INTO participa_torneio VALUES (989, 'Segundo lugar', 'Ariel', 'Interbixos');


/*Populando a tabela Pokemon */

INSERT INTO pokemon VALUES (0111, 'Pikachu', 5, 'Masculino', 'Eletrico', 'Agua', 'Terrestre', 'Tackle', 'ataque rapido', NULL, NULL, 'Vanderlei');
INSERT INTO pokemon VALUES (0222, 'Ditto', 8, NULL, 'Normal', 'Normal', 'Lutador', 'Tackle', NULL, NULL, NULL, 'Ariel');
INSERT INTO pokemon VALUES (0333, 'Bulbassauro', 11, 'Feminino', 'Planta', 'Agua', 'Inseto', 'Tackle', 'Razor Leaf', 'ataque rapido', NULL, NULL);
INSERT INTO pokemon VALUES (0444, 'Caterpie', 13, 'Masculino', 'Inseto', 'Planta', 'Pedra', 'Tackle', 'Pin Missile', NULL, NULL, 'Danilo');
INSERT INTO pokemon VALUES (0555, 'Pikachu', 3, 'Masculino', 'Eletrico', 'Agua', 'Terrestre', 'Tackle', 'Shock Wave', NULL, NULL, 'Danilo');
INSERT INTO pokemon VALUES (0666, 'Gengar', 60, 'Feminino', 'Fantasma', 'Psiquico', 'Normal', 'Tackle', 'Shadow ball', 'Cursed', 'nightmare', 'Erik');
INSERT INTO pokemon VALUES (0777, 'Pikachu', 70, 'Masculino', 'Eletrico', 'Agua', 'Terrestre', 'Tackle', 'Shock Wave', 'ataque rapido', 'Thunder', 'Gabriel');
INSERT INTO pokemon VALUES (0888, 'Gengar', 50, 'Masculino', 'Fantasma', 'Psiquico', 'Normal', 'Tackle', 'Ataque Rapido', 'Cursed', 'Shadow Ball', 'Nicolas');
INSERT INTO pokemon VALUES (0999, 'Abra', 4, 'Feminino', 'Psiquico', 'Lutador', 'Fantasma', 'Tackle', 'Agility', NULL, NULL, NULL);
INSERT INTO pokemon VALUES (1000, 'Seal', 8, 'Feminino', 'Agua', 'Fogo', 'Eletrico', 'Tackle', 'Bubble', NULL, NULL, NULL);
INSERT INTO pokemon VALUES (1111, 'Pichu', 1, 'Masculino', 'Eletrico', 'Agua', 'Terrestre', NULL, NULL, NULL, NULL, 'Vanderlei');
INSERT INTO pokemon VALUES (1222, 'Pikachu', 55, 'Masculino', 'Eletrico', 'Agua', 'Terrestre', 'Tackle', 'Thunder Wave', 'Thunder', 'Charge', 'Ariel');
INSERT INTO pokemon VALUES (1333, 'Mew', 80, 'Masculino', 'Psiquico', 'Lutador', 'Fantasma', 'Tackle', 'Hypnosis', 'Psybeam', 'Psychic', 'Ariel');
INSERT INTO pokemon VALUES (1444, 'Bidoof', 100, 'Masculino', 'Normal', 'Normal', 'Lutador', 'Tackle', 'Cut', 'Ataque Rapido', 'Growl', 'Gabriel');
INSERT INTO pokemon VALUES (1555, 'Arceus', 89, NULL, 'Normal', 'Normal', 'Lutador', 'Tackle', 'Thunder', 'Shadow Ball', 'Psybeam', 'Vanderlei');
INSERT INTO pokemon VALUES (0245, 'Chinchar', 8, 'Feminino', 'Fogo', 'Grama', 'Agua', 'Tackle', 'Ember', NULL, NULL, 'Ariel');



/*Populando a tabela Especialidade */

INSERT INTO Especialista VALUES (12345, 'Pokemon', 'Sahudi', 1111);
INSERT INTO Especialista VALUES (54321, 'Tipo', 'Mario', 1333);
INSERT INTO Especialista VALUES (13579, 'Tipo', 'Candida', 1555);
INSERT INTO Especialista VALUES (24680, 'Habilidades', 'Gustavo', 1000);
INSERT INTO Especialista VALUES (12543, 'Pokemon', 'Zaina', 0666);
INSERT INTO Especialista VALUES (76234, 'Tipo', 'Thiago', 0111);

/*Populando a tabela Especialidade */

INSERT INTO relação_ecologica VALUES (1234567, 'Harmônica', 0666, 0111);
INSERT INTO relação_ecologica VALUES (6543210, 'Competição', 0333, 0444);
INSERT INTO relação_ecologica VALUES (1357906, 'Mutualismo', 1111, 1222);
INSERT INTO relação_ecologica VALUES (2468004, 'Amensalismo', 0666, 0222);
INSERT INTO relação_ecologica VALUES (1298457, 'Competição', 0666, 0999);
