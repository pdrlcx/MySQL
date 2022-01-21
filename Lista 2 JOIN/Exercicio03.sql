CREATE DATABASE db_farmacia_do_bem;
USE db_farmacia_do_bem;

CREATE TABLE tb_categoria (
	id_categoria INT AUTO_INCREMENT PRIMARY KEY,
categoria VARCHAR(45),
descricao VARCHAR(150),
controlado ENUM("sim", "nao")
);


CREATE TABLE tb_produto (
	id_produto INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(45),
marca VARCHAR(45),
preco FLOAT(10,2),
quantidade INT,
animais ENUM("Sim", "Não"),
fk_produto INT,
FOREIGN KEY (fk_produto) REFERENCES tb_categoria(id_categoria)
);

INSERT INTO tb_categoria(categoria, descricao, controlado)
VALUES
("Remédios", "Produtos destinados a prevencao, cura ou alivio dos sintomas de alguma doença", "Sim"),
("Remédios", "Produtos destinados a prevencao, cura ou alivio dos sintomas de alguma doença", "Não"),
("Cosméticos","Produtos destinados para estética", "Não"),
("Promoções", "Produtos abaixo do valor", "Não"),
("Higiene","Produtos destinados a higiene pessoal", "Não"),
("Infantil", "Produtos destinados as crianças", "Não");

INSERT INTO tb_produto (nome, marca, preco, quantidade, animais, fk_produto)
VALUES 
("Neolefrin", "Neo Química", 13.99, 34, "Não", 2),
("Calmitane", "Bionatus", 57.90, 7, "Não", 1),
("Nimesulida", "Sig", "15.00", 27, "Sim", 2),
("Tinta de cabelo", "Loreal", 24.80, 16, "Sim", 3),
("Shampoo de bebê", "Johnson's", 20.39, 23, "Não", 6),
("Escova de dente", "Colgate", 17.00, 18, "Não", 5),
("Dipirona com cafeína", "Doril", 8.23, 4, "Não", 2);


SELECT * FROM tb_produto 
WHERE preco > 50.00;

SELECT * FROM tb_produto 
WHERE preco BETWEEN 3.00 AND 60.00;

SELECT * FROM tb_produto 
WHERE nome LIKE "%B%";

SELECT tb_categoria.categoria AS Categoria,
tb_categoria.descricao AS Descrição,
tb_categoria.controlado AS Controlado,
tb_produto.nome AS Nome,
tb_produto.marca AS Marca,
tb_produto.preco AS 'Preço(R$)',
tb_produto.quantidade AS Quantidade,
tb_produto.animais AS Animais
FROM tb_categoria INNER JOIN tb_produto ON tb_categoria.id_categoria = tb_produto.fk_produto
WHERE categoria = "Remédios";

-- SELECT * FROM tb_categoria INNER JOIN tb_produto ON tb_categoria.id_categoria = tb_produto.fk_produto WHERE categoria = "Remédios";