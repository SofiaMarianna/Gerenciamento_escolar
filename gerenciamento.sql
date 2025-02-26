CREATE DATABASE gerenciamento_escolar;

CREATE TABLE Professores (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    departamento VARCHAR(50)
);

CREATE TABLE Disciplinas (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    carga_horaria INT,
    professor_id INT,
    FOREIGN KEY (professor_id) REFERENCES Professores(id)
);

CREATE TABLE Alunos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100),
    data_nascimento DATE
);

CREATE TABLE Matriculas (
    id SERIAL PRIMARY KEY,
    aluno_id INT,
    disciplina_id INT,
    data_matricula DATE,
    FOREIGN KEY (aluno_id) REFERENCES Alunos(id),
    FOREIGN KEY (disciplina_id) REFERENCES Disciplinas(id)
);

-- Inserção de Professores
INSERT INTO Professores (nome, departamento) VALUES 
('Maria Silva', 'Matemática'),
('João Souza', 'História');

-- Inserção de Disciplinas
INSERT INTO Disciplinas (nome, carga_horaria, professor_id) VALUES 
('Matemática Básica', 60, 1),
('História do Brasil', 45, 2);

-- Inserção de Alunos
INSERT INTO Alunos (nome, data_nascimento) VALUES 
('Ana Pereira', '2005-03-10'),
('Carlos Mendes', '2006-07-22');

-- Inserção de Matrículas
INSERT INTO Matriculas (aluno_id, disciplina_id, data_matricula) VALUES 
(1, 1, '2025-02-26'),
(2, 2, '2025-02-26');
