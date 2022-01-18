CREATE DATABASE db_game_online;
USE db_game_online;

CREATE TABLE tb_classe (
	id_classe INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	classe VARCHAR(45) NOT NULL,
	arma VARCHAR(45) NOT NULL,
	origem VARCHAR(45) NOT NULL
);


CREATE TABLE tb_personagens(
	id_personagens INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(40) NOT NULL,
    idade INT NOT NULL,
    ataque FLOAT(10,2) NOT NULL,
    defesa FLOAT(10,2) NOT NULL,
    habilidade FLOAT(10,2) NOT NULL,
    fk_classe INT,
    FOREIGN KEY (fk_classe) REFERENCES tb_classe (id_classe)
);

INSERT INTO tb_classe (classe, arma, origem) 
VALUES
("Dobrador de Ar", "Mãos", "Tribo do Ar"),
("Dobrador de Fogo", "Mãos", "Tribo do Fogo"),
("Guerreiro", "Boomerang", "Tribo da Água"),
("Guerreira", "Léque", "Tribo do Ar"),
("Arqueiro", "Arco e Flexa", "Viajante");

INSERT INTO tb_personagens (nome, idade, ataque, defesa, habilidade, fk_classe)
VALUES
("Aang", 16, 4000, 2000, 1500, 1),
("Zuko", 20, 2900, 3000, 2700, 2),
("Sokka", 17, 1700, 2300, 500, 3),
("Suki", 20, 3700, 3800, 2300, 4),
("Tio Iroh", 27, 3700, 4000, 3600, 2),
("Ty Lee", 18, 3000, 1000, 2500, 4),
("Chey", 17, 1500, 2000, 2700, 5),
("Rokko", 30, 3700, 3900, 2700, 1);

SELECT * FROM tb_personagens WHERE ataque < 2000;
SELECT * FROM tb_personagens WHERE defesa BETWEEN 1000 AND 2000;
SELECT * FROM tb_personagens WHERE nome LIKE "%C%";


SELECT * FROM tb_personagens INNER JOIN tb_classe ON tb_classe.id_classe = tb_personagens.fk_classe WHERE tb_classe.classe = "Dobrador de Ar";