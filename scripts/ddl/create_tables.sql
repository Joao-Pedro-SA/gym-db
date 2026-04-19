create schema GYMDB;
use GYMDB;

CREATE TABLE tb_estado_civil (
    id_estado_civil INT PRIMARY KEY AUTO_INCREMENT,
    descricao VARCHAR(20) NOT NULL
);


CREATE TABLE tb_treino (
    id_treino INT PRIMARY KEY AUTO_INCREMENT,
    modalidade VARCHAR(50) NOT NULL
);

CREATE TABLE tb_aluno (
    id_aluno VARCHAR(14) PRIMARY KEY, -- CPF
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE NOT NULL,
    id_estado_civil INT NOT NULL,
    id_treino INT NOT NULL,

    FOREIGN KEY (id_estado_civil) REFERENCES tb_estado_civil(id_estado_civil),
    FOREIGN KEY (id_treino) REFERENCES tb_treino(id_treino)
);


CREATE TABLE professor (
    id_professor INT PRIMARY KEY, -- Matrícula
    nome VARCHAR(100) NOT NULL,
    id_treino INT NOT NULL,

    FOREIGN KEY (id_treino) REFERENCES tb_treino(id_treino)
);


CREATE TABLE aluno_professor (
    id_aluno VARCHAR(14),
    id_professor INT,

    PRIMARY KEY (id_aluno, id_professor),

    FOREIGN KEY (id_aluno) REFERENCES tb_aluno(id_aluno),
    FOREIGN KEY (id_professor) REFERENCES professor(id_professor)
);
