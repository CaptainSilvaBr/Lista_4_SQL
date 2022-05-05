use marketplace

insert into usuarios
values
(1, 'Matheus Brazolin', 'Matheus@email.com', '134652', 'Rua Eulo maroni , 166 - SP'),
(2,  'Adriano Brazolin', 'Adriano@email.com', '134652', 'Rua Roma, 265 - SP'),
(3, 'Claudia Brazolin', 'Claudia@email.com', '134652', 'Faria Lima, 357 - SP')

INSERT INTO Categorias
VALUES
(1, 'Criança'),
(2, 'Adulto')

INSERT INTO Produtos
VALUES
('Sabonete', 'Sabonete para banho (adulto)', 2.75, 3, 1),
('Sabonete', 'Sabonete para o banho do seu baby (Criança)', 5.75, 3, 1),
('Shampoo Seda', 'Shampoo Anti-caspa (Adulto)', 9.99, 2, 1)

INSERT INTO Compras
VALUES
(1, 3),
(2, 1),
(2, 2),
(2, 2)

SELECT * FROM Usuarios
WHERE Endereco LIKE '%Rua Eulo maroni%'

SELECT * FROM Produtos
WHERE Preco BETWEEN 5 AND 15

UPDATE Usuarios
SET Nome = 'Matheus Brazolin'
WHERE Id = 1

SELECT Usuarios.Nome, SUM(Produtos.Preco) AS Total
FROM Usuarios
INNER JOIN Compras ON Usuarios.Id = Compras.FK_Comprador
INNER JOIN Produtos ON Produtos.Id = Compras.FK_Produto
GROUP BY Usuarios.Nome;

DELETE Compras
DELETE Produtos
DELETE Usuarios
DELETE Categorias

select * from Usuarios