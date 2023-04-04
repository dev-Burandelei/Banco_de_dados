SELECT * FROM Participa_ginasio
SELECT * FROM treinador
SELECT * FROM pokemon
SELECT * FROM torneio
SELECT * FROM professor
SELECT * FROM liga
SELECT * FROM torneio



--Trigger 1:

CREATE TRIGGER tr_insignia
AFTER INSERT OR UPDATE ON Participa_ginasio
FOR EACH ROW
EXECUTE PROCEDURE atualiza_insignias();

CREATE OR REPLACE FUNCTION atualiza_insignias() RETURNS TRIGGER
AS
$$
BEGIN
	
	IF NEW.vitoria = true THEN
		UPDATE treinador SET numero_insignias = numero_insignias + 1
		WHERE nome = new.nome_treinador;
	END IF;
	RETURN NEW;
END 
$$ LANGUAGE plpgsql;

--testes da trigger 1
INSERT INTO participa_ginasio VALUES (15, true, 'Erik', '456');
INSERT INTO participa_ginasio VALUES (16, true, 'Erik', '456');
UPDATE participa_ginasio SET vitoria = true WHERE num_desafio = 14; 

--Comando para deletar a trigger
DROP FUNCTION atualiza_insignias();
DROP TRIGGER tr_insignia ON participa_ginasio;

--Trigger 2:
CREATE TRIGGER tr_poke_treinador
AFTER INSERT OR UPDATE ON pokemon
FOR EACH ROW
EXECUTE PROCEDURE pokemon_treinador();

CREATE OR REPLACE FUNCTION pokemon_treinador() RETURNS TRIGGER
AS
$$
BEGIN
	
	IF new.treinador IS NULL THEN
		raise exception 'Pokemon selvagem'; -- Apenas testando o funcionamento das exceções, o contexto foi desconsiderado nesse caso 
	ELSE
		UPDATE treinador SET numero_pokemon = numero_pokemon + 1
		WHERE nome = new.treinador;
	END IF;
	RETURN NEW;
END 
$$ LANGUAGE plpgsql;

--testes da trigger 2
INSERT INTO pokemon VALUES (0134, 'Charizard', 70, 'Masculino', 'Fogo', 'Planta', 'Agua', 'Tackle', 'ataque rapido', 'Ember', 'Dragon rage', 'Vanderlei');
INSERT INTO pokemon VALUES (4676, 'Lucario', 20, 'Feminino', 'Lutador', 'Normal', 'Voador', 'Tackle', 'ataque rapido', NULL, NULL, 'Danilo');
UPDATE pokemon SET treinador = 'Ariel' WHERE id_code = 333; 
INSERT INTO pokemon VALUES (1653, 'Charizard', 67, 'Masculino', 'Fogo', 'Planta', 'Agua', 'Tackle', 'Fly', 'Ember', 'Dragon Dance', NULL);
/* Como usando o tratamento de exceção para Pokemon sem sem treinadores, essa trupla não 
será inserido na tabela, dessa forma, 
agora o banco de dados aceita tuplas de pokemon apenas com treinadores, 
filtrando assim os dados que são mais relevantes para as consultas que desejamos realizar*/

--Comando para deletar a trigger
DROP FUNCTION pokemon_treinador();
DROP TRIGGER tr_poke_treinador ON pokemon;

--VIEW

CREATE VIEW pokemon_treinador AS 
SELECT nome, treinador
FROM pokemon
ORDER BY treinador ASC

SELECT * FROM pokemon_treinador 


