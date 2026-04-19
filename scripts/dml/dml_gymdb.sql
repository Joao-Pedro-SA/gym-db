INSERT INTO tb_estado_civil (descricao) VALUES
('Solteiro'),
('Casado'),
('Divorciado');

INSERT INTO tb_treino (modalidade) VALUES
('Musculação'),
('Crossfit'),
('Zumba');

INSERT INTO professor (id_professor, nome, id_treino) VALUES
(1, 'Carlos Silva', 1),
(2, 'Fernanda Souza', 2),
(3, 'Ricardo Lima', 3);


INSERT INTO tb_aluno (id_aluno, nome, data_nascimento, id_estado_civil, id_treino) VALUES
('12345678901', 'João Pedro', '2002-05-10', 1, 1),
('23456789012', 'Maria Oliveira', '1998-08-21', 2, 2),
('34567890123', 'Lucas Santos', '2000-01-15', 1, 1),
('45678901234', 'Ana Costa', '1995-12-30', 3, 3),
('56789012345', 'Bruno Almeida', '2003-07-18', 1, 2);


INSERT INTO aluno_professor (id_aluno, id_professor) VALUES
('12345678901', 1),
('12345678901', 2),
('23456789012', 2),
('34567890123', 1),
('45678901234', 3),
('56789012345', 2),
('56789012345', 3);