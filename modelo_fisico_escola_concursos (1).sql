
-- Criação do banco de dados
CREATE DATABASE IF NOT EXISTS escola_concursos;
USE escola_concursos;

-- Tabela aluno
CREATE TABLE aluno (
    id_aluno INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    senha VARCHAR(100) NOT NULL,
    data_nascimento DATE
);

-- Tabela curso
CREATE TABLE curso (
    id_curso INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    carga_horaria INT NOT NULL,
    publico_alvo VARCHAR(100),
    ativo TINYINT NOT NULL
);

-- Tabela professor
CREATE TABLE professor (
    id_professor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    especialidade VARCHAR(100),
    mini_curriculo TEXT
);

-- Tabela aula
CREATE TABLE aula (
    id_aula INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    descricao TEXT,
    data_postagem DATE NOT NULL,
    id_curso INT NOT NULL,
    FOREIGN KEY (id_curso) REFERENCES curso(id_curso)
);

-- Tabela matricula
CREATE TABLE matricula (
    id_matricula INT AUTO_INCREMENT PRIMARY KEY,
    data_matricula DATE NOT NULL,
    id_aluno INT NOT NULL,
    id_curso INT NOT NULL,
    FOREIGN KEY (id_aluno) REFERENCES aluno(id_aluno),
    FOREIGN KEY (id_curso) REFERENCES curso(id_curso)
);

-- Tabela presenca
CREATE TABLE presenca (
    id_presenca INT AUTO_INCREMENT PRIMARY KEY,
    presente TINYINT NOT NULL,
    data_registro DATE NOT NULL,
    id_aluno INT NOT NULL,
    id_aula INT NOT NULL,
    FOREIGN KEY (id_aluno) REFERENCES aluno(id_aluno),
    FOREIGN KEY (id_aula) REFERENCES aula(id_aula)
);

-- Tabela associativa curso-professor (N:N)
CREATE TABLE professor_has_curso (
    id_professor INT NOT NULL,
    id_curso INT NOT NULL,
    PRIMARY KEY (id_professor, id_curso),
    FOREIGN KEY (id_professor) REFERENCES professor(id_professor),
    FOREIGN KEY (id_curso) REFERENCES curso(id_curso)
);

-- Inserções na tabela aluno
INSERT INTO aluno (nome, email, senha, data_nascimento) VALUES
('Lucas Silva', 'lucas@email.com', 'senha123', '1995-05-20'),
('Maria Souza', 'maria@email.com', 'senha456', '1990-02-15'),
('Carlos Lima', 'carlos@email.com', 'senha789', '1988-11-30'),
('Ana Costa', 'ana@email.com', 'senhaabc', '2000-07-08'),
('Fernanda Dias', 'fernanda@email.com', 'senhafd', '1993-04-12'),
('João Alves', 'joao@email.com', 'senha321', '1996-08-19'),
('Bruna Rocha', 'bruna@email.com', 'senhabr', '1999-01-25'),
('Rafael Torres', 'rafael@email.com', 'senha998', '1992-12-05'),
('Juliana Lopes', 'juliana@email.com', 'senha999', '1997-09-03'),
('Thiago Mello', 'thiago@email.com', 'senha000', '1994-03-11');

-- Inserções na tabela curso
INSERT INTO curso (nome, carga_horaria, publico_alvo, ativo) VALUES
('Carreiras Jurídicas', 200, 'Graduados em Direito', 1),
('Carreiras Policiais', 180, 'Ensino Médio', 1),
('Carreiras Fiscais', 220, 'Graduados em Contabilidade', 1),
('Carreiras Administrativas', 160, 'Ensino Médio', 1),
('Tribunais', 210, 'Diversos níveis', 1),
('Controladoria', 200, 'Graduados em Economia', 1),
('INSS', 150, 'Ensino Médio', 1),
('Receita Federal', 250, 'Graduados', 1),
('PRF', 180, 'Ensino Médio', 1),
('Delegado Civil', 240, 'Graduados em Direito', 1);

-- Inserções na tabela professor
INSERT INTO professor (nome, especialidade, mini_curriculo) VALUES
('Carlos Braga', 'Direito Penal', 'Delegado de Polícia, especialista em penal.'),
('Fernanda Assis', 'Português', 'Mestre em Letras e especialista em concursos.'),
('Rafael Pinto', 'Raciocínio Lógico', 'Professor com 10 anos de experiência.'),
('Julia Sena', 'Informática', 'Graduada em Sistemas de Informação.'),
('Renato Borges', 'Legislação de Trânsito', 'Especialista em PRF e CTB.'),
('Tatiane Melo', 'Administração Pública', 'Mestre em Administração.'),
('Luciana Prado', 'Direito Constitucional', 'Advogada e professora universitária.'),
('Marco Túlio', 'Matemática Financeira', 'Especialista em concursos fiscais.'),
('Joana Diniz', 'Ética no Serviço Público', 'Bacharel em Administração Pública.'),
('Vinícius Rocha', 'Direito Administrativo', 'Autor de livros para concursos.');

-- Inserções na tabela aula
INSERT INTO aula (titulo, descricao, data_postagem, id_curso) VALUES
('Introdução ao Direito Penal', 'Aula introdutória sobre crimes e penas.', '2024-01-10', 1),
('Ortografia e Acentuação', 'Regras atualizadas de ortografia.', '2024-01-12', 2),
('Operações com porcentagem', 'Cálculos rápidos em concursos.', '2024-01-15', 3),
('Organização da Administração Pública', 'Aspectos da estrutura do Estado.', '2024-01-18', 4),
('Poder Judiciário', 'Funções e estrutura dos tribunais.', '2024-01-20', 5),
('Controle Interno e Externo', 'Fiscalização nos órgãos públicos.', '2024-01-22', 6),
('Seguridade Social', 'Aspectos constitucionais e infralegais.', '2024-01-25', 7),
('Sistema Tributário Nacional', 'Principais tributos brasileiros.', '2024-01-28', 8),
('Infrações de Trânsito', 'Aula sobre penalidades e infrações.', '2024-01-30', 9),
('Inquérito Policial', 'Fase inicial do processo penal.', '2024-02-01', 10);

-- Inserções na tabela matricula
INSERT INTO matricula (data_matricula, id_aluno, id_curso) VALUES
('2024-01-01', 1, 1),
('2024-01-02', 2, 2),
('2024-01-03', 3, 3),
('2024-01-04', 4, 4),
('2024-01-05', 5, 5),
('2024-01-06', 6, 6),
('2024-01-07', 7, 7),
('2024-01-08', 8, 8),
('2024-01-09', 9, 9),
('2024-01-10', 10, 10);

-- Inserções na tabela presenca
INSERT INTO presenca (presente, data_registro, id_aluno, id_aula) VALUES
(1, '2024-01-10', 1, 1),
(1, '2024-01-12', 2, 2),
(0, '2024-01-15', 3, 3),
(1, '2024-01-18', 4, 4),
(1, '2024-01-20', 5, 5),
(1, '2024-01-22', 6, 6),
(0, '2024-01-25', 7, 7),
(1, '2024-01-28', 8, 8),
(1, '2024-01-30', 9, 9),
(1, '2024-02-01', 10, 10);

-- Inserções na tabela professor_has_curso
INSERT INTO professor_has_curso (id_professor, id_curso) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 1),
(8, 3),
(9, 4),
(10, 2);
