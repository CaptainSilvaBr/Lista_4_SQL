use db_e-comerce

insert into Usuarios
values
(1, 'Matheus Brazolin', 'Matheus@email.com', '134652'),
(2,  'Adriano Brazolin', 'Adriano@email.com', '134652'),
(3, 'Claudia Brazolin', 'Claudia@email.com', '134652')

INSERT INTO Informação
VALUES
('Fone de Ouvido', 'Universal', 14.99, 3, 1),
('Celular', 'Apple', 4.999, 3, 1),
('Capinha', 'Couro', 299, 2, 1)

INSERT INTO Compras
VALUES
(1, 3),
(2, 1),
(2, 2),
(2, 2)

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