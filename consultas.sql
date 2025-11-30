USE academia_db;

SELECT * FROM Plano
WHERE valor > 150.00;

SELECT 
    a.nome AS Aluno,
    p.nome_plano AS Plano,
    pg.status AS Status
FROM Pagamento pg
JOIN Aluno a ON pg.id_aluno = a.id_aluno
JOIN Plano p ON pg.id_plano = p.id_plano;

SELECT
    prof.nome AS Professor,
    ac.nome_aula AS Aula,
    ac.dia_semana,
    ac.horario
FROM Aula_Coletiva ac
JOIN Professor prof ON ac.id_professor = prof.id_professor
ORDER BY prof.nome;

SELECT 
    a.nome,
    COUNT(pr.data_presenca) AS Total_Presencas
FROM Presenca pr
JOIN Aluno a ON pr.id_aluno = a.id_aluno
GROUP BY a.nome
ORDER BY Total_Presencas DESC;

SELECT
    a.nome AS Aluno,
    t.descricao AS Treino,
    t.data_criacao
FROM Treino_Individual t
JOIN Aluno a ON t.id_aluno = a.id_aluno;
