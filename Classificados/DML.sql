use db_classificados

insert into Usuarios
values
(100, 'Matheus Brazolin', '11989656078', 'Matheus@email.com'),
(200, 'Claudia Brazolin', '11989000155', 'Claudia@email.com'),
(300, 'Adriano Brazolin', '11989432999', 'Adriano@email.com')


insert into Anuncios
values
(1, 'Casa a venda', 'Casa de 70m', 100.000, 300),
(2, 'Apartamento', 'Apartamento de 100', 200.000, 200),
(3, 'Aluguel de casa', 'Casa de 50m', 600, 100)

select * from Usuarios

select * from Anuncios 
where titulo like '%Aluguel%'