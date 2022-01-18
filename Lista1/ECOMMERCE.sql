CREATE DATABASE db_ecommerce

USE db_ecommerce;

CREATE TABLE tb_produtos (
	id_produtos INT AUTO_INCREMENT PRIMARY KEY, 
	
    tipo_produto VARCHAR(45),
    preco FLOAT(10,2),
    tamanho VARCHAR(10),
    quantidade INT,
    cor VARCHAR(45)
);

INSERT INTO tb_produtos (tipo_produto, preco, tamanho, quantidade, cor)
VALUES
("Camiseta Nike", 149.00, "M", 36, "Preto"),
("Caixa JBL", 1998.87, "BoomBox", 7, "Vermelha"),
("Óculos", 345.90,"Único", 10, "Preto"),
("Relógio", 689.00, "Único", 5, "Prata"),
("Calça", 249.99, "P", 40, "Jeans Claro"),
("Camiseta Nike", 199.99, "M", 27, "Vermelha"),
("Celular", 2700.00, "Único", 7, "Jumbo"),
("Moletom", 529.00, "G", 9, "Cinza");

SELECT * FROM tb_produtos;

SELECT * FROM tb_produtos WHERE preco > 500;
SELECT * FROM tb_produtos WHERE preco < 500;

UPDATE tb_produtos
SET quantidade = 7
WHERE id_produtos = 3