# 🏫 Projeto de Banco de Dados – Escola de Concursos

Este projeto foi desenvolvido como parte das atividades do curso de **Análise e Desenvolvimento de Sistemas da Polícia Militar**, sob orientação do professor **Nivaldo Araújo** – SENAI Maracanã.

🎯 Objetivos do Projeto
- Desenvolver um banco de dados relacional completo no MySQL
- Representar o fluxo de dados de uma escola de cursos preparatórios para concursos
- Aplicar conceitos de modelagem conceitual, lógica e física
- Inserir dados coerentes para simulação
- Executar consultas SQL com diferentes estruturas e finalidades
- Demonstrar domínio de `JOINs`, subconsultas, funções, filtros e agrupamentos

🧱 Estrutura do Banco de Dados

📌 Entidades

- `Aluno(id_aluno, nome, email, senha, data_nascimento)`
- `Curso(id_curso, nome, carga_horaria, publico_alvo, ativo)`
- `Professor(id_professor, nome, especialidade, mini_curriculo)`
- `Aula(id_aula, titulo, descricao, data_postagem, id_curso)`
- `Matricula(id_matricula, data_matricula, id_aluno, id_curso)`
- `Presenca(id_presenca, presente, data_registro, id_aluno, id_aula)`
- `Professor_has_Curso(id_professor, id_curso)` ← tabela associativa N:N

🔗 Relacionamentos

- Um aluno pode se matricular em vários cursos (`Aluno ↔ Matricula ↔ Curso`)
- Um curso possui várias aulas
- Um aluno pode ter presença registrada em várias aulas
- Um professor pode ministrar vários cursos (`Professor ↔ Professor_has_Curso ↔ Curso`)

🧪 Parte II – Consultas SQL

Consultas elaboradas e testadas com foco em:

- `SELECT`, `WHERE`, `ORDER BY`, `GROUP BY`
- Operadores aritméticos, lógicos, de comparação
- Funções de agregação: `SUM()`, `AVG()`, `COUNT()`
- Filtros com `IN`, `BETWEEN`, `LIKE`, `IS NULL`
- `JOIN` (INNER, LEFT, RIGHT)
- Subconsultas com `IN` e filtros aninhados
- Funções de data (`NOW()`, `YEAR()`)

👨‍💻 Autor
Lucas Hot Santos
Curso de ADS – PMERJ  
GitHub: [@lucashott](https://github.com/lucashott)

