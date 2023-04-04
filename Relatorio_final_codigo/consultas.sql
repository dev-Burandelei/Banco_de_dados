SELECT * FROM liga
SELECT * FROM ginasio 
SELECT * FROM Participa_ginasio

/*Consulta 1 - “Quais pokémon um treinador possui?” */

SELECT nome 
FROM pokemon
WHERE treinador LIKE 'Ariel'

/*Consulta 2 - “Quantas insígnias um treinador já possui?”*/

SELECT numero_insignias 
FROM treinador
WHERE nome LIKE 'Vanderlei'

/*Consulta 3 - “Se determinado treinador pode participar de um torneio” */

SELECT nome 
FROM treinador
WHERE numero_insignias >= 4

/*Consulta 4 - “Qual o pokémon de menor nível de um  determinado treinador?” */


SELECT id_code, nome, nivel
FROM pokemon
WHERE nivel IN (SELECT MIN(nivel)
			   FROM pokemon
			   WHERE treinador LIKE 'Ariel'
			   GROUP BY treinador)
			   

/*Consulta 5 - “Qual a média dos níveis dos pokémon de um determinado treinador?”*/

SELECT AVG(Nivel)
FROM pokemon
WHERE treinador LIKE 'Vanderlei'

/*Consulta 6 - “Quantas vantagens um pokémon tem?”*/

SELECT COUNT(Vantagem)
FROM pokemon
WHERE nome LIKE 'Mew'

/*Consultas 7- “Quantos ginásios têm em determinada região”*/

SELECT COUNT(id_ginasio)
FROM ginasio
INNER JOIN Liga
ON liga_responsavel LIKE nome
WHERE regiao LIKE 'Alola'
GROUP BY regiao

/*Consulta 8: “Qual relação ecológica uma espécie de pokémon tem com outros”*/

SELECT P1.nome, P2.nome, relacionamento
FROM relação_ecologica 
INNER JOIN pokemon P1
ON id_pokemon_1 = P1.id_code INNER JOIN pokemon P2 ON  id_pokemon_2 = P2.id_code
WHERE id_pokemon_1 = 666

/*Consulta 9 - “Quais e quantas vezes um treinador perdeu para um líderes de ginásio ?”*/

SELECT  treinador_lider, COUNT(vitoria) as derrotas
FROM Participa_ginasio NATURAL JOIN Ginasio
WHERE nome_treinador LIKE 'Danilo' AND vitoria = false 
GROUP BY treinador_lider, vitoria



