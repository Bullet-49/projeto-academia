CREATE DATABASE IF NOT EXISTS academia_db;
USE academia_db;

CREATE TABLE Aluno (
    id_aluno INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INT,
    contato VARCHAR(50),
    objetivo VARCHAR(150)
);

CREATE TABLE Professor (
    id_professor INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    especialidade VARCHAR(80),
    contato VARCHAR(50)
);

CREATE TABLE Plano (
    id_plano INT PRIMARY KEY,
    nome_plano VARCHAR(60) NOT NULL,
    valor DECIMAL(10,2) NOT NULL,
    duracao_meses INT
);

CREATE TABLE Pagamento (
    id_pagamento INT PRIMARY KEY,
    id_aluno INT NOT NULL,
    id_plano INT NOT NULL,
    data_pagamento DATE NOT NULL,
    valor_pago DECIMAL(10,2) NOT NULL,
    status VARCHAR(20),

    FOREIGN KEY (id_aluno) REFERENCES Aluno(id_aluno)
        ON DELETE CASCADE ON UPDATE CASCADE,

    FOREIGN KEY (id_plano) REFERENCES Plano(id_plano)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Treino_Individual (
    id_treino INT PRIMARY KEY,
    id_aluno INT NOT NULL,
    id_professor INT NOT NULL,
    data_criacao DATE,
    descricao TEXT,

    FOREIGN KEY (id_aluno) REFERENCES Aluno(id_aluno)
        ON DELETE CASCADE ON UPDATE CASCADE,

    FOREIGN KEY (id_professor) REFERENCES Professor(id_professor)
        ON DELETE SET NULL ON UPDATE CASCADE
);

CREATE TABLE Aula_Coletiva (
    id_aula INT PRIMARY KEY,
    id_professor INT NOT NULL,
    nome_aula VARCHAR(80) NOT NULL,
    horario TIME,
    dia_semana VARCHAR(20),

    FOREIGN KEY (id_professor) REFERENCES Professor(id_professor)
        ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE Presenca (
    id_aluno INT NOT NULL,
    id_aula INT NOT NULL,
    data_presenca DATE NOT NULL,
    hora_registro TIME,

    PRIMARY KEY (id_aluno, id_aula, data_presenca),

    FOREIGN KEY (id_aluno) REFERENCES Aluno(id_aluno)
        ON DELETE CASCADE ON UPDATE CASCADE,

    FOREIGN KEY (id_aula) REFERENCES Aula_Coletiva(id_aula)
        ON DELETE CASCADE ON UPDATE CASCADE
);
