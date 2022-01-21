CREATE DATABASE db_pizzaria_legal;
USE db_pizzaria_legal;

CREATE TABLE tb_pizza (
	id_pizza INT AUTO_INCREMENT PRIMARY KEY,
sabor VARCHAR(100),
molho VARCHAR(100),
borda VARCHAR(100),
acrescimo VARCHAR(100),
preco FLOAT(10,2),
entrega FLOAT(10,2),
fk_categoria INT,
FOREIGN KEY (fk_categoria) REFERENCES tb_categoria(id_categoria)
);

INSERT INTO tb_pizza (sabor, molho, borda, acrescimo, preco, entrega, fk_categoria)
VALUES
("Portuguesa", "Não", "Catupiry", "Não", 35.90, 2.00, 5),
("Frango Catupiry", "Não", "Não", "Não", 37.90, 2.00, 4),
("Brócolis com Bacon", "Maionese", "Cheddar", "Bacon", 41.00, 2.00, 3),
("Peperonni", "Catchup", "Não", "Catupiry", 48.00, 2.00, 2),
("Atum", "Não", "Catupiry", "Não", 46.00, 2.00, 1);

CREATE TABLE tb_categoria (
	id_categoria INT AUTO_INCREMENT PRIMARY KEY,
condicao VARCHAR(45),
tamanho VARCHAR(100),
fk_pizza INT,
FOREIGN KEY (fk_pizza) REFERENCES tb_pizza(id_pizza)
);

INSERT INTO tb_categoria (condicao, tamanho, fk_pizza)
VALUES
("Assada", "Pequena", 1),
("Pré-Assada", "Média", 2),
("Assada", "Grande", 3),
("Assada","Grande", 4),
("Pré-Assada", "Média", 5),
("Pré Assada", "Pequena", 6),
("Assada", "Média", 7),
("Assada", "Média", 8),
("Pré-Assada", "Grande", 9);

SELECT * FROM tb_categoria;
SELECT * FROM tb_pizza;

SELECT * FROM tb_pizza WHERE preco > 45.00;
SELECT * FROM tb_pizza WHERE preco >= 29.00 AND preco <= 60.00;
SELECT * FROM tb_pizza WHERE sabor LIKE "%C%";

SELECT * FROM tb_categoria WHERE condicao = "Assada";

SELECT * FROM tb_pizza INNER JOIN tb_categoria ON tb_pizza.fk_categoria = tb_categoria.id_categoria;