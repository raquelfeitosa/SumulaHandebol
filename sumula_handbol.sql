create database sumula_handbol;
use sumula_handbol;
CREATE TABLE Súmula_Handebol (
  idSúmula_Handebol INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Competição VARCHAR(40) NOT NULL,
  Jogo_Nº INT NOT NULL,
  Sexo VARCHAR(20) NOT NULL,
  Categoria VARCHAR(20) NOT NULL,
  Nome_B_2 VARCHAR(50) NOT NULL,
  Nome_A VARCHAR(50) NOT NULL,
  Nome_B VARCHAR(50) NOT NULL,
  PRIMARY KEY(idSúmula_Handebol)
);

CREATE TABLE Time_A (
  id INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Súmula_Handebol_idSúmula_Handebol INTEGER UNSIGNED NOT NULL,
  Jogador_Nome VARCHAR(255) NOT NULL,
  Jogador_Goleiro VARCHAR(255) NOT NULL,
  Tecnico VARCHAR(255) NOT NULL,
  DIretor VARCHAR(255) NOT NULL,
  Medico VARCHAR(255) NOT NULL,
  Camisa_Nº INT NOT NULL,
  Gols_1°Tempo INT NOT NULL,
  Gols_2°Tempo INT NOT NULL,
  Total INT NOT NULL,
  Advert CHAR(1) NOT NULL,
  Exclusão_1ºTempo  INT NOT NULL,
  Exclusão_2°Tempo  INT NOT NULL,
  Exclusão_3°Tempo INT NOT NULL,
  Desclassificados INT NOT NULL,
  Capitão VARCHAR(50) NOT NULL,
  PRIMARY KEY(id),
  INDEX Time_A_FKIndex1(Súmula_Handebol_idSúmula_Handebol),
  FOREIGN KEY(Súmula_Handebol_idSúmula_Handebol)
    REFERENCES Súmula_Handebol(idSúmula_Handebol)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);

CREATE TABLE Time_B (
  ID INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Súmula_Handebol_idSúmula_Handebol INTEGER UNSIGNED NOT NULL,
  Jogador_Nome VARCHAR(255) NOT NULL,
  Jogador_Goleiro VARCHAR(255) NOT NULL,
  Tecnico VARCHAR(255) NOT NULL,
  Diretor VARCHAR(255) NOT NULL,
  Medico VARCHAR(255) NOT NULL,
  Camisa INT NOT NULL,
  1ºtempo_gols INT NOT NULL,
  2°tempo_gols INT NOT NULL,
  Total INT NOT NULL,
  Advert INT NOT NULL,
  Exclusão_1°tempo INT NOT NULL,
  Exclusão_2°tempo INT NOT NULL,
  exclusão_3°tempo  INT NOT NULL,
  desclassificados INT NOT NULL,
  Capitão VARCHAR(50) NOT NULL,
  PRIMARY KEY(ID),
  INDEX Time_B_FKIndex1(Súmula_Handebol_idSúmula_Handebol),
  FOREIGN KEY(Súmula_Handebol_idSúmula_Handebol)
    REFERENCES Súmula_Handebol(idSúmula_Handebol)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);

CREATE TABLE resultados (
  idresultados INTEGER UNSIGNED NOT NULL,
  Súmula_Handebol_idSúmulo_Handebol INTEGER UNSIGNED NOT NULL,
  1°tempo VARCHAR(1) NOT NULL,
  2°tempo CHAR(1) NOT NULL,
  1°prorrogação CHAR(1) NOT NULL,
  2°prorrogação CHAR(1) NOT NULL,
  final VARCHAR(50) NOT NULL,
  vencedor VARCHAR(50) NOT NULL,
  PRIMARY KEY(idresultados)
);

CREATE TABLE funções (
  idfunções INTEGER UNSIGNED NOT NULL AUTO_INCREMENT,
  Time_B_ID INTEGER UNSIGNED NOT NULL,
  Time_A_id INTEGER UNSIGNED NOT NULL,
  arbitro VARCHAR(50) NOT NULL,
  arbitro2 VARCHAR(50) NOT NULL,
  representante VARCHAR(50) NOT NULL,
  cronometrista VARCHAR(50) NOT NULL,
  delegado VARCHAR(50) NOT NULL,
  PRIMARY KEY(idfunções),
  INDEX funções_FKIndex1(Time_A_id),
  INDEX funções_FKIndex2(Time_B_ID),
  FOREIGN KEY(Time_A_id)
    REFERENCES Time_A(id)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION,
  FOREIGN KEY(Time_B_ID)
    REFERENCES Time_B(ID)
      ON DELETE NO ACTION
      ON UPDATE NO ACTION
);


