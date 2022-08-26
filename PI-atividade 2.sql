CREATE DATABASE clinica_odontologica;

USE clinica_odontologica;

CREATE TABLE paciente
(

id_paciente INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(100) NOT NULL,
cpf DECIMAL(14) NOT NULL,
data_nascimento DATE NOT NULL,
telefone VARCHAR(14),
endereco VARCHAR(100),
PRIMARY KEY(id_paciente)   
 
);

CREATE TABLE prof_adm_tipo
(

id_prof_adm_tipo INT NOT NULL AUTO_INCREMENT,
prof_tipo VARCHAR(25) NOT NULL,
descricao VARCHAR(100),
PRIMARY KEY (id_prof_adm_tipo)

);

CREATE TABLE prof_adm
(

id_prof_adm INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(60) NOT NULL,
cpf VARCHAR(14) NOT NULL,
data_nascimento DATE NOT NULL,
telefone VARCHAR(15) NOT NULL,
fk_id_prof_adm_tipo INT NOT NULL,
PRIMARY KEY (id_prof_adm),
FOREIGN KEY (fk_id_prof_adm_tipo) REFERENCES prof_adm_tipo(id_prof_adm_tipo)

);

CREATE TABLE atend_recepcao
(

id_atend_recepcao INT NOT NULL AUTO_INCREMENT,
data_hora_chegada DATETIME  NOT NULL,
data_hora_encaminhado DATETIME  NOT NULL,
observacao VARCHAR(300),
fk_id_prof_adm INT NOT NULL,
fk_id_paciente INT NOT NULL,
PRIMARY KEY (id_atend_recepcao),
FOREIGN KEY (fk_id_prof_adm) REFERENCES prof_adm(id_prof_adm),
FOREIGN KEY (fk_id_paciente) REFERENCES paciente(id_paciente)

);

CREATE TABLE especialidade
(

id_especialidade INT NOT NULL AUTO_INCREMENT,
especialidade VARCHAR(45) NOT NULL,
descricao VARCHAR(200),
PRIMARY KEY (id_especialidade)

);

CREATE TABLE prof_odonto_tipo
(

id_prof_odonto_tipo INT NOT NULL AUTO_INCREMENT,
prof_tipo VARCHAR(25) NOT NULL,
descricao VARCHAR(200),
PRIMARY KEY (id_prof_odonto_tipo)

);

CREATE TABLE prof_odontologia
(

id_prof_odontologia INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(200) NOT NULL,
cro VARCHAR(7) NOT NULL,
data_nascimento DATE NOT NULL,
cpf VARCHAR(14) NOT NULL,
telefone VARCHAR(15),
fk_id_prof_odonto_tipo INT NOT NULL,
PRIMARY KEY (id_prof_odontologia),
FOREIGN KEY (fk_id_prof_odonto_tipo) REFERENCES prof_odonto_tipo(id_prof_odonto_tipo)

);

CREATE TABLE prof_especialidade
(
fk_id_prof_odontologia INT NOT NULL,
fk_id_especialidade INT,
FOREIGN KEY (fk_id_prof_odontologia) REFERENCES prof_odontologia(id_prof_odontologia),
FOREIGN KEY (fk_id_especialidade) REFERENCES especialidade(id_especialidade)

);

CREATE TABLE atend_consultorio
(
id_atend_consultorio INT NOT NULL AUTO_INCREMENT,
data_hora_inicio DATETIME NOT NULL,
data_hora_saida DATETIME NOT NULL,
observacao VARCHAR(300),
fk_id_prof_odontologia INT NOT NULL,
fk_id_atend_recepcao INT NOT NULL,
fk1_id_prof_odontologia INT NOT NULL,
PRIMARY KEY (id_atend_consultorio),
FOREIGN KEY (fk_id_prof_odontologia) REFERENCES prof_odontologia(id_prof_odontologia),
FOREIGN KEY (fk_id_atend_recepcao) REFERENCES atend_recepcao(id_atend_recepcao),
FOREIGN KEY (fk1_id_prof_odontologia) REFERENCES prof_odontologia(id_prof_odontologia)

);

CREATE TABLE atend_relatorio
(

id_atend_relatorio INT NOT NULL AUTO_INCREMENT,
data_hora DATETIME  NOT NULL,
valor DECIMAL(9,2)  NOT NULL,
procedimentos VARCHAR(800)  NOT NULL,
fk_id_atend_consultorio INT NOT NULL,
PRIMARY KEY (id_atend_relatorio),
FOREIGN KEY (fk_id_atend_consultorio) REFERENCES atend_consultorio(id_atend_consultorio)

);
