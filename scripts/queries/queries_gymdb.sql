SELECT * FROM tb_treino;
INSERT INTO tb_treino (modalidade) VALUES ('Jiu-Jitsu');
SELECT * FROM tb_treino;

SELECT id_aluno, nome, id_treino FROM tb_aluno;
UPDATE tb_aluno
SET id_treino = 4
WHERE id_aluno IN ('12345678901', '34567890123', '56789012345');
SELECT id_aluno, nome, id_treino FROM tb_aluno;

CREATE TABLE tb_plano (
    id_plano INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50) NOT NULL,
    valor DECIMAL(10,2) NOT NULL
);

CREATE TABLE tb_mensalidade (
    id_mensalidade INT PRIMARY KEY AUTO_INCREMENT,
    id_aluno VARCHAR(14) NOT NULL,
    id_plano INT NOT NULL,
    data_pagamento DATE NOT NULL,

    FOREIGN KEY (id_aluno) REFERENCES tb_aluno(id_aluno),
    FOREIGN KEY (id_plano) REFERENCES tb_plano(id_plano)
);


SELECT * FROM tb_plano;
INSERT INTO tb_plano (nome, valor) VALUES
('Mensal Básico', 100.00),
('Mensal Premium', 150.00),
('Anual', 1000.00);


SELECT * FROM tb_mensalidade;

INSERT INTO tb_mensalidade (id_aluno, id_plano, data_pagamento) VALUES
('12345678901', 1, '2026-04-01'),
('23456789012', 2, '2026-04-02'),
('34567890123', 1, '2026-04-03'),
('45678901234', 3, '2026-04-04'),
('56789012345', 2, '2026-04-05');


SELECT * FROM tb_aluno;
INSERT INTO tb_aluno (id_aluno, nome, data_nascimento, id_estado_civil, id_treino) VALUES
('67890123456', 'Paulo Mendes', '1999-03-12', 1, 4),
('78901234567', 'Juliana Rocha', '2001-06-25', 2, 4),
('89012345678', 'Rafael Dias', '1997-11-08', 1, 2);


SELECT * FROM tb_mensalidade;

INSERT INTO tb_mensalidade (id_aluno, id_plano, data_pagamento) VALUES
('67890123456', 1, '2026-04-10'),
('78901234567', 2, '2026-04-11'),
('89012345678', 1, '2026-04-12');


SELECT id_aluno, nome, id_estado_civil FROM tb_aluno
WHERE id_aluno = '23456789012';

UPDATE tb_aluno
SET id_estado_civil = 1
WHERE id_aluno = '23456789012';

