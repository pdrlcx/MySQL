CREATE DATABASE db_empresa;
USE db_empresa;

CREATE TABLE tb_funcionarios (
id_funcionarios INT NOT NULL AUTO_INCREMENT PRIMARY KEY,

nome_funcionarios VARCHAR(45),
idade_funcionarios INT,
cargo_funcionarios VARCHAR(45),
salario_funcionarios FLOAT(10,2)
);

INSERT INTO tb_funcionarios (nome_funcionarios, idade_funcionarios, cargo_funcionarios, salario_funcionarios)
VALUES
("Pedro Lucas", 27, "Estagiário", 2000.00),
("Andrew Licker", 23, "Dev Junior", 7000.00),
("Danilo Hayne", 24 , "Dev pleno", 70000.00),
("Luana Silvério",25, "SUPERVISORA", 8500.00),
("Thiago Farias", 18, "Jovem Aprendiz", 1300.00);

SELECT * FROM tb_funcionarios WHERE salario_funcionarios < 2000.00;
SELECT * FROM tb_funcionarios WHERE salario_funcionarios > 2000.00;

UPDATE tb_funcionarios 
SET cargo_funcionarios = "Supervisora"
WHERE id_funcionarios = 4;