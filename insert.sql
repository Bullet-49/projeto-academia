USE academia_db;

INSERT INTO Aluno (id_aluno, nome, idade, contato, objetivo) VALUES
(1, 'João Silva', 25, '3199000-1111', 'Ganhar massa muscular'),
(2, 'Maria Santos', 32, '3199555-2222', 'Perder peso'),
(3, 'Pedro Rocha', 19, '3199888-3333', 'Melhorar condicionamento físico');

INSERT INTO Professor (id_professor, nome, especialidade, contato) VALUES
(1, 'Carlos Almeida', 'Musculação', '3199777-1234'),
(2, 'Ana Oliveira', 'Alongamento', '3199666-5678');

INSERT INTO Plano (id_plano, nome_plano, valor, duracao_meses) VALUES
(1, 'Mensal', 99.90, 1),
(2, 'Trimestral', 249.90, 3),
(3, 'Anual', 799.90, 12);

INSERT INTO Pagamento (id_pagamento, id_aluno, id_plano, data_pagamento, valor_pago, status) VALUES
(1, 1, 1, '2025-01-10', 99.90, 'Pago'),
(2, 2, 2, '2025-01-05', 249.90, 'Pago'),
(3, 3, 1, '2025-01-12', 99.90, 'Pendente');

INSERT INTO Treino_Individual (id_treino, id_aluno, id_professor, data_criacao, descricao) VALUES
(1, 1, 1, '2025-01-01', 'Treino de hipertrofia para iniciantes'),
(2, 2, 2, '2025-01-03', 'Treino focado em emagrecimento com circuito aeróbico');

INSERT INTO Aula_Coletiva (id_aula, id_professor, nome_aula, horario, dia_semana) VALUES
(1, 1, 'Funcional', '07:00', 'Segunda'),
(2, 2, 'Alongamento', '18:00', 'Quarta');

INSERT INTO Presenca (id_aluno, id_aula, data_presenca, hora_registro) VALUES
(1, 1, '2025-01-15', '07:05'),
(2, 2, '2025-01-15', '18:02');
