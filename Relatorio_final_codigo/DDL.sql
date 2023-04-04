CREATE TABLE Treinador(
nome				VARCHAR(100) PRIMARY KEY,
numero_insignias	INT DEFAULT 0,
numero_pokemon		INT DEFAULT 0,
orientador			VARCHAR(100),
	
FOREIGN KEY(orientador) REFERENCES Professor(nome) ON DELETE SET NULL);


CREATE TABLE Pokemon(
id_code				INT PRIMARY KEY,
nome				VARCHAR(100) NOT NULL,
nivel				INT DEFAULT 0,
genero				VARCHAR(20) CHECK (Genero IN ('Masculino', 'Feminino', NULL)),
tipo				VARCHAR(50) CHECK (Tipo IN ('Aço', 'Agua', 'Dragão', 'Eletrico', 'Fada', 'Fantasma', 'Fogo', 'Gelo', 'Inseto', 'Lutador', 'Normal', 'Pedra', 'Planta', 'Psiquico', 'Sombrio', 'Terrestre', 'Venenoso', 'Voador')) NOT NULL,
vantagem			VARCHAR(50) CHECK (Tipo IN ('Aço', 'Agua', 'Dragão', 'Eletrico', 'Fada', 'Fantasma', 'Fogo', 'Gelo', 'Inseto', 'Lutador', 'Normal', 'Pedra', 'Planta', 'Psiquico', 'Sombrio', 'Terrestre', 'Venenoso', 'Voador')) NOT NULL,
desvantagem 		VARCHAR(50) CHECK (Tipo IN ('Aço', 'Agua', 'Dragão', 'Eletrico', 'Fada', 'Fantasma', 'Fogo', 'Gelo', 'Inseto', 'Lutador', 'Normal', 'Pedra', 'Planta', 'Psiquico', 'Sombrio', 'Terrestre', 'Venenoso', 'Voador')) NOT NULL,
habilidade_1  		VARCHAR(50),
habilidade_2  		VARCHAR(50),
habilidade_3  		VARCHAR(50),
habilidade_4  		VARCHAR(50),
treinador			VARCHAR(100),
	
FOREIGN KEY(treinador) REFERENCES Treinador(nome) ON DELETE SET NULL
);

CREATE TABLE Liga(
nome				VARCHAR(100) PRIMARY KEY,
regiao				VARCHAR(100) CHECK(regiao IN ('Kanto', 'Johto', 'Hoenn', 'Sinnoh', 'Unova', 'Kalos', 'Alola', 'Galar', 'Paldea')) NOT NULL
);

CREATE TABLE Professor(
nome				VARCHAR(100) PRIMARY KEY,
liga_responsavel 	VARCHAR(100)  NOT NULL,

FOREIGN KEY(liga_responsavel) REFERENCES Liga(nome)
	ON UPDATE CASCADE
	ON DELETE CASCADE
);

CREATE TABLE Torneio(
nome 				VARCHAR(100) PRIMARY KEY,
liga_responsavel 	VARCHAR(100) NOT NULL,

FOREIGN KEY(liga_responsavel) REFERENCES Liga(nome)
	ON UPDATE CASCADE
	ON DELETE CASCADE
);

CREATE TABLE Ginasio(
id_ginasio			INT PRIMARY KEY,
insignia			INT UNIQUE NOT NULL,
liga_responsavel 	VARCHAR(100) NOT NULL,
treinador_lider		VARCHAR(100) NOT NULL,
	
FOREIGN KEY(liga_responsavel) REFERENCES Liga(nome)
	ON UPDATE CASCADE
	ON DELETE CASCADE,
FOREIGN KEY(treinador_lider) REFERENCES Treinador(nome)
	ON UPDATE CASCADE
	ON DELETE CASCADE

);

CREATE TABLE Participa_torneio(
num_inscricao		INT PRIMARY KEY,
classificacao		VARCHAR(50) DEFAULT 'Não classificado' CHECK (classificacao IN ('Campeão', 'Não classificado', 'Desqualificado', 'Segundo lugar', 'Terceiro lugar', 'Quarto lugar', 'Quinto Lugar', 'Sexto Lugar', 'Setimo Lugar', 'Oitava lugar')) NOT NULL,	
nome_participante 	VARCHAR(100) NOT NULL,
nome_torneio		VARCHAR(100) NOT NULL,
	
FOREIGN KEY(nome_torneio) REFERENCES Liga(nome)
	ON UPDATE CASCADE
	ON DELETE CASCADE,
FOREIGN KEY(nome_participante) REFERENCES Treinador(nome)
	ON UPDATE CASCADE
	ON DELETE CASCADE
);

CREATE TABLE Participa_ginasio(
num_desafio			INT PRIMARY KEY,
vitoria				BOOL NOT NULL,
nome_treinador		VARCHAR(100) NOT NULL,
id_ginasio			INT NOT NULL,

FOREIGN KEY(id_ginasio) REFERENCES Ginasio(id_ginasio)
	ON UPDATE CASCADE
	ON DELETE CASCADE,
FOREIGN KEY(nome_treinador) REFERENCES Treinador(nome)
	ON UPDATE CASCADE
	ON DELETE CASCADE
);

CREATE TABLE Especialista(
id_certficado		INT PRIMARY KEY,	
especializacao		VARCHAR(50)	CHECK( especializacao IN ('Pokemon', 'Tipo', 'Habilidades')) NOT NULL,	
nome_professor		VARCHAR(100) NOT NULL,
pokemon				INT NOT NULL,
	
FOREIGN KEY(nome_professor) REFERENCES Professor(nome)
	ON UPDATE CASCADE
	ON DELETE CASCADE,
FOREIGN KEY(pokemon) REFERENCES Pokemon(id_code)
	ON UPDATE CASCADE
	ON DELETE CASCADE

);

CREATE TABLE Relação_ecologica(
registro_relacionamento INT PRIMARY KEY,
relacionamento 			VARCHAR(50) DEFAULT 'Harmônica' CHECK(relacionamento IN ('Harmônica', 'Competição', 'Canibalismo', 'Mutualismo', 'Comensalismo', 'Amensalismo', 'Parasitismo', 'Predação')) NOT NULL,
id_pokemon_1			INT NOT NULL,
id_pokemon_2			INT NOT NULL,
FOREIGN KEY(id_pokemon_1) REFERENCES Pokemon(id_code)
	ON UPDATE CASCADE
	ON DELETE CASCADE,
FOREIGN KEY(id_pokemon_2) REFERENCES Pokemon(id_code)
	ON UPDATE CASCADE
	ON DELETE CASCADE
);


