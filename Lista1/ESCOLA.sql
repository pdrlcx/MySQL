CREATE DATABASE db_escola;

USE db_escola;

CREATE TABLE tb_estudantes(
		id INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(150),
    turma INT,
    matricula INT,
    materia VARCHAR(45),
    nota FLOAT(2,1)
	);

INSERT INTO tb_estudantes (nome, turma, matricula, materia, nota)
VALUES
("Pedro", "3", 65223, "Matemática", 8.6),
("Lucas", 2, 65221, "Português", 6.5),
("Thiago", 1, 65224, "Inglês", 9.5),
("Andrew", 3, 65222, "Biologia", 8.0),
("Luana", 2, 65225, "Geografia", 6.5),
("Andréia", 1, 65227, "Português", 9.0),
("Vanilda", 3, 65228, "Inglês", 7.0),
("Julia", 1, 65226, "Biologia", 7.5);

SELECT * FROM tb_estudantes;

SELECT * FROM tb_estudantes WHERE nota > 7;
SELECT * FROM tb_estudantes WHERE nota < 7;

UPDATE tb_estudantes
SET turma = 1
WHERE id = 4