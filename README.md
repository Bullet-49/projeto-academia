# 🏋️‍♂️ Projeto SQL – Academia FitLife

### Experiência Prática IV – Implementação e Manipulação de Dados

---

## 📌 Sobre o Projeto

Este repositório contém a implementação completa do banco de dados referente ao minimundo de uma **academia**, incluindo:

* Criação das tabelas (Modelo Lógico)
* População inicial com dados reais
* Consultas SQL utilizando `JOIN`, `WHERE`, `ORDER BY`, `LIMIT`
* Comandos de atualização (`UPDATE`)
* Remoção de dados (`DELETE`)

O objetivo é demonstrar a aplicação prática da linguagem SQL utilizando DDL e DML, conforme orientações da Experiência Prática IV.

---

## 🗂 Estrutura do Repositório

```
📁 / (raiz)
│── create_tables.sql       → Script para criação das tabelas
│── insert_data.sql         → Script para povoamento das tabelas
│── select_queries.sql      → Consultas SQL completas
│── update_delete.sql       → Comandos de UPDATE e DELETE
│── README.md               → Este arquivo
```

---

## 🛠 Requisitos

* MySQL Server ou MariaDB
* MySQL Workbench (recomendado)
* Ou, se usar PostgreSQL, adaptar tipos como `AUTO_INCREMENT` → `SERIAL`

---

## 🚀 Como Executar

### 1️⃣ Criar o banco de dados

```sql
CREATE DATABASE academia_fitlife;
USE academia_fitlife;
```

### 2️⃣ Executar a criação das tabelas

Importe e rode o arquivo:

```
create_tables.sql
```

### 3️⃣ Inserir dados iniciais

Execute:

```
insert_data.sql
```

### 4️⃣ Testar consultas

Execute:

```
select_queries.sql
```

### 5️⃣ Testar operações de UPDATE e DELETE

Execute:

```
update_delete.sql
```

---

## 📊 Modelo Lógico (DER)

As tabelas representam o fluxo completo de uma academia:

* **Aluno**
* **Professor**
* **Plano**
* **Pagamento**
* **Treino_Individual**
* **Aula_Coletiva**
* **Presenca**

Com todos seus relacionamentos 1:N e N:N resolvidos através das tabelas representadas.

---

## 📚 Scripts Incluídos

### 🟦 create_tables.sql

Contém todas as estruturas de tabelas, com chaves primárias e estrangeiras.

### 🟩 insert_data.sql

Povoamento inicial com dados coerentes para testes.

### 🟧 select_queries.sql

Consultas SQL contendo:

* JOIN
* WHERE
* ORDER BY
* LIMIT
* Relações aluno → plano → pagamento
* Relações professor → aulas

### 🟥 update_delete.sql

Mínimo de 3 UPDATEs + 3 DELETEs conforme exigido.

---

## 🧪 Testes Recomendados

1. Buscar alunos com seus planos
2. Filtrar presenças em datas específicas
3. Ver professores e suas aulas
4. Atualizar status de pagamento
5. Excluir presenças ou treinos

---

## 🧑‍💻 Autor

Cauã Ferreira
Projeto acadêmico – Banco de Dados

---

## ✔ Status do Projeto

**Concluído e funcional**
Pronto para entrega e avaliação.
