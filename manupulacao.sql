USE academia_db;


UPDATE Aluno
SET contato = '3199000-1212'
WHERE id_aluno = 1;

UPDATE Plano
SET valor = valor + 10.00
WHERE id_plano = 1;

UPDATE Pagamento
SET status = 'Pago'
WHERE id_pagamento = 3;


INSERT INTO Aluno (id_aluno, nome, idade)
VALUES (99, 'Aluno Teste', 20);

DELETE FROM Aluno
WHERE id_aluno = 99;

INSERT INTO Aula_Coletiva (id_aula, id_professor, nome_aula, dia_semana)
VALUES (99, 1, 'Aula Teste', 'Sexta');

DELETE FROM Aula_Coletiva
WHERE id_aula = 99;

DELETE FROM Treino_Individual
WHERE id_treino = 2